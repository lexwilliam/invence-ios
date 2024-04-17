//
//  FirestoreConfig.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation

struct FirestoreConfig {
    struct Collection {
        static let BRANCH = "branch"
        static let PRODUCT_CATEGORY = "product_category"
        static let TRANSACTION = "transaction"
        static let USER = "user"
        static let COMPANY = "company"
        static let LOG = "log"
        static let EMPLOYEE_SHIFT = "employee_shift"
    }

    struct Field {
        static let BRANCH_UUID = "branch_uuid"
        static let DELETED_AT = "deleted_at"
    }
}
