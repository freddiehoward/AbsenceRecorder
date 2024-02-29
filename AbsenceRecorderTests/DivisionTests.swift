//
//  DivisionTests.swift
//  AbsenceRecorderTests
//
//  Created by Freddie H on 29/02/2024.
//

import XCTest

@testable import AbsenceRecorder

final class DivisionTests: XCTestCase {

    func testGetAbsenceDivisionWithAbsenceOnThatDayReturnsAbsence() throws {
        let division = Division(code: "TestDiv")
        let dateToday = Date()
        let absence = Absence(date: dateToday, students: Student.examples)
        
        let actual = division.getAbsence(for: dateToday)
        
        XCTAssertNotNil(actual)
    }
}
