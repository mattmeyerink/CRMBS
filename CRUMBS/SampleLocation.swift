//
//  TestCoordinates.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 1/31/23.
//

import Foundation

// Ann Arbor Location Coordinates
let THE_DIAG_COORDINATES = Coordinates(latitude: 42.276978876564385, longitude: -83.73821579331586)
let THE_ARB_COORDINATES = Coordinates(latitude: 42.28166373118232, longitude: -83.72559214998219)
let PINBALL_PETES_COORDINATES = Coordinates(latitude: 42.27509630649714, longitude: -83.73383440732366)
let DOMINOS_PIZZA_COORDINATES = Coordinates(latitude: 42.2705221599933, longitude: -83.7403595278284)
let THE_DEWEY_HOME_COORDINATES = Coordinates(latitude: 42.266103552773586, longitude: -83.73740385680419)
let THE_THAYER_HOME_COORDINATES = Coordinates(latitude: 42.28416311951223, longitude: -83.73955130610102)
let THE_BIG_HOUSE_COORDINATES = Coordinates(latitude: 42.26770743595642, longitude: -83.74876472503425)
let THE_CRISLER_CENTER_COORDINATES = Coordinates(latitude: 42.26565733816092, longitude: -83.74667615289299)
let BLUE_TRACTOR_COORDINATES = Coordinates(latitude: 42.28073539298918, longitude: -83.74690652787595)
let BLANK_SLATE_CREAMERY_COORDINATES = Coordinates(latitude: 42.27990011352438, longitude: -83.75123078664102)
let JOLLY_PUMPKIN_COORDINATES = Coordinates(latitude: 42.27952350420856, longitude: -83.748461221379)
let BELL_TOWER_COORDINATES = Coordinates(latitude: 42.27950762826664, longitude: -83.73871407393833)
let DETROIT_COOKIE_CO_COORDINATES = Coordinates(latitude: 42.27802073108873, longitude: -83.74153978111691)
let STOCKWELL_HALL_COORDINATES = Coordinates(latitude: 42.27874003779142, longitude: -83.73130688517233)
let ZINGERMANS_COORDINATES = Coordinates(latitude: 42.284999466945436, longitude: -83.74501454867779)
let FOUND_COORDINATES = Coordinates(latitude: 42.28458725392863, longitude: -83.7460203782938)

// Ann Arbor Location Crmbs
let THE_DIAG_CRMB = Crumb(locationType: .LANDMARK, dateCreated: Date(), coordinates: THE_DIAG_COORDINATES)
let THE_ARB_CRMB = Crumb(locationType: .NATURE, dateCreated: Date(), coordinates: THE_ARB_COORDINATES)
let PINBALL_PETES_CRMB = Crumb(locationType: .ENTERTAINMENT, dateCreated: Date(), coordinates: PINBALL_PETES_COORDINATES)
let DOMINOS_PIZZA_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: DOMINOS_PIZZA_COORDINATES)
let THE_DEWEY_HOME_CRMB = Crumb(locationType: .LANDMARK, dateCreated: Date(), coordinates: THE_DEWEY_HOME_COORDINATES)
let THE_THAYER_HOME_CRMB = Crumb(locationType: .LANDMARK, dateCreated: Date(), coordinates: THE_THAYER_HOME_COORDINATES)
let THE_BIG_HOUSE_CRMB = Crumb(locationType: .ENTERTAINMENT, dateCreated: Date(), coordinates: THE_BIG_HOUSE_COORDINATES)
let THE_CRISLER_CENTER_CRMB = Crumb(locationType: .ENTERTAINMENT, dateCreated: Date(), coordinates: THE_CRISLER_CENTER_COORDINATES)
let BLUE_TRACTOR_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: BLUE_TRACTOR_COORDINATES)
let BLANK_SLATE_CREAMERY_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: BLANK_SLATE_CREAMERY_COORDINATES)
let JOLLY_PUMPKIN_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: JOLLY_PUMPKIN_COORDINATES)
let BELL_TOWER_CRMB = Crumb(locationType: .LANDMARK, dateCreated: Date(), coordinates: BELL_TOWER_COORDINATES)
let DETROIT_COOKIE_CO_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: DETROIT_COOKIE_CO_COORDINATES)
let STOCKWELL_HALL_CRMB = Crumb(locationType: .LANDMARK, dateCreated: Date(), coordinates: STOCKWELL_HALL_COORDINATES)
let ZINGERMANS_CRMB = Crumb(locationType: .FOOD, dateCreated: Date(), coordinates: ZINGERMANS_COORDINATES)
let FOUND_CRMB = Crumb(locationType: .SHOPPING, dateCreated: Date(), coordinates: FOUND_COORDINATES)

let annArborCrumbs: [Crumb] = [
    THE_DIAG_CRMB,
    THE_ARB_CRMB,
    PINBALL_PETES_CRMB,
    DOMINOS_PIZZA_CRMB,
    THE_DEWEY_HOME_CRMB,
    THE_THAYER_HOME_CRMB,
    THE_BIG_HOUSE_CRMB,
    THE_CRISLER_CENTER_CRMB,
    BLUE_TRACTOR_CRMB,
    BLANK_SLATE_CREAMERY_CRMB,
    JOLLY_PUMPKIN_CRMB,
    BELL_TOWER_CRMB,
    DETROIT_COOKIE_CO_CRMB,
    STOCKWELL_HALL_CRMB,
    ZINGERMANS_CRMB,
    FOUND_CRMB
]
