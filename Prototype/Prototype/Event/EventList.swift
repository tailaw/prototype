/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing a list of landmarks.
 */

import SwiftUI
import Combine

class Dummy: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var searchBox = "" { didSet { update() }}
    
    func update() {
        didChange.send(())
    }
}

struct EventList: View {
    //@EnvironmentObject private var userData: UserData
    @ObjectBinding var dummy = Dummy()
    
    var event: Event = eventData[0]
    
    var body: some View {
       
        NavigationView() {
            
            VStack {
                HStack {
                    Image(systemName: "magnifyingglass")
                        .padding(.leading, 10)
                    TextField($dummy.searchBox, placeholder: Text("Search"))
                        .padding(.vertical, 4)
                        .padding(.trailing, 10)
                }
                .border(Color.gray, width: 1, cornerRadius: 8)
                
                MapView(coordinate: event.locationCoordinate)
                    //.edgesIgnoringSafeArea(.top)
                    .frame(height: 250)
                
                HStack {
                    Text("All")
                    .color(.blue)
                    .underline()
                    .padding(.init(top:20, leading: 10, bottom: 10, trailing: 0))
                    
                    Text("Going")
                    .color(.blue)
                    .padding(.init(top:20, leading: 10, bottom: 10, trailing: 0))
                    Text("Saved")
                    .color(.blue)
                    .padding(.init(top:20, leading: 10, bottom: 10, trailing: 0))
                    Text("Past")
                    .color(.blue)
                    .padding(.init(top:20, leading: 10, bottom: 10, trailing: 0))
                    Spacer()
                    
                    
                }
                
                List(eventData) { event in
                    NavigationLink(destination: EventDetail(event:event)) {
                        EventRow(event: event)
                    }
                    
                }
                .navigationBarTitle(Text("Events"), displayMode: .inline)
                
            }
            
                /*
 
            .navigationBarItems(trailing:
                PresentationLink(destination: Text("Create Event")) {
                        Image(systemName: "plus.circle")
                            .imageScale(.large)
                            .accessibility(label: Text("Create Event"))
                            .padding()
                }
            )
 */
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
