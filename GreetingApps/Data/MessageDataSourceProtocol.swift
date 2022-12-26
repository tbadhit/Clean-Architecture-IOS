//
//  MessageDataSourceProtocol.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 1. template untuk implementasi datasource
import Foundation
protocol MessageDataSourceProtocol {
    func getMessageFromSource(name: String) -> MessageEntity
}
