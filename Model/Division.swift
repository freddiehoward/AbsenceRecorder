//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import Foundation

class Division {
    
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    //this code only runs in debug mode ie not final product
    #if DEBUG
    //static means it is a property of the class not the instance
    //of is an argument label, which means the argument name is of, and the parameter name is size ie of used when calling func, size used inside func
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        //loop as many times as size parameter
        for i in 0..<size {
            
            let firstName = "firstname"+String(i)
            let lastName = "lastname"+String(i)
            let birthday = "birthday"+String(i)
            
            let temp_student = Student(firstName: firstName, lastName: lastName, birthday: birthday)
            
            division.students.append(temp_student)
            
        }
        
        return division
        
    }
    static let examples = [Division.createDivision(code: "CComZ-1", of: 8), Division.createDivision(code: "CComJ-1", of: 10)]
    #endif
    
}
