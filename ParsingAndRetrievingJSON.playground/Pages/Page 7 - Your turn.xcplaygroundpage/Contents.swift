/*:
 
 [Previous](@previous)
 
 # Your turn
 
 Here is the JSON we looked at ealier:
 
 { "students" : [
 {
 "firstName" : "Scott"
 "lastName"  : "Blackwell",
 },
 {
 "firstName" : "Will",
 "lastName"  : "Graham"
 },
 ]}
 
 ## Exercise
 
 Use the example given and explained on the prior pages to parse the JSON structure above.
 
 Go back to page 2 if you forget what structures this JSON describes.
 
 HINTS:
 
 * When JSON contains an array, you try to cast it to a Swift array.
 * When JSON contains a dictionary (a set of name-value pairs), you try to cast it to a Swift dictionary.
 * The syntax for declaring a dictionary with a key and value that are both of type String is :
 
 let exampleDictionary : [String : String]
 */


// Step 1: Create the JSON string.
import Foundation



// Create the string
var JSON  =  "{\"students\":[\n"
JSON += "{\n"
JSON +=  "\"firstName\":\"Scott\",\n"
JSON +=    "\"lastName\":\"Blackwell\"\n"
JSON +=    "},\n"
JSON +=    "{\n"
JSON +=  "\"firstName\":\"Will\",\n"
JSON +=   "\"lastName\":\"Graham\" \n"
JSON +=    "},\n"

JSON +=    "{\n"
JSON +=  "\"firstName\":\"Stuart\",\n"
JSON +=   "\"lastName\":\"Armstrong\" \n"
JSON +=    "}\n"

JSON +=   "]}\n"

// Step 2: Encode the string as an NSData object

// Encode the string as an NSData object
let JSONData = JSON.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!


// Step 3: Parse the JSON data into Swift-native data types
let exampleDictionary : [String : String]
// Parse the string into native Swift data types
do {
    //something is wrong with the way im acsessing the infromaiton
    //print(JSON)
    let json = try NSJSONSerialization.JSONObjectWithData(JSONData, options: []) as! [String: AnyObject]
    if let students = json["students"] as? [AnyObject] {
        
        //print(students)
       // var banana : String = students
  //      exampleDictionary = students
       // print(students)
        
        for apple in students {
         //   var orange : String = apple
            
            if let exampleDictionary = apple as? [String : String]
            {
                print(exampleDictionary)
                if let firstName = exampleDictionary["firstName"]
                {
                    print(firstName)
                }
            }
        }
    }
} catch let error as NSError {
    print("Failed to load: \(error.localizedDescription)")
}





