ShitAppens Rails Server
=======================

Backend for the [ShitAppens Android application](https://github.com/johnjohndoe/ShitAppensAndroid).


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

Idea
----
* Tobias Preuss

Development
-----------
* Tobias Preuss
* Jörg Liedl
* Peter Vasil

Legal stuff
-----------
* The project name and idea naturally are under copyright of the original authors.
  You might however further develop this project, fork the sources, send pull request
  or open issues. Last but not least, any usage of the sources must include an
attribution of the original authors.