/*
 See LICENSE folder for this sample’s licensing information.
 
 Abstract:
 A view showing the details for a landmark.
 */

import SwiftUI

struct EventDetail: View {
    var event: Event = eventData[0]
    
    var body: some View {
        VStack {
            MapView(coordinate: event.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 200)
            
            HStack {
                CircleImage(image: event.image(forSize: 100))
                    //.offset(x: -80, y: 0)
                    //.padding(.bottom, -130)
                Text(verbatim: event.name)
                    .font(.title)
                
            }
            
            
            VStack(alignment: .leading) {
         
                Text("Description:")
                
                Text(verbatim: event.description)
                //Text("")

                Text("Host: \(event.host)")
                //Text("")
                Text("Location: \(event.location)")
                //Text("")
                Text("Looking for \(event.numPeople) person(s)")
                //Text("")
                Text("\(event.participant.count) person(s) have signed up")
                //Text("")
                
                

                }
                .padding()
            NavigationButton(destination: Text("Join")) {
                Text("Join")
            }
            Spacer()
        }
    }
}
