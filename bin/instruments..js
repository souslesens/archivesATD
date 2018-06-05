
var fs=require("fs");
var unzipper=require('unzipper');
var extract = require('extract-zip');
var textract = require('textract');
var fstream=require('fstream');
var stream=require('stream');
var async=require('async');


function extractXml() {
    var path = "D:\\ATD_Baillet\\versements\\";
    var targetPath = "D:\\ATD_Baillet\\versementsXml\\";
    var path = "D:\\ATD_Baillet\\instrumentsParFormat\\tableauxformates\\";
    var i = 0
    fs.readdirSync(path).forEach(function (file) {
        console.log(file);

        var filePath = path + file;
        if (file.indexOf(".od") > -1) {


            var newFileName = file.substring(0, file.indexOf(".")) + ".xml"
            var newFilePath = targetPath + newFileName;

            try {
                fs.createReadStream(filePath)
                    .pipe(unzipper.Parse())
                    .pipe(stream.Transform({
                            objectMode: true,
                            transform: function (entry, e, cb) {
                                var fileName = entry.path;
                                var type = entry.type; // 'Directory' or 'File'
                                var size = entry.size;
                                if (fileName === "content.xml") {
                                    entry.pipe(fs.createWriteStream(newFilePath))
                                        .on('finish', cb);
                                } else {
                                    entry.autodrain();
                                    cb();
                                }
                            }
                        })
                    );


            }

            catch (e) {
                console.log("ERROR " + file)
            }
        }


    })
}

function extractText(){
    var path="D:\\ATD_Baillet\\instrumentsParFormat\\tableauxformates\\";
    var path="H:\\ATD\\Instruments_de_RECHERCHE\\pbs\\";
    var targetPath = "D:\\ATD_Baillet\\versementsTxt\\";
//var targetPath=path;
var files= fs.readdirSync(path);

async.eachSeries(files,function(file,callback){




        var filePath = path + file;

    var newFileName = file.substring(0, file.indexOf(".")) + ".txt"
    var newFilePath = targetPath + newFileName;

    if(fs.existsSync(newFilePath))
       return  callback();
    console.log(newFilePath);
        textract.fromFileWithPath(filePath,{preserveLineBreaks:true}, function (error, text) {
            if(error) {
                console.log(error);
                return callback();
            }
            var xx=text;

fs.writeFileSync(newFilePath,text);
            callback();
        })
    },function(err){
    console.log("!!!!!!!!!!!done");
    })


}




extractText();
/*

            /*    unzipper.Open.file(filePath)
                    .then(function(d) {
                        console.log('directory',d);
                        var files=d.files;
                        for(var i=0;i<files.length;i++){
                            if(files[i].path=="content.xml"){
                                var newFileName = file.substring(0, file.indexOf(".")) + ".txt"
                                var newFilePath=targetPath+newFileName;


                                var rstream =  files[i].stream()
                                var wstream = fs.createWriteStream(newFilePath);
                                rstream.pipe(wstream);



                                var xx=files[i];
                            }
                        }


                    });*/

