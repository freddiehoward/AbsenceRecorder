//
//  Division.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 22/02/2024.
//

import Foundation

class Division {
    
    let code: String
    var students: [Student] = []
    
    init(code: String) {
        self.code = code
    }
    
    //this code only runs in debug mode ie not final product
    #if DEBUG
    //static merans it is a property of the class not the instance
    static func createDivision(code: String, of size: Int) -> Division {
        let division = Division(code: code)
        
        return division
        
        //5:48 in video
    }
    #endif
    
}
