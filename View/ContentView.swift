//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    var divisions: [Division]
    
    @State var currentDate = Date()
    
    var body: some View {
        //division is a temp variable to hold each element in divisions
        NavigationView{
            List(divisions, id: \.self.code) { division in Text("\(division.code)")
                    .padding()
                //4:48 in absence recorder part 4 video

            }
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
    ContentView(divisions: Division.examples)
}
