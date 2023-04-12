import ballerina/http;

# A service representing a network-accessible API
# bound to port `9090`.
@display {
	label: "Comp1",
	id: "Comp1-e846daf4-1ca1-49ab-9997-96c26630d6dc"
}
service / on new http:Listener(9090) {

    # A resource for generating greetings
    # + name - the input string name
    # + return - string name with hello message or error
    resource function get greeting(string name) returns string|error {
        // Send a response back to the caller.
        if name is "" {
            return error("name should not be empty!");
        }
        return "Hello, " + name;
    }
}
