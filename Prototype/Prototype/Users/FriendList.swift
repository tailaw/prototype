//
//  FriendList.swift
//  Prototype
//
//  Created by Yan Tai Law on 18/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct FriendList : View {
    
    var event: Event = eventData[0]
    let friends:[String] = ["AnyaL","JoshC","KatyDeL", "DavidK"]
    
    var body: some View {
        
        /*VStack {
            MapView(coordinate: event.locationCoordinate)
                //.edgesIgnoringSafeArea(.top)
                .frame(height: 250)
            .padding(.bottom, 100)
            ScrollView(.horizontal, showsIndicators: false) {
                
                HStack {
                    //ForEach((1...3).reversed()) {_ in
                        //Text("This is view number")
                    Group{
                        List(eventData) { event in
                            NavigationLink(destination: EventDetail(event:event)) {
                                EventRow(event: event)
                            }
                            
                        }
                    }
                    Group {
                        List(eventData) { event in
                            NavigationLink(destination: EventDetail(event:event)) {
                                EventRow(event: event)
                            }
                            
                        }
                    }
                
                    //}
                }
                
            //}
            Spacer()
        }
        }*/
        
        
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
