ShitAppens Rails Server
=======================

Backend for the ShitAppens Android application.


Usage
-----

The REST interface allows to retrieve a list of toilets or the information for an individual toilets as JSON.

    http://localhost:3000/toilets.json
    http://localhost:3000/toilets/1.json

To simulate a POST request you can prepare a simple JSON file ...

    {
     "occupied": true,
     "sender": 999
    }

... and send it via the command line tool curl.

    curl -X POST -H "Content-Type:application/json" -d @/full/path/to/the/JSON/file/toilet-occupied.json http://localhost:3000/toilets.json
