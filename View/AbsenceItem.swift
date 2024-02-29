//
//  AbsenceItem.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import SwiftUI

struct AbsenceItem: View {
    
    @ObservedObject var studentAbsence: StudentAbsence
    
    var body: some View {
        HStack{
            Text("student's name is: \(studentAbsence.student.firstName)")
            Spacer()
            if studentAbsence.isPresent {
                Button("🥰", action: {toggleAbsent()})
            }
            else{
                Button("😡", action: {toggleAbsent()})
            }
        }
    }
    
    func toggleAbsent() -> Void {
        studentAbsence.isPresent = !studentAbsence.isPresent
    }
}

#Preview {
    AbsenceItem(studentAbsence: StudentAbsence.example)
}
