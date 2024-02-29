//
//  AbsenceView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import SwiftUI

struct AbsenceView: View {
    let absence: Absence
    
    var body: some View {
        List(absence.studentAbsences, id: \.self.student.firstName) { studentAbsence in
            AbsenceItem(studentAbsence: studentAbsence)
        }
        
    }
}

#Preview {
    AbsenceView(absence: Absence.example)
}
