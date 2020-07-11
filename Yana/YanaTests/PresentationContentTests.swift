//
//  PresentationContentTests.swift
//  YanaTests
//
//  Created by Ronaldo Gomes on 10/07/20.
//  Copyright © 2020 Pedro Sousa. All rights reserved.
//

import XCTest

@testable import Yana

class PresentationContentTests: XCTestCase {

    func test_PresentationContent_titlePage_phrase(){
        
        //Given
        let sut = PresentationContent()
        
        //When
        let content = sut.getContent(index: 1)
        
        //The
        XCTAssertEqual(content.title, "Seja super")
    }
}
