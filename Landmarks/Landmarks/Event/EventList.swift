/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI

struct EventList: View {
    //@EnvironmentObject private var userData: UserData

    var body: some View {
        NavigationView() {
            List(eventData) { event in
                NavigationButton(destination: EventDetail(event:event)) {
                    EventRow(event: event)
                }
                
            }
            .navigationBarTitle(Text("Events"), displayMode: .large)
            .navigationBarItems(trailing:
                    PresentationButton(destination: Text("Create Event")) {
                        Image(systemName: "plus.circle")
                            .imageScale(.large)
                            .accessibility(label: Text("Create Event"))
                            .padding()
                }
            )
        }
    }
        
        
        
        
        /*
 
        List {
            
            Text("Show Favorites Only")

            
            eventData.ForEach { event in
                NavigationButton(destination: EventDetail(event: event)) {
                        EventRow(event: event)
                    }
                
                }
            
        }
        .navigationBarTitle(Text("Events"), displayMode: .large)
    }
 */
}
