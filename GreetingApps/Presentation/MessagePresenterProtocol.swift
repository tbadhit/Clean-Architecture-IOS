//
//  MessagePresenterProtocol.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 8. membuat protocol class yang akan menjadi penghubung antara Presenter dengan ViewController
protocol MessagePresenterProtocol {
    func getMessage(name: String) -> MessageEntity
}
