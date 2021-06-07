//
//  SortExample.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import Foundation

class SortExample {
    var arrayExample = [3,6,89,900,20,12]
//Requirement - sort array in ascending order
    func sortAscExample() {
        arrayExample.sort()
        print("Output: Sort ascending - \(arrayExample)")
    }
//Requirement - sort array in descending order
    func sortDescExample() {
        arrayExample.sort(by: >)
        print("Output: Sort descending - \(arrayExample)")
    }
//Requirement - sort array and put output in complet new array
    func sortedAscExample() {
        let sortedArray = arrayExample.sorted()
        print("Output: Sorted Ascending- \(sortedArray)")
        print("Original Array - \(arrayExample)")
    }
    
    func sortedDescExample() {
        let sortedArray = arrayExample.sorted { $0 > $1 }
        print("Output: Sorted Descending - \(sortedArray)")
    }

}
