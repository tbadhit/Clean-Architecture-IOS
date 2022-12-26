//
//  MessageRepository.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 4. Kelas ini akan mengatur datasource yang akan diberikan kepada Use Case
import Foundation

class MessageRepository: MessageRepositoryProtocol {
    private let messageDataSource: MessageDataSourceProtocol
    init(dataSource: MessageDataSourceProtocol) {
        self.messageDataSource = dataSource
    }
    func getWelcomeMessage(name: String) -> MessageEntity {
        messageDataSource.getMessageFromSource(name: name)
    }
}
