//
//  Notification.swift
//  Prototype
//
//  Created by Yan Tai Law on 18/07/2019.
//  Copyright © 2019 Yan Tai Law. All rights reserved.
//

import SwiftUI

struct Notification : View {
    var body: some View {
        NavigationView() {
            
            List(eventData) { event in
                NavigationLink(destination: EventDetail(event:event)) {
                    NotificationRow(event: event)
                }
            }

         .navigationBarTitle(Text("Notifications"), displayMode: .inline)
            
        }
        
    }
}



#if DEBUG
struct Notification_Previews : PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
#endif
