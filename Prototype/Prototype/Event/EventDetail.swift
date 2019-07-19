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
                    //.offset(x: -50, y: 0)
                    //.padding(.bottom, -130)
                
                VStack(alignment: .leading) {
                    Text(verbatim: event.name)
                        .font(.title)
   
                    HStack {
                        NavigationLink(destination: FriendList()
                        ) {
                            Text("\(event.host)")
                        }
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                            .offset(x: -3, y: 0)
                        Image(systemName: "star.fill")
                            .foregroundColor(Color.yellow)
                            .offset(x: -3, y: 0)
                    }
                    
                }.padding(.leading, 10)
                
            }.offset(x: -35, y: 0)
            .padding(.bottom, 10)
            Divider()
          
            Section {
                
                HStack {
                    Image(systemName: "clock")
                        .foregroundColor(Color.gray)
                    Text("Now to 3:21pm")
                    
                    Spacer()
                    
                }.padding(.init(top:20, leading: 10, bottom: 10, trailing: 0))
            
                
                HStack {
                    Image(systemName: "location")
                        .foregroundColor(Color.gray)
                    Text("\(event.location)")
                    Spacer()
                }.padding(.init(top:10, leading: 10, bottom: 5, trailing: 0))
                
                HStack {
                    Image(systemName: "person.and.person")
                        .foregroundColor(Color.gray)
                    Text("\(event.participant.count) / \(event.numPeople) signed up")
                    Spacer()
                }.padding(.init(top:10, leading: 10, bottom: 5, trailing: 0))
                
                Divider()
                
                Text("\(event.description)")
                    .lineLimit(nil)
                    .padding(.init(top:10, leading: 5, bottom: 10, trailing: 0))
                
                Divider()
                
                
            }
            
            
            
            NavigationLink(destination: Text("Joined")
            ) {
                Text("I'll be there!")
            }
                .padding()
                .background(Color(red:121 / 255 , green: 82 / 255, blue: 179 / 255, opacity: 1))
                .cornerRadius(25)
                .foregroundColor(.white)
                .font(.headline)
            Spacer()
            
        }
            
        
    }
}



