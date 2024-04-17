//
//  BranchRepository.swift
//  invence
//
//  Created by Alexander William on 17/04/24.
//

import Foundation
import FirebaseFirestore
import CodableFirebase

class FirebaseBranchRepository: BranchRepository {
    
    var firestore: Firestore
    
    init(firestore: Firestore) {
        self.firestore = firestore
    }
    
    func observeCompany(companyUUID: String, completion: @escaping (Company?) -> Void) {
        firestore.collection(FirestoreConfig.Collection.COMPANY)
            .document(companyUUID).getDocument { (documentSnapshot, error) in
                if let error = error {
                    print("Error fetching document: \(error)")
                    completion(nil)
                } else {
                    if let data = documentSnapshot?.data() {
                        let company = try! FirestoreDecoder().decode(CompanyDto.self, from: data)
                        completion(company.toDomain())
                    } else {
                        completion(nil)
                    }
                }
            }
    }
}
