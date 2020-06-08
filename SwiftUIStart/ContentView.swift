//
//  ContentView.swift
//  SwiftUIStart
//
//  Created by denys on 10/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import SwiftUI

struct ContentView: View {

    @ObservedObject var store = RoomStore()
    
    var body : some View {
        
        NavigationView{
            List{
                
                Section{
                    
                    Button(action: addRoom) {
                    Text("Add Room")
                    }
                    
                }
                Section{
                    ForEach(store.rooms) { room in
                        RoomCell(room: room)
                    }
                        .onDelete(perform: delete)
                        .onMove(perform: move)
                }
            }
            .navigationBarItems(trailing: EditButton())
            .navigationBarTitle(Text("Rooms"))
            .listStyle(GroupedListStyle())
        }
    }
    
    func addRoom(){
        
        store.rooms.append(testData[store.rooms.count])
        
    }
    
    func delete(at offSets : IndexSet) {
        
        store.rooms.remove(atOffsets: offSets)
        
    }
    
    func move(from source: IndexSet, to destination : Int){
        
        store.rooms.move(fromOffsets: source, toOffset: destination)
        
    }
    
}

struct RoomCell : View {
    
    let room : Room
    
    var body : some View {
        
        return NavigationLink(destination: RoomDetail(room: room)){
            Image("peppe")
            VStack {
                Text(room.name)
                    .multilineTextAlignment(.leading)
                Text("\(room.capacity) point")
                    .foregroundColor(.secondary)
                    .multilineTextAlignment(.leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(store: RoomStore(rooms: [testData[0]]))
    }
}
