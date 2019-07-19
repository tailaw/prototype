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
    @State var isSaved = true
    
    var body: some View {
    
        VStack (alignment: .leading) {
            Text("12:15")
            .color(Color(red: 247 / 255 , green: 193 / 255, blue: 12 / 255))
            
            Text(verbatim: event.name)
                .font(.headline)
                .lineLimit(2)
            
            Text(verbatim: event.description)
                .color(.gray)
                .font(.subheadline)
                .lineLimit(3)
            
            HStack {
                Image(systemName: "location")
                    .foregroundColor(Color.gray)
                Text(event.location)
                    .color(.gray)
                }
            
            HStack {
                
                 
                //ForEach(0 ..< event.participant.count) {
                Image("boy")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .cornerRadius(15)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                
                Image("girl")
                    .resizable()
                    .frame(width: 20, height: 20)
                    .cornerRadius(15)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                    .offset(x: -10, y: 0)
                 //}
                
                Text("\(event.participant.count) / \(event.numPeople) signed up")
                    .color(.gray)
                
                Spacer()
                
                //Image(systemName: "star")
                
                
                Button(action: {
                    self.isSaved.toggle()
                }) {
                    if self.isSaved {
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(Color.yellow)
                    } else {
                        Image(systemName: "bookmark")
                            .foregroundColor(Color.gray)
                    }
                }
                
            }.padding(.bottom, 5)
            
            
            
            

        }
    }
}

//event.image(forSize: 65)
//    .cornerRadius(40)
