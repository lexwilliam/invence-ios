//
//  User.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation

struct User {
    let uuid: String
    let branchUUID: UUID?
    let name: String
    let imageUrl: String?
    let email: String
    let createdAt: Date
}
