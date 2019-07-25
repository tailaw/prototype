//
//  Profile.swift
//  Prototype
//
//  Created by Yan Tai Law on 20/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct Account : View {
    var body: some View {
        NavigationView() {
            VStack {
                Text("\n")
                
                Image("girl")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(40)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                
                Text("AnyaL")
                    .font(.headline)
                
                HStack {
                    
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                        .offset(x: -3, y: 0)
                    Image(systemName: "star.fill")
                        .foregroundColor(Color.yellow)
                        .offset(x: -3, y: 0)
                }
                
                HStack {
                    VStack {
                        Text("56")
                            .color(.yellow)
                            .font(.subheadline)
                        Text("Hosted")
                            .font(.subheadline)
                    }
                    
                    VStack {
                        Text("23")
                            .color(.yellow)
                            .font(.subheadline)
                        Text("Joined")
                            .font(.subheadline)
                    }
                    
                    VStack {
                        Text("6")
                            .color(.yellow)
                            .font(.subheadline)
                        Text("Friends")
                            .font(.subheadline)
                    }
                    
                }
                
                Spacer()
                
                List {
                    Text("Account Settings")
                    Text("Manage Notifications")
                    Text("Log out")
                }
                //Spacer()
                
            }
            .navigationBarItems(leading:
                NavigationLink(destination: Text("Edit")) {
                    Image(systemName: "pencil")
                        .resizable()
                        .frame(width: 20, height: 20)
                }, trailing:
                NavigationLink(destination: Text("Setting")) {
                    Image(systemName: "gear")
                        .resizable()
                        .frame(width: 20, height: 20)
            } )
        }
        
    }
}

#if DEBUG
struct Account_Previews : PreviewProvider {
    static var previews: some View {
        Account()
    }
}
#endif
