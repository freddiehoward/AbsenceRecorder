//
//  StatisticsView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import SwiftUI

struct StatisticsView: View {
    
    @ObservedObject var viewModel = ViewModel.shared
    
    var body: some View {
        VStack{
            Text("number of students in \(viewModel.divisions[0].code): \(viewModel.divisions[0].students.count)")
        }
    }
}

#Preview {
    StatisticsView()
}
