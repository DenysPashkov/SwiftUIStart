//
//  Room.swift
//  SwiftUIStart
//
//  Created by denys on 15/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import SwiftUI

struct Room : Identifiable {
    
    var id = UUID()
    var name :String
    var capacity : Int
    var hasVideo : Bool = false
    
    var imageName : String { return name }
    var thumbnailName : String { return name + "Thumb" }
    
}

let testData = [
    
    Room(name: "back", capacity: 0, hasVideo: true),
    Room(name: "card2", capacity: 20, hasVideo: false),
    Room(name: "card3", capacity: 40, hasVideo: true),
    Room(name: "card4", capacity: 60, hasVideo: true),
    Room(name: "card5", capacity: 80, hasVideo: false),
    Room(name: "card6", capacity: 100, hasVideo: true),
    Room(name: "card7", capacity: 120, hasVideo: true),
    Room(name: "card8", capacity: 140, hasVideo: false),
    Room(name: "card9", capacity: 160, hasVideo: true)
    
]
