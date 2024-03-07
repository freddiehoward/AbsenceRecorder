//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import Foundation

//to make divisions data codable as one of its pieces of data is of type Student absence which is not encodable without it itself conforming to codable
class StudentAbsence: ObservableObject, Codable {
    let student: Student
    @Published var isPresent: Bool
    
    init(student: Student) {
        self.student = student
        self.isPresent = false
    }
    
    //make keys for our homemade datatypes so json doesn't have a fit, json makes encoding keys using these enums such as end of line 33 and 34
    private enum CodingKeys: CodingKey {
        case student, isPresent
    }
    

    //required means that inheriting classes MUST provide an implementation of the method as if we dont specify this in child classes JSON won't know how to encode it
    required init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        student = try container.decode(Student.self, forKey: .student)
        
        //isPresent = try decoding to boolean using the key in the json container which is labeled isPresent
        isPresent = try container.decode(Bool.self, forKey: .isPresent)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(student, forKey: .student)
        try container.encode(isPresent, forKey: .isPresent)
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(firstName: "freddie", lastName: "G.O.A.T", birthday: "19/03/07"))
    #endif
}
