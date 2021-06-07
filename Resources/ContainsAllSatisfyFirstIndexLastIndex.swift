//
//  ContainsAllSatisfy.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import Foundation

class ContainsAllSatisfy {
    //Example 1 -
    var names = ["Prachi", "Priya", "Sachin", "Laila", "Bhailu"]
    //Requirement - Check it out atleast 1 name starts with 'P'
    func containsExample() {
        if(names.contains{$0.hasPrefix("P")}) {
            print("There is a name which starts from 'P'")
        }
    }
    func allSatisfyExample() {
        if(names.allSatisfy{$0.first == "P"}) {
            print("All the elements of an array are starting from 'P'")
        } else {
          print("All of the elements of an array are not starting from 'P'")
        }
    }
    
    //Example 2 -
    var numbers = [2,3,90,67,78,39]
    //Requirement - check is there number in an array which is multiple of 13
    func contains2Example() {
        if(numbers.contains{$0 % 13 == 0}) {
            let fIndex = numbers.firstIndex { $0 % 13 == 0 }
            let lIndex = numbers.lastIndex { $0 % 13 == 0}
            print("There is a number which is multiple of 13 at first index - \(fIndex!) and number is - \(numbers[fIndex!]), also at last index - \(lIndex!) and number is - \(numbers[lIndex!])")
        }
    }
    
    //Requirement - check all of the numbers of an array are multiple of 13
    func allSatisfy2Example() {
        if(numbers.allSatisfy{$0 % 13 == 0}) {
           print("All numbers are multiple of 13")
        }
    }
}
