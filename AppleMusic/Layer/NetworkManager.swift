//
//  NetworkManager.swift
//  AppleMusic
//
//  Created by Rusell on 11.11.2020.
//

import UIKit
import Alamofire



enum QueueQos {
    case background
    case defaultQos
}

protocol CustomErrorProtocol: Error {
    var localizedDescription: String { get }
    var code: Int { get }
}

struct CustomError: CustomErrorProtocol {
    
    var localizedDescription: String
    var code: Int
    
    init(localizedDescription: String, code: Int) {
        self.localizedDescription = localizedDescription
        self.code = code
    }
}

class NetworkManager {
    
    typealias resp = (_ swiftObj: Any?, _ error: Error?) -> Void
    
    func checkInternetConnect() -> Bool {
        return InternetService.shared.checkInternetConnect()
    }
    
    func internetConnectErr() -> CustomError {
        return CustomError(localizedDescription: Descriptions.Message.noInternetConnection,
                           code: 402)
    }
    
    func fetchTracks(searchText: String, complition: @escaping(SearchResponse?) -> Void) {
        let url = "https://itunes.apple.com/search?term=\(searchText)"
        let parameters = ["term":"\(searchText)",
                          "limit":"10",
                          "media":"music"
        ]
        
        AF.request(url,
                   method: .get,
                   parameters: parameters,
                   encoding: URLEncoding.default,
                   headers: nil).responseData { (dataresponse) in
            
            if let error = dataresponse.error {
                print("Error: \(error.localizedDescription)")
                complition(nil)
                return
            }
            
            guard let data = dataresponse.data else { return }
            
            let decoder = JSONDecoder()
            do {
                let objects = try decoder.decode(SearchResponse.self, from: data)
                print("objects: \(objects)")
                complition(objects)
            } catch let jsonError {
                print("Failed to decode JSON", jsonError)
                complition(nil)
            }
            
        }
    }
}
