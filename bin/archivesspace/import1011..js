var fs = require('fs');
var csv = require('csvtojson');
var request = require('request');
var async = require('async');

var file = "D:\\ATD_Baillet\\archivesSpaceTest\\1011.csv";




var loginKey = "cbe0bc3bb28959c2f21315c5021a615e6837fcc83664df7323b4fcf2c122d1fa";
var serverUrl = "http://vps254642.ovh.net:8089";
var repositoryId = 2;
var accessionId = 1;

var mappings1 = {
    "Dossier 01-AfriqueSud": 196,
    "Dossier 02-Benin": 197,
    "03-Burkina": 198,
    "04-Burundi": 199,
    "05-Cameroun": 200,
    "06-Centrafrique": 201,
    "Dossier 07-CoteIvoire": 202,
    "08-Ethiopie": 203,
    "Dossier 09-Kenya": 204,
    "10-Mali": 205,
    "11-RDCongo": 206,
    "Dossier 12-Rwanda": 207,
    "13-Senegal": 208,
    "14-Tanzanie": 209,
    "15-Togo": 210,
    "16-Namibie": 211,
    "17- Ouganda": 212,
    "18-Nigeria": 213,
    "19-EquipeDR-Afr": 214,
    "20-Regionaux": 215,
    "21-DG": 216,
    "22-PAEFI": 217,
    "23-ESSVI": 218,
    "24-THDD": 219,
    "25-Tapori": 220,
    "26-CAE": 221,
    "27-Forum": 222,
    "28-PEPS": 223,
    "29-Publications": 224,
    "30-Spiritualite": 225,
    "31-SoutienEngagts": 226,
    "32-Rel_Int": 227,
    "33-PoleFormation": 228,
    "34-ArrPays": 229,
    "35-CIJW": 230,
    "36-Financts": 231,
    "37-Contacts": 232,
    "38-Fichiers": 233,
    "39-Formation": 234,
    "40-RegrouptsRegion": 235,
    "41-Ech-Equipes": 236,
    "42-AssisesVolt": 237,
    "43-AssisesMvt": 238,
    "44-Ensemble-Pour-Les-Autres": 239,
    "45-Discernement": 240,
    "46- Gouvernance": 241,
    "47-ConnExpertise": 242,
    "48-17Oct": 243,
    "49-Campagne2017": 244
}
var mappings2 = {
    "1-ZAF-SEJOUR-TARDIEU": 11,
    "2-ZAF-VISITE-MARTIN- DIANA": 12,
    "3-ZAF-PARTENAIRES": 13,
    "01-BEN-HISTOIRE": 14,
    "02-BEN-FELIHO": 15,
    "03-BEN-PARTENAIRES": 16,
    "04-BEN-AUTRES_LIENS": 17,
    "01-BFA-HISTOIRE": 18,
    "02-BFA-17OCT": 19,
    "03-BFA-AUTRES-EVTS": 20,
    "04-BFA-RAPPORTS-PRESENTATION": 21,
    "05-BFA-EVAL-PROGRAM": 22,
    "06-BFA-RA": 23,
    "07-BFA-EQUIPE": 24,
    "08-BFA-REUNIONS- EQUIPE": 25,
    "09-BFA-SAVOIR-PARTAGE": 26,
    "10-FORUM-ENFANTS-2009": 27,
    "11-BFA-FORMATION-ANIMATEURS": 28,
    "12-BFA-RAC": 29,
    "13-BFA-ASSISES-MVT": 30,
    "14-BFA-RESEAU": 31,
    "15-BFA-COPARET": 32,
    "16-BFA- RECH-ACTION-EDUC": 33,
    "17-BFA- RECH-ACTION-EDUC-SEMINAIRE2013": 34,
    "18-BFA-AMIS -FAMILLES": 35,
    "19-BFA-PACERE": 36,
    "20-BFA-GANZOURGOU": 37,
    "21-BFA-ADMIN": 38,
    "22-BFA-COMPTA-FINANCES": 39,
    "23-BFA-JEUNES": 40,
    "24-BFA-VISITE-2009-11": 41,
    "25-BFA-VISITE-2011-10": 42,
    "26-BFA-VISITE-2013-02": 43,
    "27-BFA-VISITE-2013-11": 44,
    "28-BFA-VISITE-2014-09": 45,
    "29-BFA-VISITE-2015-06": 46,
    "30-BFA-VISITE-2016-02": 47,
    "31-BFA-VISITE-2016-11": 48,
    "32-BFA-ANIMATION-MVT": 49,
    "34-BFA-MISERE_VIOLENCE": 50,
    "35-BFA-PHOTOS": 51,
    "01-BDI-CORRESP": 52,
    "02-BDI-17OCT": 53,
    "03-BDI-Photos": 54,
    "01-CMR-HISTOIRE": 55,
    "02-CMR-17OCT": 56,
    "03-CMR-RESEAU": 57,
    "04-CMR-PETIT-DAN-ET-SARAH": 58,
    "05-CMR-VIE-DU-GROUPE": 59,
    "06-CMR-ASSISESMVT": 60,
    "07-CMR-AMIS": 61,
    "08-CMR-VISITES": 62,
    "09-CMR-CONNAISSANCE-ECONOMIE": 63,
    "10-CMR-LEGALISATION": 64,
    "11-CMR-RAPPORTS-PRESENTATION": 65,
    "12-CMR-PHOTOS": 66,
    "01-CAF-HISTOIRE": 67,
    "02-CAF-17OCT": 68,
    "03-CAF-AUTRES- RASSEMBLTS": 69,
    "04-CAF-ASSISES-MVT": 70,
    "05-CAF-EQUIPE": 71,
    "06-CAF-REUNIONS-EQUIPE": 72,
    "07-CAF-RAPPORTS-PRESENTATIONS": 73,
    "08-CAF-RA": 74,
    "09-CAF-AMIS": 75,
    "10-CAF-BEA-EPAYE": 76,
    "11-CAF-SAVOIR-DANS-LA-RUE": 77,
    "12-CAF-FORMATION-ANIM": 78,
    "13-CAF-FORMATION-EDUCATION-PAIX": 79,
    "14-CAF-STAGIAIRES": 80,
    "15-CAF-PREPA-SEMINAIRE-OUAGA": 81,
    "16-CAF-DVD-CHANTS": 82,
    "17-CAF-TAPORI": 83,
    "18-CAF-FORMATION-PIJCA": 84,
    "19-FORMATION-PIJCA-SONS": 85,
    "20-CAF-RESEAU": 86,
    "21-CAF-EVAL-PROGRAM": 87,
    "22-CAF-EVAL-2012_2013": 88,
    "23-CAF-PROGRAM-2013_2017": 89,
    "24-CAF-EMISSION- RADIO": 90,
    "25-CAF-REU-INFOS": 91,
    "26-CAF-MISERE-EST-VIOLENCE": 92,
    "27-CAF-FORMATION-MEDIATEURS2016": 93,
    "28-CAF-FORMATION-MEDIATEURS-SUITES": 94,
    "29-CAF-RECHERCHE-ACTION-EDUC": 95,
    "30-CAF-COMPTA-FINANCES": 96,
    "31-CAF-ADMIN": 97,
    "32-CAF-VISITE2010DG": 98,
    "33-CAF-VISITE2013DG": 99,
    "34-CAF-VISITE2017DG": 100,
    "35-CAF-DISCERNEMENT2015": 101,
    "01-CIV-HISTOIRE": 102,
    "02-CIV-17OCT": 103,
    "03-CIV-AUTRES RASSEMBLTS": 104,
    "04-CIV-RAPPORTS-PRESENTATIONS": 105,
    "05-CIV-EVAL-PROGRAM": 106,
    "06-CIV-ADMIN": 107,
    "07-CIV-ENFANT-LUMIERE": 108,
    "08-CIVSOUTIEN-SCOLARITE": 109,
    "09-CIV-CRISE2011": 110,
    "10-CIV-CORRESP-MEMBRES": 111,
    "11-CIV-CR-REUNIONS": 112,
    "12-CIV-MARIA-VICTOIRE": 113,
    "13-CIV-TAPORI-ABIDJAN": 114,
    "14-CIV-SAVOIR-PARTAGE": 115,
    "15-CIV-FORMATION-ANIM": 116,
    "16-CIV-ASSISES-MVT": 117,
    "17-CIV-RESEAU": 118,
    "18-CIV-VISITE2011-10": 119,
    "19-CIV-VISITE2012-02": 120,
    "20-CIV-VISITE2012-09": 121,
    "21-CIV-VISITE2013-03": 122,
    "22-CIV-VISITE2013-06": 123,
    "23-CIV-VISITE2014-02": 124,
    "24-CIV-VISITE-2014-11": 125,
    "25-CIV-VISITE-2015-07": 126,
    "26-CIV-VISITE-2016-11": 127,
    "27-CIV-PHOTOS": 128,
    "1-MartaNigussie": 129,
    "2-NasrinSiege": 130,
    "3-NathalyKleist": 131,
    "4-ZackariaKonsimbo": 132,
    "01-KEN-HISTOIRE": 133,
    "02-KEN-VISITE2012": 134,
    "03-KEN-VISITE2015": 135,
    "04-KEN-TUSA": 136,
    "05-KEN-AMIS": 137,
    "06-KEN-voyage2012": 138,
    "07-KEN-17oct2016": 139,
    "01-MLI-HISTOIRE": 140,
    "02-MLI-RAPPORTS-PRESENTATION": 141,
    "03-MLI-COMPTA-ADMIN": 142,
    "04-MLI-CORRESPONDANCE": 143,
    "05-MLI-RESEAU": 144,
    "06-MLI-VISITE2009-10": 145,
    "07-MLI-VISITE2012-02": 146,
    "08-MLI-PHOTOS": 147,
    "01-COD-HISTOIRE": 148,
    "02-COD-17OCT": 149,
    "03-COD-RAPPORTS-ACTIVITES": 150,
    "04-COD-CR-REU-AAAQM": 151,
    "05-COD-EVAL-PROGRAM": 152,
    "06-COD-CORRESPONDANCE": 153,
    "07-COD-SIMON-TIENDREBEOGO": 154,
    "08-COD-STATUTS": 155,
    "09-COD-ADMIN": 156,
    "10-COD-COMPTA-FINANCES": 157,
    "11-COD-PERMANENT": 158,
    "12-COD-RESEAU": 159,
    "13-COD-RECHERCHE-ECONOMIE": 160,
    "14-COD-RENCONTRE-GENEVE": 161,
    "15-COD-TAPORI": 162,
    "16-COD-BUNYAKIRI": 163,
    "17-COD-GOMA": 164,
    "18-COD-UVIRA": 165,
    "19-COD-JEUNES-TAPORI": 166,
    "20-FORMATION-UMUSEKE-2017": 167,
    "21-COD-RECHERCHE-RENE": 168,
    "22-COD-RENCONTRE-TAPORI-2017": 169,
    "23-COD-BIBLIO-MONTAGNE": 170,
    "24-COD-RADIO": 171,
    "25-COD-ArticlesSite": 172,
    "26-COD-FAMILLES-SOLIDAIRES": 173,
    "27-COD-DISCERNEMENT2015": 174,
    "28-COD- GOUVERNANCE": 175,
    "29-COD-ASSISES-MVT": 176,
    "30-COD-VISITE2010": 177,
    "31-COD-VISITE2012": 178,
    "32-COD-VISITE2014": 179,
    "33-COD-VISITE2016": 180,
    "34-COD-CONN-EXPERTISE": 181,
    "35-COD-PHOTOS": 182,
    "01-RWA-HISTOIRE": 183,
    "02-RWA-17OCT": 184,
    "03-RWACHANTIER2008": 185,
    "04-RWA-VISITE2010": 186,
    "05-RWA-VISITE2012": 187,
    "06-RWA-VISITE2014": 188,
    "07-RWA-VISITE2016": 189,
    "08-RWA-UMUSEKE": 190,
    "09-RWA-AMIS": 191,
    "10-RWA-FILM": 192,
    "11-RWA-ADA": 193,
    "12-RWA-Photos17oct2009": 194,
    "13-RWA-Photos17oct2010": 195,
    "14-RWA-Photos17oct2011": 196,
    "15-RWA-Photos17oct2013": 197,
    "16-RWA-PhotosJuin2010": 198,
    "17-RWA-PhotosMai2012": 199,
    "18-RWA-PhotosJanv2014": 200,
    "01-SEN-HISTOIRE": 201,
    "02-SEN-17OCT": 202,
    "03-SEN-FSM": 203,
    "04-SEN-EVAL-CONN-2010": 204,
    "05-SEN-EVAL-PROGRAM": 205,
    "06-SEN-EQUIPE": 206,
    "07-SEN-CR-REU-EQUIPE": 207,
    "08-SEN-AMIS-FAMILLES": 208,
    "09-SEN-RA": 209,
    "10-SEN-RESEAU": 210,
    "11-SEN-FeNaLEP": 211,
    "12-SEN-RAPPORTS- PRESENTATIONS": 212,
    "13-SEN-PROGRAM- INVESTISSMNT": 213,
    "14-SEN-GESTU": 214,
    "15-SEN-ACTION-RASSEMBLMNT": 215,
    "16-SEN-ACTION-JEUNES": 216,
    "17-SEN-ACTION-SAVOIR-PARTAGE": 217,
    "18-SEN-ACTION-INONDATIONS-HABITAT": 218,
    "19-SEN-PROJETS_ECO": 219,
    "20-SEN-JOURNAL": 220,
    "21-SEN-SEMINAIRE-PRINC-DIR": 221,
    "22-SEN-PARTICIP-SEMINAIRE-OUAGA": 222,
    "23-SEN-ENREGI-NAISSANCE": 223,
    "24-SEN-ASSISES- MVT": 224,
    "25-SEN-PROCESSUS-RELAIS": 225,
    "26-SEN-ADMIN": 226,
    "27-SEN-MISERE-EST-VIOLENCE": 227,
    "28-SEN-VISITE-2010-02": 228,
    "29-SEN-VISITE-2011-02": 229,
    "30-SEN-VISITE-2011-07": 230,
    "31-SEN-VISITE-2012-10": 231,
    "32-SEN-VISITE-2013-07": 232,
    "33-SEN-VISITE-2013-11": 233,
    "34-SEN-VISITE-2014-06": 234,
    "35-SEN-VISITE-2014-11": 235,
    "36-SEN-VISITE-2017-02": 236,
    "37-TRAVAUX-ANTENNE": 237,
    "38-REUNIONS-INFO": 238,
    "01-TZA-Histoire": 239,
    "02-TZA-17 Octobre": 240,
    "03-TZA-OTHER-EVENTS": 241,
    "04-TZA-NEWSLETTER": 242,
    "05-TZA-REPORTS-PRESENTATION": 243,
    "06-TZA-ADVISORY-GROUP": 244,
    "07-TZA-TEAM": 245,
    "08-TZA-CR-TEAM-MEETING": 246,
    "09-TZA-FRIENDS-FAMILIES": 247,
    "10-TZA-GENERAL-ASSEMBLY": 248,
    "11-TZA-EVAL-PLANING": 249,
    "12-TZA-RA": 250,
    "13-TZA-NETWORK": 251,
    "14-TZA-ADMIN": 252,
    "15-TZA-COMPTA-FINANCES": 253,
    "16-TZA-YOUTH-GROUP": 254,
    "17-TZA-LITERACY-CLASS": 255,
    "18-TZA-TRAINING": 256,
    "19-TZA-YOUTH-SEMINAR2016": 257,
    "20-TZA-EDUCATION-FOR-ALL": 258,
    "21-TZA-POVERTY-INDICATORS": 259,
    "22-TZA-VISIT2010": 260,
    "23-TZA-VISIT2012": 261,
    "24-TZA-VISIT2014": 262,
    "25-TZA-VISIT2016": 263,
    "26-PICTURES2010": 264,
    "1-Correspondance": 265,
    "2-PrepaMartinGlycella2013_2014": 266,
    "3-ReunionsEtSkype": 267,
    "4-Eval-Program": 268,
    "5-CourriersEnsembleRegion": 269,
    "6-CourriersEnsembleEquipes": 270,
    "7-OrdresMissionsDRafr": 271,
    "1-Correspondances": 272,
    "2-RencDR-2010-02": 273,
    "3-RencDR-2011-01": 274,
    "4-RencDR-2012-01": 275,
    "5-RencDR-2012-09": 276,
    "6-RencDR-2013-06": 277,
    "7-RencDR-2014-07": 278,
    "8-RencDR-2015-01": 279,
    "9-RencDR-2015-09": 280,
    "10-RencDR-2016-09": 281,
    "11-RencDR-2017-07": 282,
    "12-VirtuelDR-2009-09": 283,
    "13-VirtuelDR-2009-11": 284,
    "14-VirtuelDR-2010-04": 285,
    "15-VirtuelDR-2010-06": 286,
    "16-VirtuelDR-2010-09": 287,
    "17-VirtuelDR-2010-11": 288,
    "18-VirtuelDR-2011-04": 289,
    "19-VirtuelDR-2011-06": 290,
    "20-VirtuelDR-2011-09": 291,
    "21-VirtuelDR-2011-12": 292,
    "22-VirtuelDR-2012-03": 293,
    "23-VirtuelDR-2012-03-Assises": 294,
    "24-VirtuelDR-2012-06": 295,
    "25-VirtuelDR-2012-07": 296,
    "26-VirtuelDR-2012-10": 297,
    "27-VirtuelDR-2013-01": 298,
    "28-VirtuelDR-2013-03": 299,
    "29-VirtuelDR-2013-08": 300,
    "30-VirtuelDR-2013-11-economie": 301,
    "31-VirtuelDR-2013-12": 302,
    "32-VirtuelDR-2014-02": 303,
    "33-VirtuelDR-2014-04": 304,
    "34-VirtuelDR-2014-11": 305,
    "35-VirtuelDR-2015-03-EspritCommun-retraite-formation": 306,
    "36-VirtuelDR-2015-05": 307,
    "37-VirtuelDR-2015-10": 308,
    "38-VirtuelDR-2015-StatutEngagement": 309,
    "39-VirtuelDR-2016-01": 310,
    "40-VirtuelDR-2016-02-Discrmnt": 311,
    "41-VirtuelDR-2016-03-Recrutmnt": 312,
    "42-VirtuelDR-2016-05-Visas": 313,
    "43-VirtuelDR-2017-01-engagt-remunere": 314,
    "2-SituationPays": 315,
    "3-Visas": 316,
    "1-Courriers": 317,
    "2-ChantiersEspritCommun": 318,
    "3-complementEnfant": 319,
    "4-PartageFinAnnee": 320,
    "5-Retraites": 321,
    "6-Session2017-09": 322,
    "2-CRreunion": 323,
    "2-EvalPoleCAE": 324,
    "3-ContribAfr-EchangeVirtuelCEC2013": 325,
    "4-MissionsMvtEnAfrique": 326,
    "2-Blog": 327,
    "3-comRCA": 328,
    "4-FB-Afrique": 329,
    "1-EditionsQM": 330,
    "2-JournalQM": 331,
    "3-RevueQM": 332,
    "4-PaillesDansLeSable": 333,
    "5-MariusEtBouba": 334,
    "01-EnsemblePole": 335,
    "02-Alliance": 336,
    "03-Militance": 337,
    "04-Volontariat": 338,
    "1-courriers": 339,
    "2-CA-int": 340,
    "3-Presidence": 341,
    "4-Indicateurs": 342,
    "5-PrincipesDirecteurs": 343,
    "6-OMD": 344,
    "7-OIF": 345,
    "8-Unesco": 346,
    "9-Unicef": 347,
    "10-UA": 348,
    "11-REPTA": 349,
    "12-GhislainLessene": 350,
    "13-Tevoedjere": 351,
    "2-RegroupementsMondiaux": 352,
    "3-CoResponsabilite2016": 353,
    "2-Campus2010": 354,
    "3-Campus2013": 355,
    "4-Campus2015": 356,
    "5-Campus2016": 357,
    "01-CARITAS": 358,
    "02-KMW": 359,
    "03-HFA": 360,
    "04-UNICEF": 361,
    "05-UNESCO": 362,
    "06-AFD": 363,
    "07-FGC": 364,
    "08-fondationPhilantropia": 365,
    "09-StichtingKindEnMaatschappij": 366,
    "10-FondationAAD": 367,
    "11-CCFD": 368,
    "12-FondationEDF": 369,
    "13-fondationBlachere": 370,
    "14-fondationAltadis": 371,
    "15-fondationEnfance": 372,
    "16-fondationAirFrance": 373,
    "17-fondationOrange": 374,
    "18-fondationCDC": 375,
    "19-IslamicRelief": 376,
    "20-Rotary": 377,
    "21-LionsClub": 378,
    "22-FranceEngageAuSud": 379,
    "23-MAE": 380,
    "24-OuestFrance": 381,
    "25-FondationAuteuil": 382,
    "26-MuguetEspoir": 383,
    "27-LaKanope": 384,
    "28-prixHarubuntu": 385,
    "29-SCAC-RCI": 386,
    "30-CoopEspagnole": 387,
    "31-Intervida": 388,
    "1-Demarche": 389,
    "2-Exemples": 390,
    "1-CompoEquipes": 391,
    "2-FichiersMembresMvt": 392,
    "1-formationMvt-Volt": 393,
    "2-prepaDepart": 394,
    "3-AutresDocsFormation": 395,
    "1-2012-03": 396,
    "2-2013-12": 397,
    "1-2010-11-PlacePlusPauvres": 398,
    "2-2011-04-Violence": 399,
    "3-2011-12-Engagements": 400,
    "4-Suites": 401,
    "5-BulletinJeunes": 402,
    "1-lettre1-2014-03": 403,
    "2-conversation-2014-04": 404,
    "3-lettre2-2014-04": 405,
    "4-contributions-2014-05": 406,
    "5-conversation-2014-06": 407,
    "6-skype-2014-08": 408,
    "7-conversation-2014-09": 409,
    "8-conversation-2014-09": 410,
    "9-echangesAvecEquipeAssises": 411,
    "10-financement": 412,
    "11-nonAssisiens": 413,
    "12-rencontreOctobre": 414,
    "1-Assises2012": 415,
    "2-Assises2016-2017": 416,
    "3-rencontreBangui2016-07": 417,
    "4-RencontreDakar2017-03": 418,
    "1-DossierPresentation": 419,
    "2-Budget": 420,
    "3-PreparationRCA": 421,
    "4-ApportsDelegations": 422,
    "5-DelegationsExt": 423,
    "6-Voyages": 424,
    "7-Invitations": 425,
    "8-Participants": 426,
    "9-Tokwa_ti_amasseka": 427,
    "10-Exposition": 428,
    "11-Medias": 429,
    "12-Programme": 430,
    "13-Notes": 431,
    "14-FichiersSon": 432,
    "15-FormationTapori": 433,
    "16-CarrefourJeunesse": 434,
    "17-Actes": 435,
    "18-Film": 436,
    "19-EvalDelegations": 437,
    "20-PostRencontre": 438,
    "21-PhotosPrepa": 439,
    "22-PhotosRencontre": 440,
    "1-MisereEstViolence": 441,
    "2-MisereEstViolence-Colloque": 442,
    "3-PaixNobel": 443,
    "4-Education": 444,
    "5-Economie": 445,
    "1-RecapAnnuel": 446,
    "2-ProximiteTabaski-17Oct2013": 447,
    "3-ComiteInternational": 448,
    "1-AppelAction": 449,
    "2-Corres-DRafr-Mobil2017": 450,
    "3-LivretPhotos": 451,
    "4-Pagne": 452,
    "5-Cerisy": 453,
    "6-Cerisy-Adotevi": 454,
    "7-MedardSane": 455,
    "8-Video-QueSommesNousDevenus": 456,
    "9-ChoraleBretagneAfrique": 457,
    "10-PlayingForChange": 458,
    "11-RFI-AppelAuditeurs": 459
}

/*var inverseMapping={}
for(var key in mappings ){
    inverseMapping[mappings[key]]=key;
}*/

function readfile2json(file, callback) {
    var data = "" + fs.readFileSync(file)
    var jsonArray = [];
    var header = []
    var i = 0;

    csv()
        .fromFile(file)
        .then(function (jsonObj) {
            callback(null, jsonObj)

        })
}


function getNiveau1Obj(json) {
    var objs = {};
    var now = new Date();
    for (var i = 0; i < json.length; i++) {
        var line = json[i];
        if (line["niveau2"].length == 0) {
            var note = "";
            if (line["description"].length > 0)
                note += "-DESCRIPTION :" + line["description"];
            if (line["description"].length > 0)
                note += "\n-REMARQUES :" + line["REMARQUES"]


            if (!objs[line["niveau1"]]) {
                objs[line["niveau1"]] = {
                    "lock_version": 0,
                    "title": line["niveau1"],
                    "publish": true,
                    "restrictions": false,
                    "created_by": "admin",
                    "last_modified_by": "admin",
                    "create_time": now,
                    "system_mtime": now,
                    "user_mtime": now,
                    "suppressed": false,
                    "id_0": line["niveau1"],
                    //   "id_0": "AF-001",
                    //  "id_1": line["niveau1"],
                    "language": "fre",
                    "level": "recordgrp",
                    "resource_type": "papers",
                    "jsonmodel_type": "resource",
                    "extents": [
                        {
                            "lock_version": 0,
                            "number": "19",
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "portion": "whole",
                            "extent_type": "sheets",
                            "jsonmodel_type": "extent"
                        }
                    ],

                    "repository": {
                        "ref": "/repositories/2"
                    },
                    "related_accessions": [
                        {
                            "ref": "/repositories/2/accessions/" + accessionId
                        }
                    ],

                    "repository_processing_note": note,

                    dates: [{
                        "lock_version": 0,
                        "begin": now,
                        "created_by": "admin",
                        "last_modified_by": "admin",
                        "create_time": now,
                        "system_mtime": now,
                        "user_mtime": now,
                        "date_type": "single",
                        "label": "creation",
                        "jsonmodel_type": "date"
                    }]

                }
                if (line.anneeDebut.length > 0 && line.anneeFin.length > 0) {
                    objs[line["niveau1"]].dates.push(
                        {
                            "lock_version": 0,
                            "begin": line.anneeDebut,
                            "end": line.anneeFin,
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "date_type": "inclusive",
                            "label": "event",
                            "jsonmodel_type": "date"
                        }
                    )
                }


            }


        }
    }
    //  console.log(JSON.stringify(objs,null,2))
    return objs;
}

function getNiveau2Obj(json) {
    var objs = {};
    var now = new Date();
    for (var i = 0; i < json.length; i++) {
        var line = json[i];
        if (line["niveau3"].length == 0) {
            if (!objs[line["niveau2"]]) {
                var note = "";
                if (line["description"].length > 0)
                    note += "-DESCRIPTION :" + line["description"];
                if (line["description"].length > 0)
                    note += "\n-REMARQUES :" + line["REMARQUES"]
                if (line["dates"].length > 0) {
                    note += "\n-DATES :" + line["REMARQUES"]
                }


                objs[line["niveau2"]] = {
                    "lock_version": 0,
                    "title": line["niveau2"],
                    "publish": true,
                    "restrictions": false,
                    "created_by": "admin",
                    "last_modified_by": "admin",
                    "create_time": now,
                    "system_mtime": now,
                    "user_mtime": now,
                    "suppressed": false,
                    "id_0": line["niveau2"],
                    //   "id_0": "AF-001",
                    //  "id_1": line["niveau1"],
                    "language": "fre",
                    "level": "subgrp",
                    "resource_type": "papers",
                    "jsonmodel_type": "resource",
                    "extents": [
                        {
                            "lock_version": 0,
                            "number": "19",
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "portion": "whole",
                            "extent_type": "sheets",
                            "jsonmodel_type": "extent"
                        }
                    ],

                    "repository": {
                        "ref": "/repositories/2"
                    },
                    "related_accessions": [
                        {
                            "ref": "/repositories/2/accessions/" + accessionId
                        }
                    ]
                    ,
                    "resource": {
                        "ref": "/repositories/2/resources/" + mappings1[line["niveau1"]],
                    },
                    "repository_processing_note": note,
                    dates: [{
                        "lock_version": 0,
                        "begin": now,
                        "created_by": "admin",
                        "last_modified_by": "admin",
                        "create_time": now,
                        "system_mtime": now,
                        "user_mtime": now,
                        "date_type": "single",
                        "label": "creation",
                        "jsonmodel_type": "date"
                    }]

                }
                if (line.anneeDebut.length > 0 && line.anneeFin.length > 0) {
                    objs[line["niveau2"]].dates.push(
                        {
                            "lock_version": 0,
                            "begin": line.anneeDebut,
                            "end": line.anneeFin,
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "date_type": "inclusive",
                            "label": "event",
                            "jsonmodel_type": "date"
                        }
                    )
                }


            }
        }


    }
}

function getNiveau3Obj(json) {
    var objs = {};
    var now = new Date();
    for (var i = 0; i < json.length; i++) {
        var line = json[i];
        if (line["niveau3"].length != 0) {
            if (!objs[line["niveau2"] + "-" + line["niveau3"]]) {
                var note = "";
                if (line["description"].length > 0)
                    note += "-DESCRIPTION :" + line["description"];
                if (line["description"].length > 0)
                    note += "\n-REMARQUES :" + line["REMARQUES"]
                if (line["dates"].length > 0) {
                    note += "\n-DATES :" + line["REMARQUES"]
                }


                objs[line["niveau2"] + "-" + line["niveau3"]] = {
                    "lock_version": 0,
                    "title": line["niveau3"],
                    "publish": true,
                    "restrictions": false,
                    "created_by": "admin",
                    "last_modified_by": "admin",
                    "create_time": now,
                    "system_mtime": now,
                    "user_mtime": now,
                    "suppressed": false,
                    "id_0": line["niveau2"] + "-" + line["niveau3"],
                    //   "id_0": "AF-001",
                    //  "id_1": line["niveau1"],
                    "language": "fre",
                    "level": "series",
                    "resource_type": "papers",
                    "jsonmodel_type": "resource",
                    "extents": [
                        {
                            "lock_version": 0,
                            "number": "19",
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "portion": "whole",
                            "extent_type": "sheets",
                            "jsonmodel_type": "extent"
                        }
                    ],

                    "repository": {
                        "ref": "/repositories/2"
                    },
                    "related_accessions": [
                        {
                            "ref": "/repositories/2/accessions/" + accessionId
                        }
                    ]
                    ,
                    "resource": {
                        "ref": "/repositories/2/resources/" + mappings1[line["niveau1"]],
                    },

                    "parent": {
                        "ref": "/repositories/2/archival_objects/" + mappings2[line["niveau2"]],
                    },
                    "repository_processing_note": note,
                    dates: [{
                        "lock_version": 0,
                        "begin": now,
                        "created_by": "admin",
                        "last_modified_by": "admin",
                        "create_time": now,
                        "system_mtime": now,
                        "user_mtime": now,
                        "date_type": "single",
                        "label": "creation",
                        "jsonmodel_type": "date"
                    }]

                }
                if (line.anneeDebut.length > 0 && line.anneeFin.length > 0) {
                    objs[line["niveau2"] + "-" + line["niveau3"]].dates.push(
                        {
                            "lock_version": 0,
                            "begin": line.anneeDebut,
                            "end": line.anneeFin,
                            "created_by": "admin",
                            "last_modified_by": "admin",
                            "create_time": now,
                            "system_mtime": now,
                            "user_mtime": now,
                            "date_type": "inclusive",
                            "label": "event",
                            "jsonmodel_type": "date"
                        }
                    )
                }


            }
        }


    }
    //  console.log(JSON.stringify(objs,null,2))
    return objs;
}


function callAPI(url, method, repositoryId, loginKey, jsonArray, callback) {
    var result = {};
    var options = {
        headers: {
            "content-type": "application/json;charset=UTF-8",
            "x-archivesspace-session": loginKey
        },
        method: method
    };

    async.eachSeries(jsonArray, function (item, callbackAsync) {

            if (method == "POST") {
                options.json = item;
                options.url = url + "/repositories/" + repositoryId + "/archival_objects";

            }
            if (method == "UPDATE") {
                options.method = "POST";
                options.json = item.data;
                options.url = url + "/repositories/" + repositoryId + "/resources/" + item.id;
            }

            if (method == "CREATEANDLINK") {
                options.method = "POST";

                options.url = url + "/repositories/" + repositoryId + "/resources/" + inverseMapping[item._parent] + "/children";
                delete item.parent;
                options.json = item;
            }


            else if (method == "GET") {
                options.url = url + "/repositories/" + repositoryId + "/resources/" + item

            }

            else if (method == "DELETE") {
                options.url = url + "/repositories/" + repositoryId + "/resources/" + item

            }


            //   console.log(JSON.stringify(payload, null, 2));
            request(options, function (error, response, body) {
                if (error) {
                    console.log("ERROR " + error);
                    callbackAsync();
                }
                console.log(JSON.stringify(body))
                result[item.id_0] = body.id;
                callbackAsync()

            })


        },

        function (err) {
            if (err)
                return callback(err);
            console.log(JSON.stringify(result))
            return callback(null, "DONE inserted");
        }
    )


}


function insertResources(objs, callback) {
    callAPI(serverUrl, "POST", repositoryId, loginKey, objs, function (err, result) {
        if (err)
            return callback(err);
        return callback(null, result);
    })

}

function deleteResources(objs, callback) {
    callAPI(serverUrl, "DELETE", repositoryId, loginKey, objs, function (err, result) {
        if (err)
            return callback(err);
        return callback(null, result);
    })

}

var option="createNiveau1";

if (option=="createNiveau1") {// niveau 1
    readfile2json(file, function (err, json) {


        objsNiveau1 = getNiveau1Obj(json);
        var mappings = {};
        var array = [];
        for (var key in objsNiveau1) {
            if (key != "") {
                array.push(objsNiveau1[key]);
            }
        }
        console.log(JSON.stringify(array[0]))
        insertResources(array, function (err, result) {
            if (err)
                return "error" + err;
            return result;
        })


    })
}

if (option=="createNiveau2") {// niveau 2
    readfile2json(file, function (err, json) {


        var objsNiveau2 = getNiveau2Obj(json);
        var array = [];
        for (var key in objsNiveau2) {
            if (key != "") {
                array.push(objsNiveau2[key]);
            }
        }
        console.log(JSON.stringify(array[1], null, 2))
        insertResources(array, function (err, result) {
            if (err)
                return "error" + err;
            return result;
        })


    })
}

if (option=="createNiveau3") {// niveau 3
    readfile2json(file, function (err, json) {


        var objsNiveau2 = getNiveau3Obj(json);
        var array = [];
        for (var key in objsNiveau2) {
            if (key != "") {
                array.push(objsNiveau2[key]);
            }
        }
        console.log(JSON.stringify(array[1], null, 2))
        insertResources(array, function (err, result) {
            if (err)
                return "error" + err;
            return result;
        })


    })
}

if (option=="Delete") {
    var ids = [];
    for (var i = 245; i < 692; i++) {
        ids.push(i);
    }
    deleteResources(ids, function (err, result) {
        if (err)
            return "error" + err;
        return result;
    })


}


if( option=="updateNotes"){

}
