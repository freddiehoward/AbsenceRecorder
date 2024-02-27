//
//  DateChanger.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 27/02/2024.
//

import Foundation


extension Date {
    
    func getShortDate() -> String {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        
        return formatter.string(from: self)

    }
        
    func changeDateForward() -> Date{
            
        return Calendar.current.date(byAdding: .day, value: 1, to: self) ?? Date()
    }
    
    func changeDateBackward() -> Date{
            
        return Calendar.current.date(byAdding: .day, value: -1, to: self) ?? Date()
    }
}
