//
//  ConfigModels.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 18/12/24.
//

import Foundation



import Foundation

struct ConfigSection {
    let title: String
    let items: [ConfigItem]
}

struct ConfigItem {
    let title: String
    let segueIdentifier: String
}
