//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import SwiftUI

struct DivisionsView: View {
    
    @ObservedObject var viewModel = ViewModel.shared
    
    @State var currentDate = Date()
    
    var body: some View {
        //division is a temp variable to hold each element in divisions
        NavigationStack{
            List(viewModel.divisions, id: \.self.code) { division in HStack {
                NavigationLink(destination: AbsenceView(absence: division.createAbsenceOrGetExistingIfAvailable(for: currentDate))) {
                    DivisionItem(division: division)
                }
            }
        }
            .onAppear(perform: {
                viewModel.saveToFile()
            })
            .navigationTitle(currentDate.getShortDate())
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    Button(action: { currentDate = currentDate.changeDateBackward()}) {
                        Image(systemName: "arrow.backward")
                    }
                }
                ToolbarItem(placement: .topBarTrailing) {
                    Button(action: { currentDate = currentDate.changeDateForward()}) {
                        Image(systemName: "arrow.forward")
                    }
                }
            }
        }
        
    }
}

#Preview {
    DivisionsView()
}
