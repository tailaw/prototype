//
//  User.swift
//  Landmarks
//
//  Created by Yan Tai Law on 09/07/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct User : Hashable, Codable, Identifiable {
    var id: String
    var name: String
    var email: String
    fileprivate var imageName: String
    var joinedDate: Date
    var score: Float
    
    
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageName, size: size)
    }
    
}
