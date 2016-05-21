/*:
 [Previous](@previous)
 # Error Handling
 */
import Foundation

// Create the string
var example : String = "{ \"names\" : ["
example += "\"Gilbert\","
example += "\"Alex\","
example += "\"Mark\""
example += "]}"

// Encode the string as an NSData object
let JSONData = example.dataUsingEncoding(NSUTF8StringEncoding, allowLossyConversion: false)!

// Parse the string into native Swift data types
do {
    let json = try NSJSONSerialization.JSONObjectWithData(JSONData, options: []) as! [String: AnyObject]
    if let names = json["names"] as? [String] {
        print(names)
        for name in names {
            print(name)
        }
        print(names[1])
    }
} catch let error as NSError {
    print("Failed to load: \(error.localizedDescription)")
}
/*:
 Line-by-line breakdown:
 * 18: a **do-catch** is a structure for handling errors
    * 19: inside the **do** block, you mark code that can throw an error by writing **try** in front
        * we must parse JSON with error handling, because a web server might give us mal-formed JSON data
        * we cast the JSON to be a Swift-native dictionary with a key of type *String* and a value of type *AnyObject*
    * 23: if an error occurs, the **catch** block runs
        * a description of the problem is automatically placed in an object named *error*
 * 20: we know that in the dictionary, for a key the of *names*, the value is an array
    *  we use optional binding (an **if let** statement) to attempt to cast (convert) the JSON array to a Swift array
 * 21: finally, we print the contents of the Swift-native array to the console
 
 [Next](@next)
 */
