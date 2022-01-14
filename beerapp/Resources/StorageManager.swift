//
//  StorageManager.swift
//  beerapp
//
//  Created by Charles d'Ansembourg on 10/09/2021.
//

//import FirebaseStorage

public class StorageManager {
    
    static let shared = StorageManager()
    
    private let bucket = Storage.storage().reference()
    
    public enum StorageManagerError: Error {
        case failedToDownload
    }
    
    // PUBLIC
    
    public func uploadUserPost(model: UserPost, completion: @escaping (Result<URL, Error>) -> Void) {
        
    }
    
    public func downloadImage(width refrence: String, completion: @escaping (Result<URL, Error>) -> Void) {
        bucket.child(refrence).downloadURL(completion: { url, error in
            guard let url = url, error == nil else {
                //completion(.failure(.failedToDownload)) //MUST FIX EP.6 14:40
                return
            }
            
            completion(.success(url))
        })
    }
}
