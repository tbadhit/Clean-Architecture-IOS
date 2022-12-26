//
//  MessageInteractor.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 7. membuat Class untuk Use Case
class MessageInteractor: MessageUseCase {
    // mengapa tidak menggunakan concret class (MessageRepository) malah menggunakan MessageRepositoryProtocol ?
    // karena kita ingin mengikuti dependency rule pada Clean Architecture, yakni Domain Layer tidak bergantung pada Data Layer
    // Jika langsung memanggil MessageRepository, class MessageInteractor akan tergantung pada implementasi MessageRepository.
    private let messageRepository: MessageRepositoryProtocol
    init(repository: MessageRepositoryProtocol) {
        self.messageRepository = repository
    }
    func getMessage(name: String) -> MessageEntity {
        return messageRepository.getWelcomeMessage(name: name)
    }
}
