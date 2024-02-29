//
//  ViewModel.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    static let shared = ViewModel()
    
    @Published var divisions = Division.examples
    @Published var testing: String = "testing"
    
    private init() {}
}
