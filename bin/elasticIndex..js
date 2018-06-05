var elasticIndex = {



mappings0:{"mappings": {
    "archive": {
        "properties": {
            "annee":    { "type": "integer"  },
            "boite":     { "type": "text"  },
            "chemise":      { "type": "text" },
            "souschemise":      { "type": "text" },
            "source":      { "type": "text" },
            "titre":      { "type": "text" }
        }
    }
},



    "archivesatd": {


        mappings: {
            "mappings": {
                "archive": {
                    "properties": {
                        "anneeDebut": {"type": "integer"},
                        "anneeFin": {"type": "integer"},
                        "auteur": {"type": "text"},
                        "coteBoite": {"type": "keyword"},
                        "coteSerie": {"type": "keyword"},
                        "commentaire": {"type": "text"},
                        "confidentiel": {"type": "keyword"},
                        "dateStr": {"type": "text"},
                        "destinataire": {"type": "text"},
                        "format": {"type": "text"},
                        "genre": {"type": "keyword"},
                        "lieu": {"type": "text"},
                        "nbFeuilles": {"type": "integer"},
                        "source": {"type": "text"},
                        "coteSousSerie": {"type": "keyword"},
                        "title": {"type": "text"},
                        "content": {
                            "type": "text",
                            "index_options": "offsets",
                            "fielddata": true,

                            "fields": {
                                "contentKeyWords": {
                                    "type": "keyword",
                                    "ignore_above": 256
                                }
                            }
                        }
                    }
                }
            }
        }
    },

    "wikipediacategories": {


        mappings: {
            "mappings": {
                "category": {
                    "properties": {

                        "parent": {"type": "text"},
                        "child": {"type": "text"},
                        "count": {"type": "integer"},
                    }
                }
            }
        }
    }








}
}

    module.exports = elasticIndex;