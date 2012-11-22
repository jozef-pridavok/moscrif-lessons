var valObj = {
     prop1: "string value",
     prop2: 1234, // integer value
     prop3: [1, 2, "c", "d"], // array
     // etc
     // for: "reserved keyword" // ERROR!
}

valObj.debugShow();

var strRep1 = String.printf("%v", valObj);
console << strRep1 << "\n";

var fileRep1 = Stream.openFile("data://val.mso", "w+8");
fileRep1.printf("%V", valObj);
fileRep1.close();

var jsonObj = {
     "prop1": "string value",
     "prop2": 1234, // integer value
     "prop3": [1, 2, "c", "d"], // array
     // etc
     "for": "reserved keyword" // OK
}

var strRep2 = String.printf("%j", valObj);
console << strRep2 << "\n";

var fileRep2 = Stream.openFile("data://json.mso", "w+8");
fileRep2.printf("%V", valObj);
fileRep2.close();

var parsedObj = parseData("{prop3:[1,2,\"c\",\"d\"],prop2:1234,prop1:\"string value\"}");
for (var p in parsedObj)
    console << "parsedObj[" << p << "] = " << parsedObj[p] << "\n";
console << "parsedObj.prop3 = " << parsedObj.prop3 << "\n";

var parsedJSON = parseData("{\"prop3\":[1,2,\"c\",\"d\"],\"prop2\":1234,\"prop1\":\"string value\"}");
for (var p in parsedJSON)
    console << "parsedJSON[" << p << "] = " << parsedJSON[p] << "\n";
console << "parsedJSON.prop3 = " << parsedJSON.prop3 << "\n";
console << "parsedJSON[\"prop3\"] = " << parsedJSON["prop3"] << "\n";