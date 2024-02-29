//
//  RootTabView.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import SwiftUI

struct RootTabView: View {
    var body: some View {
        TabView {
            DivisionsView()
                .tabItem {
                    Image(systemName: "square.and.pencil")
                    Text("")
                }
            AbsenceView(division: Division.examples[0])
                .tabItem {
                    Image(systemName: "triangle")
                    Text("Class Absence")
                }
            StatisticsView()
                .tabItem {
                    Image(systemName: "chart.pie")
                    Text("StatisticsView")
                    
                }
        }
    }
}

#Preview {
    RootTabView()
}
