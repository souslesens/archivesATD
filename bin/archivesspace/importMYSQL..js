var request = require('request');
var async = require('async');
var mySQLproxy = require('../mySQLproxy..js');


indexDescriptions: {
    var mySqlOptions= {
        "phototheque": {

            connOptions: {host: "localhost", user: "root", password: "vi0lon", database: 'phototheque'},
            sqlQuery: "select * from phototheque",


        },
        "audiotheque": {

            connOptions: {host: "localhost", user: "root", password: "vi0lon", database: 'audiotheque'},
            sqlQuery: "select * from audiotheque"
        },

    }


}


var limit=100;
var connection=mySqlOptions["phototheque"].connOptions;
var query=mySqlOptions["phototheque"].sqlQuery+" limit "+limit;

if(true) {

    mySQLproxy.find(connection, query, function (err, result) {
        if (err) {
            callback(err);
            return;
        }
    })
}


var photoObj={
    "id": 1,
    "indexCIJW": "PH1807003001",
    "dossier": "1807",
    "sousdossier": "003",
    "document": "001",
    "versement": 0,
    "lien": "n",
    "photographe": "divers",
    "agence": "ATD Quart-Monde",
    "droit_auteur": "---",
    "droit_image": "---",
    "contenu": "REIMS 1977  -diapos-",
    "temoin_ref": "",
    "date": "1976-12-31T23:00:00.000Z",
    "lieu": "REIMS (France)",
    "description": "à identifier",
    "local": "---",
    "support": "****",
    "dateMaj": "1999-10-25T22:00:00.000Z",
    "redacteur": "PS"
}