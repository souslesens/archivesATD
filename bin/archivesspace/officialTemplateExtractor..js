/**
 * Created by claud on 15/12/2017.
 */




var fs = require('fs');
var xml2js = require('xml2js');
var parser = new xml2js.Parser();

var path = require('path');
var dom = require('xmldom').DOMParser
var striptags = require('striptags');

var tagNames = [];
var pathStr = path.resolve("D:\\ATD_Baillet\\1011.xml")
var officialTemplateExtractor = {

    process: function () {
        var rows = officialTemplateExtractor.extractByRegex();
        rows = officialTemplateExtractor.clean(rows);
        rows = officialTemplateExtractor.fill(rows);
        var csv = officialTemplateExtractor.toCSV(rows);
    },


    extractByDOM: function () {


        function recursiveExtractCellText(para, value) {
            for (var l = 0; l < para.childNodes.length; l++) {
                var child = para.childNodes[l];
                if (value.length > 0)
                    value += " ";

                if (child.data) {
                    value += child.data;
                    if (value == "Documents liés à la ")
                        var xx = "ee";
                    value = value.replace(/;/g, ",").replace(/[\r\n]/g, ".")
                }
                else if (child.childNodes && child.childNodes.length > 0) {
                    recursiveExtractCellText(child, value);
                }

            }
            return value;
        }

        //   var pathStr= path.resolve("D:\\rdf\\quran_data_full.owl")
        // var pathStr = path.resolve("./data0772-FondsJosephWresinski-SerieC-Inv.xml")

        var str = "" + fs.readFileSync(pathStr);

        var doc = new dom().parseFromString(str);


        var allElts = doc.documentElement.getElementsByTagName("*");

        for (var j = 0; j < allElts.length; j++) {
            if (true || allElts[j].attributes && allElts[j].attributes[0] && allElts[j].attributes[0].name == "rdf:about") {
                var tag = allElts[j].tagName;
                if (tagNames.indexOf(tag) < 0) {
                    tagNames.push(tag);
                    console.log("'" + tag + "',");
                }
            }
        }

        var rows = []


        var xmlRows = doc.documentElement.getElementsByTagName("table:table-row");
        for (var j = 0; j < xmlRows.length; j++) {
            var aRow = []
            rows.push(aRow)
            var entries = xmlRows[j].getElementsByTagName("table:table-cell");

            for (var k = 0; k < entries.length; k++) {
                var entry = entries[k];
                var htmlCell = "<table:table-cell table:style-name=\"Tableau5.A1\" office:value-type=\"string\"><text:p text:style-name=\"P6\">N° <text:span text:style-name=\"T26\">de</text:span>\n" +
                    " <text:span text:style-name=\"T18\">dossier sup.</text:span></text:p><text:p text:style-name=\"P10\"><text:span text:style-name=\"T18\">N</text:span><text:span text:style-name=\"T15\">iveau 1</text:span></text:p></table:table-cell>"
                var text = striptags(htmlCell);

                //str.substring(entry.)


                var value = ""
                var paras = entry.getElementsByTagName("text:p");
                //  value= recursiveExtractCellText(paras,value);
                for (var i = 0; i < paras.length; i++) {
                    var para = paras[i];
                    var value2 = recursiveExtractCellText(para, "");
                    value += value2;

                }
                if (value.length > 100)
                    var xx = "b";
                aRow.push(value);

            }

        }
        return rows;
    },

    clean: function (rows) {
        var goodRows = [];
        for (var i = 0; i < rows.length; i++) {
            if (rows[i][0].indexOf("N°") != 0)
                goodRows.push(rows[i])
        }
        return goodRows;
    },

    fill: function (rows) {
        for (var i = 1; i < rows.length; i++) {
            for (var k = 0; k < 2; k++) {
                var cell = rows[i][k];
                var rightCell = rows[i][k + 1];
                var topCell = rows[i - 1][k];

                if (cell.length == 0 && topCell.length > 0) {
                    if (k == 0)
                        rows[i][k] = topCell;
                    else if (rows[i][k - 1] == rows[i - 1][k - 1])//pas de changement de colonne superieure
                        rows[i][k] = topCell;
                    /* if (k == 0)
                         rows[i][k] = topCell;
                     if (k == 1 && rows[i][0].length == 0)
                         rows[i][k] = topCell;
                     if (k == 2 && rows[i][1].length == 0)
                         rows[i][k] = topCell;*/
                }

            }
            var objType = "";
            if (rows[i][2].length != 0) {
                objType = "niveau3";
            } else if (rows[i][1].length != 0) {
                objType = "niveau2";
            }
            else {
                objType = "niveau1";
            }

            rows[i][rows[i].length] = objType;
        }


        return rows;
    }

    ,
    toCSV: function (rows) {
        // console.log(JSON.stringify(rows,null,2));
        var tableauConcat = "";
        var tableaux = {};
        var str = "cols,niveau1,niveau2,niveau3,description,auteur,REMARQUES,dates,anneeDebut,anneeFin,confidentiel,public,remarquable,niveau\n";
        var sep = ",";

        var nCols = -1;
        for (var i = 0; i < rows.length; i++) {

            str += rows[i].length + sep;
            var line = rows[i].length + sep;
            for (var k = 0; k < rows[i].length; k++) {
                var value = rows[i][k];
                value = value.replace(/,/g, ";")
                str += value + sep;
                line += value + sep;


            }
            str += "\n"

            if (line.indexOf("N°") == 0) {//début d'un tableau utile
                //  if(line.indexOf(";Cote Boite;Cote Série;") >-1) {//début d'un tableau utile
                nCols = line.substring(0, line.indexOf(sep))
                if (!tableaux[nCols])
                    tableaux[nCols] = "";
                tableaux[nCols] += line + "\n";


            }
            else {
                if (line.indexOf(nCols) == 0) {// ligne du tableau si meme nombre de colonnes que l'entete'
                    tableaux[nCols] += line + "\n";
                }
                else {
                    nCols = -1;
                }

            }

        }
var file="D:\\ATD_Baillet\\archivesSpaceTest\\1011.csv"
       fs.writeFileSync(file,str);

        for (var key in tableaux)
            console.log(tableaux[key]);
    }
    ,

    extractByRegex: function () {
        var str = "" + fs.readFileSync(pathStr)
        str = str.replace(/[\n\r]/g, "");
        var regexRow = /<table:table-row[^>]*>(.*?)<\/table:table-row/gm
        var regexCell = /<table:table-cell[^>]*>(.*?)<\/table:table-cell/gm

        var outLines = [];
        var arrayRow;
        while ((arrayRow = regexRow.exec(str)) != null) {
            var outRow = []
            for (var i = 1; i < arrayRow.length; i++) {
                var strRow = arrayRow[i];
                if (strRow.indexOf("17OCT") > -1)
                    var xx = 66
                var arrayCell;
                while ((arrayCell = regexCell.exec(strRow)) != null) {
                    for (var j = 1; j < arrayCell.length; j++) {

                        var text = striptags(arrayCell[j]);
                        outRow.push(text);

                    }


                }


            }
            outLines.push(outRow);
        }
        return outLines;

    }


}


module.exports = officialTemplateExtractor;


if (true) {

    officialTemplateExtractor.process();
}
if (false) {
    officialTemplateExtractor.extractRegex();

}



