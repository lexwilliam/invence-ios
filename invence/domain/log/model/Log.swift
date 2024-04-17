//
//  Log.swift
//  invence
//
//  Created by Alexander William on 15/04/24.
//

import Foundation

struct Log {
    let uuid: UUID
    let branchUUID: UUID
    let restock: LogRestock?
    let sell: LogSell?
    let update: LogUpdate?
    let add: LogAdd?
    let delete: LogDelete?
    let createdAt: Date
    let deletedAt: Date
}
