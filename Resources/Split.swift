//
//  Split.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import Foundation

class SplitExample {
    var name = "Prachi is my name"
    
    func splitExample() {
        let splitResult = name.split(maxSplits: 1, omittingEmptySubsequences: true, whereSeparator: { $0 == " " })
        print("Split - \(splitResult)")
    }
}

//o/p -> Split - ["Prachi", "is my name"]

