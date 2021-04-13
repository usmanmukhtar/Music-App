//
//  Songs.swift
//  Music App
//
//  Created by mstudent on 13/04/2021.
//

import SwiftUI

struct Songs: Identifiable {
    var id = UUID()
    var name: String
    var artist: String
    var time: String
}

var songs = [
    Songs(name: "Before You Go", artist: "Lewis Capaldi", time: "3:35"),
    Songs(name: "I Just", artist: "Red Velvet", time: "3:08"),
    Songs(name: "Wanitaku", artist: "Noah Band", time: "5:18"),
    Songs(name: "Before You Go", artist: "Lewis Capaldi", time: "3:35"),
    Songs(name: "I Just", artist: "Red Velvet", time: "3:08"),
    Songs(name: "Wanitaku", artist: "Noah Band", time: "5:18")
    
]
