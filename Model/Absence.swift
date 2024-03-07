//
//  Absence.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import Foundation

//to make divisions data codable as one of its pieces of data is of type absence which is not encodable without it itself conforming to codable
class Absence: Codable {
    let takenOn: Date
    var studentAbsences: [StudentAbsence]
    
    init(date: Date, students: [Student]) {
        self.takenOn = date
        self.studentAbsences = students.map { StudentAbsence(student: $0)}
    }
    
    #if DEBUG
    static let example = Absence(date: Date(), students: Student.examples)
    #endif
}
