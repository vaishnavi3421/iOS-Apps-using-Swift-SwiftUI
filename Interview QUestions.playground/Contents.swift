import UIKit

//Optional / Optional Binding / OPtional Chaining
struct Employee {
    var name : String?
    var country : String?
    var city : String?
    var company : String?
    // Optional BInding
    class Test {
        func testOptional() {
            let employee = Employee(name: "Vaish", country: "India", city: "Pune", company: "App Developer")
            
            if let city = employee.city, let country = employee.country {
                farmAddress(city: city, country: country )
            }
            // OPtional Chaining
            guard let city = employee.city?.uppercased() , let country = employee.country else {
                return
            }
            farmAddress(city: city, country: country )
        }
        
        func farmAddress(city : String , country: String) {
            
        }
        
    }
  
   
}

//Dispatchqueue.main.async
