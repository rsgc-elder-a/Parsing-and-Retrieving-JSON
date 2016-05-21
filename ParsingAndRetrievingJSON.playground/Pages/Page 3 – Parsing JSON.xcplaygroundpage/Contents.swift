/*:
 [Previous](@previous)
 
 # Parsing JSON
 
 Let's consider, and then parse using Swift, an even smaller chunk of JSON data.
 
    { "names" : [
                    "Gilbert",
                    "Alex",
                    "Mark"
    ]}
 
 In this case, there is a single name-value pair.
 
 *names* is the name, and the value is an array of simple values (instead of an array of objects like the last example).
 
 How can we parse this into data that is usable in Swift?
 
 The built-in class for parsing JSON is **NSJSONSerialization**, and that is what we will use.
 
[Next](@next)
 */
