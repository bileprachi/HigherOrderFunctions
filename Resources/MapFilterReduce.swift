//
//  MapFilterExample.swift
//  HigherOrderFunctions
//
//  Created by Prachi Bile on 07/06/21.
//

import Foundation

class Device {
    var deviceName: String
    var devicePrice: Float
    var deviceDescription: [String]?
    
    init(name: String, price: Float, description: [String]?) {
        deviceName = name
        devicePrice = price
        deviceDescription = description
    }
}

//MARK: - Example

class Example {
     var deviceObj1 = Device(name: "iPhone", price: 200.56, description: ["Extremely Portable Device","Light-weight","E-book reader"])
     var deviceObj2 = Device(name: "iPhone", price: 455.56, description: ["Portable","Smart Phones","Bluetooth"])
     var deviceObj3 = Device(name: "Macbook", price: 4000.00, description: ["Portable"])
     var deviceObj4 = Device(name: "Wacom", price: 1330.67, description: ["Portable","Light-Weight"])
    var deviceObj5 = Device(name: "iPhone", price: 1500, description: [])
    
    
//Requirement - Convert Device Price which is in USD now into INR
    func mapExample() {
        let arrayExample = [deviceObj1, deviceObj2, deviceObj3, deviceObj4, deviceObj5]
        //Way 1 : For Loop
        let arrayPrice = [deviceObj1.devicePrice, deviceObj2.devicePrice, deviceObj3.devicePrice, deviceObj4.devicePrice, deviceObj5.devicePrice]
        var arrayNew: [Float] = []
        for i in arrayPrice {
            arrayNew.append(i*70)
        }
        print("Output: Simple array multiplication - \(arrayNew)")

        //Way 2 : Map
        let mapArray = arrayExample.map { price in
            price.devicePrice * 70
        }
        print("Output: Map - \(mapArray)")
        
        //Shortahand operator -
        let mapArrayShorthand = arrayExample.map { $0.devicePrice*70 }
        
        print("Output: Map shrthand operator - \(mapArrayShorthand)")
    }
    
//Requirement - Get the description of all the devices
    func compactMapAndFlatMapExample() {
//        Way 1: To get all descriptions --> Optional unwrapping has to do here compulsory
        let newDescription = deviceObj1.deviceDescription! + deviceObj2.deviceDescription! + deviceObj3.deviceDescription! + deviceObj4.deviceDescription! + deviceObj5.deviceDescription!
        print("Output: Adding all descriptions manually without Map - \(newDescription)")
        
        //Way 2: Use compactMap
        let arrayExample = [deviceObj1, deviceObj2, deviceObj3, deviceObj4, deviceObj5]
        
        let compactArray = arrayExample.compactMap { desc in
            desc.deviceDescription
        }
        print("Output: CompactMap - \(compactArray)")
        
        //Shorthand operator
        let compactArrayShorthand = arrayExample.compactMap { $0.deviceDescription }
        print("Output: CompactMap Shorthand operator - \(compactArrayShorthand)")
        
        //FlatMap - converts 2D to 1D array
        let flatMapArray = compactArrayShorthand.flatMap { $0 }
        print("Output: Flatmap - \(flatMapArray)")
    }
    
//Requirement - check it out how many iPhone devices are there
    func filterExample() {
        let arrayExample = [deviceObj1, deviceObj2, deviceObj3, deviceObj4, deviceObj5]
//        let filteredArray = arrayExample.filter { devName in
//            devName.deviceName == "iPhone"
//        }
        let filteredArray = arrayExample.filter { $0.deviceName == "iPhone" }
        print("Output: Filter - \(filteredArray.count)")
    }

//Requirement - Provide total price of all the devices
    func reduceExample() {
        let priceArray: [Float] = [deviceObj1.devicePrice, deviceObj2.devicePrice, deviceObj3.devicePrice, deviceObj4.devicePrice, deviceObj5.devicePrice]
        let priceTotal = priceArray.reduce(0.0, +)
        print("Output: Reduce - \(priceTotal)")
    }


}


