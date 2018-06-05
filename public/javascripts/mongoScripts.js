/**
 * Created by claud on 11/12/2017.
 */

db.archivesImport.find({source: "0141-EUR-FRA-IDF-UP-sec-1973_2012-DS"}).forEach(function (doc) {
    var doc2 = {}
    var array = doc.date.match(/(\d{4})/);
    if (array.length > 0)
        doc2.annee = array[1];
    doc2.boite = doc.boite;
    doc2.chemise = null;
    doc2.souschemise = null;
    doc2.source = doc.source
    doc2.titre = doc.titre;
    if (doc.item)
        doc2.titre += " : " + doc.item;
    db.archives.save(doc2);


})


db.archivesImport.find({source: "1096-EquipeEurope-1971_2015-DS"}).forEach(function (doc) {
    var doc2 = {}

    doc2.anneeDebut = doc.anneeDebut;
    doc2.anneeFin = doc.anneeFin;
    if (doc.anneeFin - doc.anneeDebut == 0)
        doc2.annee = doc.anneeDebut;
    doc2.boite = doc.boite;
    doc2.chemise = doc.chemise;
    doc2.souschemise = doc.chemise;
    doc2.source = doc.source
    doc2.titre = doc.contenu;
    doc2.auteur = doc.auteur;
    doc2.commentaire = doc.remarques;
    doc2.confidentialite = null;
    db.archives.save(doc2);


})


/**
 * Created by claud on 11/12/2017.
 */

db.archivesImport.find({source: "0141-EUR-FRA-IDF-UP-sec-1973_2012-DS"}).forEach(function (doc) {
    var doc2 = {}
    var array = doc.date.match(/(\d{4})/);
    if (array.length > 0)
        doc2.annee = array[1];
    doc2.boite = doc.boite;
    doc2.chemise = null;
    doc2.souschemise = null;
    doc2.source = doc.source
    doc2.titre = doc.titre;
    if (doc.item)
        doc2.titre += " : " + doc.item;
    db.archives.save(doc2);


})


db.archivesImport.find({source: "1096-EquipeEurope-1971_2015-DS"}).forEach(function (doc) {
    var doc2 = {}

    doc2.anneeDebut = doc.anneeDebut;
    doc2.anneeFin = doc.anneeFin;
    if (doc.anneeFin - doc.anneeDebut == 0)
        doc2.annee = doc.anneeDebut;
    doc2.boite = doc.boite;
    doc2.chemise = doc.chemise;
    doc2.souschemise = doc.chemise;
    doc2.source = doc.source
    doc2.titre = doc.contenu;
    doc2.auteur = doc.auteur;
    doc2.commentaire = doc.remarques;
    doc2.confidentialite = null;
    db.archives.save(doc2);


})


var mappings = {
    'annee': 'anneeDebut',
    'anneeFin': 'anneeFin',
    'auteur': 'auteur',
    'Auteur_Edition': 'auteur',
    'boite': 'coteBoite',
    'chemise': 'coteSerie',
    'commentaire': 'commentaire',
    'confidentialite': 'confidentiel',
    'confidentiel': 'confidentiel',
    'Contenu': 'contenu',
    'CoteBoite': 'coteBoite',
    'CoteSerie': 'coteSerie',
    'Date': 'dateStr',
    'Destinataire_Publication': 'destinataire',
    'Format': 'format',
    'Genre': 'genre',
    'Lettre': 'genre',
    'Lieu': 'lieu',
    'NbFeuilles': 'nbFeuilles',
    'Nbrefeuilles': 'nbFeuilles',
    'Remarques_Sujet': 'commentaire',
    'source': 'source',
    'souschemise': 'coteSousSerie',
    'Sujet_Titre': 'titre',
    'titre': 'titre',
    '_id': 'mongoId'
}

var collections = [
    '1096',
    '141',
    'joseph771_5cols',
    'joseph771_8cols',
    'joseph772',
    'jospeh771_11cols']


var collections = {
    '141': '0141-EUR-FRA-IDF-UP-sec-1973_2012-DS.odt',
    '1096': '1096-EquipeEurope-1971_2015-DS.odt',
    'joseph771_5cols': '0771-FondsJosephWresinski-SerieB-Inv.odt',
    'joseph771_8cols': '0771-FondsJosephWresinski-SerieB-Inv.odt',
    'joseph772': '0772-FondsJosephWresinski-SerieC-Inv.odt',
    'jospeh771_11cols': '0771-FondsJosephWresinski-SerieB-Inv.odt',
    '120': '0120-FRA-FRC-Arbois-La_Bise-1978_2009-DS.odt',
    '224': '0224-AFR-COD-RepDemCongo-Inv.odt',
    '250': '0250-FRA-PAC-Marseille-1960_2012-DS.odt',
    '267': '0267-EUR-BELgique-1964_1999-DS.odt',
    '302': '0302-FRA-Les17Octobre-1992_2013_2014-06-10-BV.odt',
    '303': '0303-CHE-Suisse-1963_1999.DS.odt',
    '1015': '1015-INT-RelationsConseilEurope-1979_2010-DS.odt',
    '1084': '1084-SeminaireMediteranee-2002_2008-DS.odt',
    '1018': '1018-1021-1022-1025-1026-1027-INT-RelatInstitInternat-1973_2000-Inv.odt',
    '1091': '1091-Expertise-ViolenceSilencePaix-Colloque2012-Inv.ods',
}

for (var key in collections) {
    var collection = key;
    db.getCollection(collection).find().forEach(function (doc) {
            var doc2 = {
                mongoCollection: key,
                source: collections[key]


            }
            for (var key2 in mappings) {
                if (doc[key2])
                    doc2[mappings[key2]] = doc[key2];

            }

            var coteSerie = ""
            if (doc2.coteSerie && doc2.coteSerie != "undefined")
                coteSerie = doc2.coteSerie;
            var coteSousSerie = ""
            if (doc2.coteSousSerie && doc2.coteSousSerie != "undefined")
                coteSousSerie = doc2.coteSousSerie;

            var titre = ""
            if (doc2.titre && doc2.titre != "undefined")
                titre = doc2.titre;
            var contenu = ""
            if (doc2.contenu && doc2.contenu != "undefined")
                contenu = doc2.contenu;
        var commentaire = ""
        if (doc2.commentaire && doc2.commentaire != "undefined")
            commentaire = doc2.commentaire;

            doc2.title = doc2.coteBoite + "." + coteSerie + "." + coteSousSerie;
            doc2.content = "<B>titre</B>"+titre + "<br> <B>contenu</B>" + contenu+"<br><B>commentaire</B>"+commentaire;
            db.archives.save(doc2)


        }
    )

}