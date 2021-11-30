//
//  SortingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Clyde Lartey on 16/11/2021.
//

import XCTest

class SortingTest: XCTestCase {
    
    let sorting = Sorting()
    
    
//arrange
//act
//assert
    
    
    // Test Merge sort so that all possible variations return the respective sorted integer array
    func testMergeSortWithAllPossibleVariationsAndAlwaysReturningSortedIntegerArrays() {
        
        //arrange
        let testCases = [(input: [5,4,3, 2,1, expected: [1,2,3,4,5]), (input: [1,2,3,4,5], expected: [1,2,3,4,5]), (input: [], expected: [])]
        //act
        //nothing to write in act
        
        //assert
                            
        for testCase in testCases {
            
            let actual = sorting.mergeSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }

    
    
    
    
    //Test Quick sort so that all possible variations return the respective sorted integer array
    func testQuickSortWithAllVariationsAndAlwaysReturningIntegerItem() {
            
        //arrange
        let testCases = [(input: [5,4,3,2,1], expected: [1,2,3,4,5]), (input: [1,2,3,4,5], expected: [1,2,3,4,5]), (input: [], expected: [])]
            
        //act
        //nothing to write in act
            
            
            
        //assert
        for testCase in testCases {
            
            let actual = sorting.quickSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    
    //test Bubble sort so that all possible variations return the respective sorted integer array
    func testBubbleSortWithAllPossbileVariationsAndAlwaysReturningSortedIntegerArrays() {
        
        //arrange
        let testCases = [(input: [5,4,3,2,1], expected: [1, 2, 3, 5, 9]), (input: [1,2,3,4,5], expected: [1,2,3,4,5]), (input: [], expected: [])]
            
            
        //act
        //nothing to use in act
            
            
            
        //assert
        for testCase in testCases {
            
            let actual = sorting.bubbleSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
        
        
    }

    
    
    
    //test Insertion Sort  so that all possible variations return the respective sorted integer array
    func testInsertionSortWithAllPossibleVariationsAndAlwaysReturningSortedIntegerArrays() {
        
        //arrange
        let testCases = [(input: [5,4,3,2,1], expected: [1,2,3,4,5]), (input: [1,2,3,4,5], expected: [1,2,3,4,5]),
                       (input: [], expected: [])]
        
        //act
        //nothing to write in act
            
            
        //assert
        for testCase in testCases {
            
            let actual = sorting.insertionSort(testCase.input)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    
    
    
}
