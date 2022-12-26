//
//  MessageUseCase.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 6. membuat protocol yang akan menjadi basis dari semua Use Case
protocol MessageUseCase {
    func getMessage(name: String) -> MessageEntity
}
