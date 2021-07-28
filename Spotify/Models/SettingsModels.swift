//
//  SettingsModels.swift
//  Spotify
//
//  Created by user on 28.07.21.
//

import Foundation

struct Section {
    let title: String
    let options: [Option]
}

struct Option {
    let title: String
    let handler: () -> Void
}
