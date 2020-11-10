//
//  DescriptionsImages.swift
//  AppleMusic
//
//  Created by Rusell on 08.11.2020.
//

import Foundation

struct Descriptions {
    enum Message {
        //MARK: - HttpService
        static let noInternetConnection = "No internet connection!"
        static let serverEror = "Server error!"
        static let someServerError = "Some server error!"
        static let reqestError = "Reqest error"
        static let sharePhoto = "Share photo"
    }

    enum Navigation {
        static let titleSearch = "Search"
        static let titleLibrary = "Library"
    }
    
    enum Action {
        static let Cancel = "Cancel"
        static let Share = "Share"
    }
    
    enum Images {
        static let library = "Library"
        static let search = "Search"
    }
    
    
}
