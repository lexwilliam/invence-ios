//
//  FirebaseUserRepository.swift
//  invence
//
//  Created by Alexander William on 09/04/24.
//

import Foundation
import FirebaseFirestore
import CodableFirebase

class FirebaseUserRepository: UserRepository {
    var firestore: Firestore
    
    init(firestore: Firestore) {
        self.firestore = firestore
    }
    
    func observeUser(uuid: String, completion: @escaping (User?) -> Void) {
        firestore.collection(FirestoreConfig.Collection.USER).document(uuid).getDocument { (documentSnapshot, error) in
                if let error = error {
                    print("Error fetching document: \(error)")
                    completion(nil)
                } else {
                    if let data = documentSnapshot?.data() {
                        let user = try! FirestoreDecoder().decode(UserDto.self, from: data)
                        completion(user.toDomain())
                    } else {
                        print("Document does not exist")
                        completion(nil)
                    }
                }
            }
    }
    
    func upsertUser(user: User, completion: @escaping (Result<Void, Error>) -> Void) {
        let data = try! FirestoreEncoder().encode(UserDto.fromDomain(domain: user))
        firestore.collection(FirestoreConfig.Collection.USER).document(user.uuid).setData(data) { error in
            if let error = error {
                print("Error upserting document: \(error)")
                completion(.failure(FirestoreError.upsertFailure))
            } else {
                print("Document successfully written!")
                completion(.success(()))
            }
        }
    }
}
