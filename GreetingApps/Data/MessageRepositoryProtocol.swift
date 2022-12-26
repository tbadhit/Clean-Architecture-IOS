//
//  MessageRepositoryProtocol.swift
//  GreetingApps
//
//  Created by Tubagus Adhitya Permana on 26/12/22.
//

// 3. Kelas ini berisi proses bisnis yang akan dipanggil dari Use Case
import Foundation

protocol MessageRepositoryProtocol {
    func getWelcomeMessage(name: String) -> MessageEntity
}
