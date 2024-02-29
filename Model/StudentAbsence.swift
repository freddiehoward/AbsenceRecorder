//
//  StudentAbsence.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import Foundation

class StudentAbsence: ObservableObject {
    let student: Student
    @Published var isPresent: Bool
    
    init(student: Student) {
        self.student = student
        self.isPresent = false
    }
    
    #if DEBUG
    static let example = StudentAbsence(student: Student(firstName: "freddie", lastName: "G.O.A.T", birthday: "19/03/07"))
    #endif
}
