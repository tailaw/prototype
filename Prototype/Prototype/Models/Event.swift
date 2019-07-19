//
//  Event.swift
//  Landmarks
//
//  Created by Yan Tai Law on 09/07/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Event: Hashable, Codable, Identifiable {
    var id: Int
    var name: String
    var host: String
    //host is a String type for now. Need to change it to User class
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    var location: String
    var description: String
    var numPeople: Int
    
    var participant: [String]
    //participant is a single user for simplicity sake
    //var createTime: Date
    //var endTime: Date
    
    //var category: Category
    //var isCompleted: Bool
    
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: coordinates.latitude,
            longitude: coordinates.longitude)
    }
    
    func image(forSize size: Int) -> Image {
        ImageStore.shared.image(name: imageName, size: size)
    }
    
    enum Category: String, CaseIterable, Codable, Hashable {
        case art = "Art"
        case sport = "Sport"
        case travel = "Travel"
        case misc = "Misc"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}

