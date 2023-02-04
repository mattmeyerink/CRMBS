//
//  LocationTypeSettings.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 2/4/23.
//

import Foundation
import SwiftUI

var locationTypeIconNames = [
    LocationType.FOOD : "fork.knife",
    LocationType.NATURE : "leaf.fill",
    LocationType.SHOPPING : "bag.fill",
    LocationType.ENTERTAINMENT : "popcorn.fill",
    LocationType.LANDMARK : "building.columns.fill"
]

var locationTypeColors = [
    LocationType.FOOD : Color.orange,
    LocationType.NATURE : Color.mint,
    LocationType.SHOPPING : Color.cyan,
    LocationType.ENTERTAINMENT : Color.red,
    LocationType.LANDMARK : Color.yellow
]
