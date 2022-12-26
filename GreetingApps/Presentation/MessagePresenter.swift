//
//  MessagePresenter.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 9. membuat Presenter yang akan mengambil data dari Use Case
class MessagePresenter: MessagePresenterProtocol {
    private let messageUseCase: MessageUseCase
    init(useCase: MessageUseCase) {
        self.messageUseCase = useCase
    }
    func getMessage(name: String) -> MessageEntity {
        return messageUseCase.getMessage(name: name)
    }
}
