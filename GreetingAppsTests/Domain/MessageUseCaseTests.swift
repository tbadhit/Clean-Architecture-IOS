//
//  MessageUseCaseTests.swift
//  GreetingAppsTests
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

import XCTest

@testable import GreetingApps
final class MessageUseCaseTests: XCTestCase {
    
    static var input: String = "Adhit"
    static var messageEntity = MessageEntity(
        welcomeMessage: "Hello \(input) Welcome to Clean Architecture"
    )
    
    func testGetDataFromUseCase() throws {
        // Given
        let useCase = MessageInteractorMock()
        
        // When
        let result = useCase.getMessage(name: MessageUseCaseTests.input)
        XCTAssert(useCase.verify())
        
        // Then
        XCTAssert(
            result.welcomeMessage.contains(MessageUseCaseTests.messageEntity.welcomeMessage)
        )
    }

}

extension MessageUseCaseTests {
    class MessageInteractorMock: MessageUseCase {
        var functionWasCalled = false
        
        func getMessage(name: String) -> MessageEntity {
            functionWasCalled = true
            return messageEntity
        }
        
        func verify() -> Bool {
            return functionWasCalled
        }
    }
}
