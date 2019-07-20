//
//  EventCreate.swift
//  Landmarks
//
//  Created by Yan Tai Law on 12/07/2019.
//  Copyright © 2019 Apple. All rights reserved.
//


import SwiftUI
import Combine
import CoreLocation

class NewEvent: BindableObject {
    var didChange = PassthroughSubject<Void, Never>()
    
    var title = "" { didSet { update() }}
    var description = "" { didSet { update() }}
    var location = "" { didSet { update() }}
    
    var locationCoordinate: CLLocationCoordinate2D {
        CLLocationCoordinate2D(
            latitude: 37.536898,
            longitude: -122.299190)
    }

    var timeEnds = Date()  { didSet { update() }}
    var duration = 0  { didSet { update() }}
    var numPeople = 1 { didSet { update() }}
    
    static let categories = ["Art", "Sport", "Travel", "Misc"]
    var category = 0 { didSet { update() }}
    
    var isValid: Bool {
        if title.isEmpty || description.isEmpty || location.isEmpty {
            return false
        }
        return true
    }
    
    
    func update() {
        didChange.send(())
    }
}

func createEvent() {
    
}

struct EventCreate : View {
    @ObjectBinding var newEvent = NewEvent()
    
    
    var body: some View {
        NavigationView() {
            
            VStack {
                Text("\n")
                
                Image("girl")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .cornerRadius(40)
                    .overlay(Circle().stroke(Color.gray, lineWidth: 1))
                
                Text("AnyaL, let's start a new event!")
                    .font(.headline)
                
                Text("Find people around you to do things together.")
                    .font(.subheadline)
                
                Form() {
                    
                    Section(header: Text("Tell us about the event").font(.subheadline)) {
                        TextField($newEvent.title, placeholder: Text("Event Title"))
                        TextField($newEvent.description, placeholder: Text("Description. What are we going to do?"))
                            .frame(height: 50)
                            .lineLimit(nil)
                            .multilineTextAlignment(.leading)
                        
                        
                        DatePicker($newEvent.timeEnds, displayedComponents: .hourAndMinute) {
                            Text("Events ends at")
                        }
                        
                        TextField($newEvent.location, placeholder: Text("Location. Where do we meet?"))
                        
                        MapView(coordinate: newEvent.locationCoordinate)
                            .edgesIgnoringSafeArea(.top)
                            .frame(height: 150)
                    }
                    
                    
                    
                    Section {
                        Picker(selection: $newEvent.category, label: Text("Category")) {
                            ForEach(0 ..< NewEvent.categories.count) {
                                Text(NewEvent.categories[$0]).tag($0)
                            }
                        }
                        
                        Stepper(value: $newEvent.numPeople, in: 1...50) {
                            Text("Looking for \(newEvent.numPeople) people")
                        }
                        
                    }
                }
                .navigationBarTitle(Text("New Event"), displayMode: .inline)
                    
                    
               
                .navigationBarItems(leading:
                    NavigationLink(destination: Text("Clear")) {
                        Text("Clear")
                    }, trailing:
                    NavigationLink(destination: Text("Create")) {
                        Text("Create")
                } )
                
                
                
                
                
            }
            
            
            
            
            /*
             
            //Big Create button underneath the form
            NavigationLink(destination: Created()
            ) {
                Text("Create Event")
                }
                .disabled(!newEvent.isValid)
                .background(Color(red: 90 / 255 , green: 149 / 255, blue: 184 / 255, opacity: 1))
                .cornerRadius(25)
                .foregroundColor(.white)
                .font(.headline)
                Spacer()
 */

        }
    }
}

struct Created: View {
    var body: some View{
            Text("Created")
    }
    
}


#if DEBUG
struct EventCreate_Previews : PreviewProvider {
    static var previews: some View {
        EventCreate()
    }
}
#endif

