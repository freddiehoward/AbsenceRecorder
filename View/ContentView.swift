//
//  ContentView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import SwiftUI

struct ContentView: View {
    
    var divisions: [Division]
    
    var body: some View {
        //division is a temp variable to hold each element in divisions
        List(divisions, id: \.self.code) { division in
            Text("\(division.code)")
                .padding()
            //4:48 in absence recorder part 4 video
        }
    }
}

#Preview {
    ContentView(divisions: Division.examples)
}
