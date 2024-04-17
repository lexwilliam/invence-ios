//
//  UserDto.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation
import FirebaseFirestoreInternal

struct UserDto: Codable {
    let uuid: String?
    let branch_uuid: String?
    let name: String?
    let image_url: String?
    let email: String?
    let created_at: Timestamp?
    
    func toDomain() -> User {
        return User(
            uuid: uuid ?? "",
            branchUUID: branch_uuid.flatMap { UUID(uuidString: $0) },
            name: name ?? "",
            imageUrl: image_url,
            email: email ?? "",
            createdAt: created_at?.dateValue() ?? Date()
        )
    }
    
    static func fromDomain(domain: User) -> UserDto {
        return UserDto(
            uuid: domain.uuid, branch_uuid: domain.branchUUID?.uuidString, name: domain.name, image_url: domain.imageUrl, email: domain.email, created_at: Timestamp(date: domain.createdAt)
        )
    }
}
