//
//  FriendList.swift
//  Prototype
//
//  Created by Yan Tai Law on 18/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct FriendList : View {
    
    let friends:[String] = ["AnyaL","JoshC","KatyDeL", "DavidK"]
    
    var body: some View {
        NavigationView() {
            
            List {
                ForEach(eventData) { event in
                    NavigationLink(destination: UserProfile()) {
                    FriendRow(friend: event.participant[0])
                }
                }
            }
                
                .navigationBarTitle(Text("Friends"), displayMode: .inline)
            
        }
        
    }
}

struct UserProfile: View {
    var body: some View{
        Text("Profile")
    }
}

#if DEBUG
struct FriendList_Previews : PreviewProvider {
    static var previews: some View {
        FriendList()
    }
}
#endif
