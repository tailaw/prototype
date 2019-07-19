//
//  Main.swift
//  Prototype
//
//  Created by Yan Tai Law on 18/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct Main : View {
    var body: some View {
        /*
         MapView(coordinate: event.locationCoordinate)
            .edgesIgnoringSafeArea(.top)
            .frame(height: 200)
         */
        
        TabbedView {
            EventList()
                .tabItemLabel(VStack {
                    Image(systemName: "house")
                    Text("Home")
                })
                .tag(0)
            
            FriendList()
                .tabItemLabel(VStack {
                    Image(systemName: "person.and.person")
                    Text("Friends")
                })
                .tag(1)
            
            EventCreate()
                .tabItemLabel(VStack {
                    Image(systemName: "plus.rectangle")
                    Text("Create")
                })
                .tag(2)
            
            Notification()
                .tabItemLabel(VStack {
                    Image(systemName: "bell")
                    Text("Notifications")
                })
                .tag(3)
            
            Account()
                .tabItemLabel(VStack {
                    Image(systemName: "person.crop.circle")
                    Text("Account")
                })
                .tag(4)
        }
    }
}

#if DEBUG
struct Main_Previews : PreviewProvider {
    static var previews: some View {
        Main()
    }
}
#endif
