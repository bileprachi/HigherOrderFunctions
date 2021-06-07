//
//  RemoveAll.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import Foundation

class RemoveAllExample {
    var names = ["Prachi", "Laila", "Bhailu", "Sham", "Raj", "Sai", "Prem"]
    //Requirement - remove name - Bahilu from an array
    func removeAllExample() {
        print("Original array - \(names)")
        names.removeAll{ $0 == "Bhailu" }
        print("remove all -\(names)")
    }
    
    func removeAtExample() {
        names.remove(at: 1)
        print("remove at - \(names)")
    }
    
    func reverseExample() {
        for index in names.reversed() {
            print("Reverse - \(index)")
        }
    }
    
}
