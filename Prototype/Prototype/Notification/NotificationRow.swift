//
//  NotificationRow.swift
//  Prototype
//
//  Created by Yan Tai Law on 18/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct NotificationRow : View {
    var event: Event
    var body: some View {
        HStack {
            Image(systemName: "bell")
                .foregroundColor(Color.yellow)
            
            VStack(alignment: .leading) {
                Text("Your friend posted")
                    .font(.subheadline)
                
                Text("\(event.name)")
                    .color(.gray)
            }
            .padding(5)
            
            
        }
    }
}
