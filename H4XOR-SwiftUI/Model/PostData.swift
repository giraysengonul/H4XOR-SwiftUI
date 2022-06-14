//
//  PostData.swift
//  H4XOR-SwiftUI
//
//  Created by hakkı can şengönül on 14.06.2022.
//

import Foundation

struct Result : Codable{
    
    let hint : [Post]
}

struct Post : Codable , Identifiable{
    var id: String {
        return objectID
    }
    let objectID : String
    let points : Int
    let title : String
    let url : String?
}
