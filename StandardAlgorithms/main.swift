//
//  main.swift
//  StandardAlgorithms
//
//  Created by Clyde Lartey on 30/11/2021.
//

import Foundation

let algorithmsInformation = [["Bubble Sort", "Time Complexity: )(n^2)", "nstead of searching an array as a whole, the bubble sort works by comparing adjacent pairs of objects in the array. If the objects are not in the correct ordered, they are swapped so that the largest of the two moves up. ... The swapping continues until the whole array is in the correct order."], ["Merge Sort", "Time Complexity: (O(n^2)", "The array is virtually split into a sorted and an unsorted part. Values from the unsorted part are picked and placed at the correct position in the sorted part."]["Linear Search", "Time Complexity: O(n)", "Compares each element of the array with the desired element until it finds the number that we are looking for or the array has no more lements"]["Binary Search", "Time Complexity: O(log(n))", " It works by repeatedly dividing in half the portion of the list that could contain the item, until you've narrowed down the possible locations to just one."]]



var end = false


while end != false {
    print("""

1) Bubble Sort
2) Merge Sort
3) Insertion Sort
4) Linear Search
5) Binary Search
6) Exit


""")
    
    
    
    if let input = readLine() {
        switch input {
            case "1":
                for information in algorithmsInformation[0] {
                    print(information)
                
                }
                
                
            case "2":
                for information in algorithmsInformation[1] {
                        print(information)
                        

                }
            
            
            case "3":
            for information in algorithmsInformation[2] {
                print(information)
                }
            
                
            case "4":
                for information in algorithmsInformation[3] {
                    print(information)
                }
            
                
            case "5":
                for information in algorithmsInformation[4] {
                    print(information)
                }
                
             
            case "6":
                end = true
            default:
                print("Not an option")
        }
    
    }
}
