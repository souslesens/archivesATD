var fs = require('fs');

var file = "D:\\GitHub\\archivesATD\\public\\data\\borderauDG.json"
var str = "" + fs.readFileSync(file);

var json = JSON.parse(str);


function recurseLog(json,parent) {
    if(parent)
        parent=parent+".";
    else
        parent="";
    for (var key in json) {

        console.log(parent+key);
        if (typeof json[key] === "object") {
            recurseLog(json[key],parent+key)
        }
    }

}

recurseLog(json);
