//
//  DivisionItem.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import SwiftUI

struct DivisionItem: View {
    
    let division: Division
    var body: some View {
        Image(systemName: "\(division.students.count).circle")
        Text("\(division.code)")
    }
}

#Preview {
    DivisionItem(division: Division.examples[0])
}
