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
    
    var absences: [Absence] = []
    
    init(code: String) {
        self.code = code
    }
    
    func getAbsence(for date: Date) -> Absence? {
        
        //.first means that the first item in absences to satisfy closure ie return true in below closure will be returned
        return absences.first {
            let comparison = Calendar.current.compare($0.takenOn, to: date, toGranularity: .day)
            return comparison == .orderedSame
        }
        
    }
    
    func createAbsenceOrGetExistingIfAvailable(for date: Date) -> Absence {
        //the if is checking whether getAbsence returns a data as if there is no previous absence getAbsence returns null
        if let existingAbsence = getAbsence(for: date) {
            return existingAbsence
        }
        else {
            let absence = Absence(date: date, students: students)
            return absence
        }
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


