//
//  RoomStore.swift
//  SwiftUIStart
//
//  Created by denys on 17/01/2020.
//  Copyright © 2020 denys. All rights reserved.
//

import SwiftUI
import Combine

class RoomStore : ObservableObject {
    var rooms : [Room] {
        
        willSet{
            
            objectWillChange.send()
            
        }
        
    }
    
    init(rooms : [Room] = []) {
        self.rooms = rooms
    }
    
    var didChange = PassthroughSubject<Void, Never>()
    
}
