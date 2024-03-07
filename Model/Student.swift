//
//  Student.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import Foundation

//to make divisions data codable as one of its pieces of data is of type student which is not encodable without it itself conforming to codable
class Student: Codable {
    
    let firstName: String
    let lastName: String
    let birthday: String

    init(firstName: String, lastName: String, birthday: String) {
        self.firstName = firstName
        self.lastName = lastName
        self.birthday = birthday
    }
    
    #if DEBUG
    static let examples = [Student(firstName: "blud", lastName: "ffff", birthday: "19/11/1342"), Student(firstName: "bludwin", lastName: "fffggg", birthday: "19/11/1342")]
    #endif
}
