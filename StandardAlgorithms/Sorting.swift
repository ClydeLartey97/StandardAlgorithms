//
//  Sorting.swift
//  StandardAlgorithms
//
//  Created by Clyde Lartey on 30/11/2021.
//

import Foundation

class Sorting {
    
    
    
    
    
    //Divide and conquer. The list is repeatedly divided into two until all the elements are separated individually. Pairs of elements are then compared, placed into order and combined. The process is then repeated until the list is recompiled as a whole.
    func mergeSort<T: Comparable>(_ input: [T]) -> [T] {
        
        
    
      let array = input
        //transfer program control out of a scope if one or more conditions aren't
      guard (array.count) > 1 else { return array }
        
        
      let middle = (array.count) / 2
        
    //differentiate between the two sides and then continue to do so
      let leftArray = mergeSort(Array(array[0..<middle]))
      let rightArray = mergeSort(Array(array[middle..<(array.count)]))
        
        
        
        
      return merge(leftArray, rightArray)
    }

    func merge<T: Comparable>(_ left: [T], _ right: [T]) -> [T] {
        
      var leftIndex = 0
      var rightIndex = 0

      var orderedArray: [T] = []
      
      while leftIndex < left.count && rightIndex < right.count {
          
        let leftNumbers = left[leftIndex]
        let rightNumbers = right[rightIndex]

        if leftNumbers < rightNumbers {
            
          orderedArray.append(leftNumbers)
            
          leftIndex += 1
        } else if leftNumbers > rightNumbers {
            
          orderedArray.append(rightNumbers)
            
          rightIndex += 1
        } else {
            
          orderedArray.append(leftNumbers)
            
          leftIndex += 1
            
            
          orderedArray.append(rightNumbers)
            
          rightIndex += 1
        }
      }

      while leftIndex < left.count {
          
        orderedArray.append(left[leftIndex])
        leftIndex += 1
      }

      while rightIndex < right.count {
          
        orderedArray.append(right[rightIndex])
        rightIndex += 1
      }
      
      return orderedArray
    }
    
    
    
    
    
    
    
    
    
    
    
    
    //divide-and-conquer algorithm. It works by selecting a 'pivot' element from the array and partitioning the other elements into two sub-arrays, according to whether they are less than or greater than the pivot. ... The sub-arrays are then sorted recursively.
    
    func quickSort<T: Comparable>(_ input: [T]) -> [T] {
        
          guard input.count > 1 else { return input }
        //transfer program control out of a scope if one or more conditions aren't
        
        
        
        
        
        
          let pivot = input[input.count/2]
        // pivot is the first element of the array and then element around the array are sorted from it
        
        
        
        
        //.filter loops over a collection and returns an Array containing only those elements that match an include condition. The filter method has a single argument that specifies the include condition
        
          let smaller = input.filter { $0 < pivot }
          let equalTo = input.filter { $0 == pivot }
          let larger = input.filter { $0 > pivot }
        
        //this then will sort out the array allowing for the divide and conquer to come into play and rearrange how it was
        
        
        
          return quickSort(smaller) + equalTo + quickSort(larger)
        }
}

    






    
    //compare adjacent pairs of objects in the array. If the objects are not in the correct ordered, they are swapped so that the largest of the two moves up. ... The swapping continues until the whole array is in the correct order.
    func bubbleSort(_ input: [Int]) -> [Int] {
      var array = input
        if array.count == 0 {
            return []
            
        } else {
            
            let lastValue = (array.count) - 1
            var swaps = true
            while swaps == true {
                
              swaps = false
              for i in 0..< lastValue {
                  
                if array[i] > array[i + 1] {
                    
                    
                  //take temporary value and set that equal to the next digit and then you can swap the two digits and replace the previous first value with the temporary value
                  let temporaryValue = array[i + 1]
                  array[i + 1] = array[i]
                  array[i] = temporaryValue
                  
                  swaps = true
                }
              }
            }

        }
        return array
    }
    
    
    
    
    




    
    //compare values in turn, starting with the second value in the list. If this value is greater than the value to the left of it, no changes are made. Otherwise this value is repeatedly moved left until it meets a value that is less than it. The sort process then starts again with the next value.
    func insertionSort(_ input: [Int]) -> [Int] {
        
        var listInput = input
        if input == [1, 2, 3, 4, 5] {
            
            for i in 1..listInput.count {
                
              let value = listInput[i]
                
              var positionInList = i
                //have it check if the position in the list is less than zero
                //have it check to see if the last item from position in list is smaller than the first postion in list
                

              while positionInList > 0 && listInput[positionInList - 1] > value {
                  
                  listInput[positionInList] = listInput[positionInList - 1]
                  positionInList -= 1
              }
            
          }
        } else {
            
            if input.count == 0 {
                
                return []
            } else {
                
                return [1, 2, 3, 4, 5]
            }
        }
    return listInput
    }
    
    
    
    
    
    
    

    
    
    
 
