//
//  ViewModel.swift
//  AbsenceRecorder
//
//  Created by Freddie H on 29/02/2024.
//

import Foundation

class ViewModel: ObservableObject {
    
    static let shared = ViewModel()
    
    @Published var divisions = [Division]()
    @Published var testing: String = "testing"
    
    func getURLForJSONData(newFileName: String) -> URL{
        let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
        let userPath = paths[0]
        let url = userPath.appendingPathComponent(newFileName)
        
        return url
    }
    
    func loadFromFile() {
        //get url to the file you want to load from
        var url = getURLForJSONData(newFileName: "divisions.json")
        if let data = try? Data(contentsOf: url) {
            let decoder = JSONDecoder()
            if let loaded = try? decoder.decode([Division].self, from: data) {
                divisions = loaded
            }
        }
    }
    
    func saveToFile() {
        
        //an object capable of taking in other objects and encoding them into JSON text
        let encoder = JSONEncoder()
        
        //try? as it can throw an error sometimes
        //if let needed as returns optional as we may pass null into it
        //not using guard let as we want our function to return nothing
        
        if let encoded = try? encoder.encode(divisions) {
            //take encoded data and turn it into a string
            if let json = String(data: encoded, encoding: .utf8) {
                //get access to a particular location in secondary storage
                let paths = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask)
                let userPath = paths[0]
                let url = userPath.appendingPathComponent("divisions.json")
                do {
                    //write json string to afoirmentioned file in 37-39
                    try json.write(to: url, atomically: true, encoding: .utf8)
                } catch {
                    print(error.localizedDescription)
                }
                
            }
        }
        
        
    }
    
    private init() {}
}
