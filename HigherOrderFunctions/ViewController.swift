//
//  ViewController.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import UIKit

class ViewController: UIViewController {

    let exampleObj = Example()
    let sortExampleObj = SortExample()
    let containsAllSatisfysObj = ContainsAllSatisfy()
    let removeAllExampleObj = RemoveAllExample()
    let splitExampleObj = SplitExample()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        exampleObj.mapExample()
        exampleObj.compactMapAndFlatMapExample()
        exampleObj.filterExample()
        exampleObj.reduceExample()
        
        sortExampleObj.sortAscExample()
        sortExampleObj.sortDescExample()
        sortExampleObj.sortedAscExample()
        sortExampleObj.sortedDescExample()
        
        containsAllSatisfysObj.containsExample()
        containsAllSatisfysObj.allSatisfyExample()
        containsAllSatisfysObj.contains2Example()
        containsAllSatisfysObj.allSatisfy2Example()
        
        removeAllExampleObj.removeAllExample()
        removeAllExampleObj.removeAtExample()
        removeAllExampleObj.reverseExample()
        
        splitExampleObj.splitExample()
    }


}

