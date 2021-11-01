//
//  Friend4.swift
//  Lesson1.3Tests
//
//  Created by Владимир Рузавин on 10/28/21.
//

import Foundation
import SwiftyJSON
import RealmSwift

class FriendDataBase: Object, Codable {
    @objc dynamic var id: Int
    @objc dynamic var lastName: String
    @objc dynamic var trackCode, firstName: String
    @objc dynamic var photo100: String
    
    var fullName: String {
        firstName + lastName
    }
    
    enum CodingKeys: String, CodingKey {
        case id
        case lastName = "last_name"
        case firstName = "first_name"
        case photo100 = "photo_100"
    }
}



