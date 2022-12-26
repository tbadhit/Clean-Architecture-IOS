//
//  MessageDataSource.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 2. implementasi datasource yang merupakan sumber data message yang akan didapat
import Foundation

class MessageDataSource: MessageDataSourceProtocol {
    func getMessageFromSource(name: String) -> MessageEntity {
        return MessageEntity(
            welcomeMessage: "Hello \(name) Welcome to Clean Architecture"
        )
    }
}
