//
//  CompanyMapper.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

struct CompanyMapper {
    static func toDomain(from data: CompanyDto) -> Company {
        return Company(
            uuid: data.uuid ?? "",
            name: data.name ?? "",
            logoUrl: data.logoUrl,
            branches: data.branches?.map { branch in
                CompanyBranchMapper.toDomain(from: branch) } ?? [],
            createdAt: data.createdAt ?? Date()
        )
    }
}

struct CompanyBranchMapper {
    static func toDomain(from data: CompanyBranchDto) -> CompanyBranch {
        return CompanyBranch(
            uuid: data.uuid ?? "",
            name: data.name ?? ""
        )
    }
}
