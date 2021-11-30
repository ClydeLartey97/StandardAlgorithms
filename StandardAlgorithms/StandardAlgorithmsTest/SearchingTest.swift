//
//  SearchingTest.swift
//  StandardAlgorithmsTest
//
//  Created by Clyde Lartey on 30/11/2021.
//

import XCTest
import Foundation

class SearchingTest: XCTestCase {
    
    
    let searching = Searching()
    
    
    
    
    //Test Binary Search so that all possible variations return the respective sorted integer array
    func TestBinarySearchWithAllPossibleVariationsAndAlwaysReturningIntegerItems() {
        
        //arrange
        let testCases = [(input: [5,4,3,2,1], lookingFor: 1, expected: true), (input: [1,2,3,4,5], lookingFor: 1, expected: true), (input: [], lookingFor: 7, expected: false)]
        //act
        //nothing to write in act
        
        //assert
        for testCase in testCases {
            
            let actual = searching.binarySearch(testCase.input, lookingFor: testCase.lookingFor)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    
    //Test Linear Search  so that all possible variations return the respective sorted integer array
    func TestLinearSearchWithAllPossibleVariationsAndAlwaysReturningIntegerItems() {
        
        //arrange
        let testCases = [(input: [5,4,3,2,1], lookingFor: 1, expected: true), (input: [1,2,3,4,5], lookingFor: 1, expected: true), (input: [], lookingFor: 7, expected: false)]
        
        
        
        //act
        //nothing to write in act
        
        //assert
        for testCase in testCases {
            
            let actual = searching.linearSearch(testCase.input, lookingFor: testCase.lookingFor)
            XCTAssertEqual(actual, testCase.expected)
        }
    }
    

    

}
