//
//  EventRow.swift
//  Landmarks
//
//  Created by Yan Tai Law on 10/07/2019.
//  Copyright © 2019 Apple. All rights reserved.
//

import SwiftUI

struct EventRow: View {
    var event: Event
    
    var body: some View {
        HStack {
            event.image(forSize: 50)

            VStack {
                Text(verbatim: event.name)
                    .font(.headline)
                    .padding(.leading, 15)
                    .padding(.top, 5)
                
                Text(verbatim: event.description)
                    .font(.subheadline)
                    .lineLimit(0)
                
            }
            .padding()
            //Text(verbatim: event.host)
            //    .font(.subheadline)
            
            Spacer()
            
        }
    }
}
