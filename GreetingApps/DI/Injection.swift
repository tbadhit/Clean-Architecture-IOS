//
//  Injection.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 10.
import Foundation

final class Injection: NSObject {
    private func provideDataSource() -> MessageDataSourceProtocol {
        return MessageDataSource()
    }
    private func provideRepository() -> MessageRepositoryProtocol {
        let messageDataSource = provideDataSource()
        return MessageRepository(dataSource: messageDataSource)
    }
    func provideUseCase() -> MessageUseCase {
        let messageRepository = provideRepository()
        return MessageInteractor(repository: messageRepository)
    }
}
