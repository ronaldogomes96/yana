//
//  DataManagerTests.swift
//  YanaTests
//
//  Created by Ronaldo Gomes on 10/07/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import XCTest

@testable import Yana

class DataManagerTests: XCTestCase {
    
    func test_getCommunities_numberOfCommunities_fourCommunities(){
        
        //Given
        let sut = DataManager()
        
        //When
        let communities = sut.getCommunities()
        let numbersOfCommunities = communities.count
        
        //Then
        XCTAssertEqual(numbersOfCommunities, 4)
    }
    
    func test_getLastActivitiesCommunity_numbersOfPosts_equalsThree(){
        
        //Given
        let sut = DataManager()
        
        //When
        let activities = sut.getLastActivitiesCommunity(identifier: 1)
        let numbersOfActivities = activities.count
         
        //Then
        XCTAssertEqual(numbersOfActivities, 3)
    }
    
    func test_getAllActivitiesCommunity_packageIsNotEmpty_equalsFalse(){
        
        //Given
        let sut = DataManager()
        
        //When
        let allActivities = sut.getAllActivitiesCommunity(identifier: 1)
        
        //Then
        XCTAssertFalse(allActivities.isEmpty)
    }
    
    func test_getAuthorOfPost_userExists_isNotNil(){
        
        //Given
        let sut = DataManager()
        
        //When
        let person = sut.getAuthorOfPost(userIdentifier: 1)
        
        //Then
        XCTAssertNotNil(person)
    
    }
    
    
}
