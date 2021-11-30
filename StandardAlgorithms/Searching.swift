//
//  Searching.swift
//  StandardAlgorithms
//
//  Created by Clyde Lartey on 30/11/2021.
//

import Foundation

class Searching {
    
    
    
    
    
    
    
    
    
    //Starting at the beginning of the data set, each item of data is examined until a match is made. Once the item is found, the search ends. If there is no match, the algorithm must deal with this.
    func linearSearch(_ input: [Int], desiredNumber: Int) -> Bool {
        
      var isFound = false
        
      var ListLinearNumbers = input
        if input.count == 0 {
            
            linearList = []
            isFound = false
            
            
        } else {
            
            let ListLinearNumbers = desiredNumber
            
            for i in 0...ListLinearNumbers.count - 1 {
                
            if linearNumber == ListLinearNumbers[i] {
                
              isFound = true
              break
            }
          }
          if isFound != true {
            print("Number is not in the list")
          }

        }
        return isFound
    }
    
    
    
    
    
    
    //repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one.
    func binarySearch(_ input: [Int], desiredNumber: Int) -> Bool {
        
        var binaryList = input
        var isBinaryFound = false
        if input.count == 0 {
            
            
            
            
            
            
            binaryList = []
            isBinaryFound = false
            
            
            
        } else {
            //upper and lower bounds are the highest and lowest representative in the lists
            var lowerBound = 0
            var upperBound = binaryList.count
            
            
              let binaryNumber = desiredNumber
            while lowerBound < upperBound {
                //let midpoint1 = upperBound-lowerBound
                //let midpoint2 = lowerBound + midpoint1
                //let midpoint = (midpoint2) / 2
              let midpoint = lowerBound + (upperBound - lowerBound) / 2
                
              if binaryList[midpoint] == binaryNumber {
                
                isBinaryFound = true
                print(midpoint)
                break
                  
                  
              } else if binaryList[midpoint] < binaryNumber {
                  
                lowerBound = midpoint + 1
                  
                  
              } else {
                  
                upperBound = midpoint
              }
            }
        }
    return isBinaryFound
    }
}
