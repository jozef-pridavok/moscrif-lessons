include "lib://core/parseXML.ms"

parseXML("<example>some text</example>",
    {
        "/example": {
            text: function(text) { console.printf("parsed %s in <example>\n", text); }
        }
    }
);

parseXML("<example><node>some text</node></example>",
    {
        "/example/node": {
            start: function() { console.printf("starting to parse <example><node>\n"); },
            text: function(text) { console.printf("parsed %s in <example><node>\n", text); },
            end: function() { console.printf("node <example><node> has been parsed\n"); },
        }
    }
);

parseXML("<example><node attr=\"123\">some text</node></example>",
    {
        "/example/node": {
            text: function(text) { console.printf("parsed %s in <example><node>\n", text); },
            end: function(attrs) { for (var attr in attrs) console.printf("parsed attre %s with value %s in <example><node>\n", attr, attrs[attr]); }
        }
    }
);