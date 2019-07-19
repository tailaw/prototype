//
//  FriendRow.swift
//  Prototype
//
//  Created by Yan Tai Law on 19/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct FriendRow : View {
    var friend: String
    
    var body: some View {
        HStack {
            Image("boy2")
                .resizable()
                .frame(width: 35, height: 35)
                //.cornerRadius(15)
                .overlay(Circle().stroke(Color.gray, lineWidth: 1))
            
            Text("\(friend)")
                .font(.headline)
                .padding(.leading, 10)
            
        }
    }
}
