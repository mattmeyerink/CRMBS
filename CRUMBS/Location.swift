//
//  Location.swift
//  CRUMBS
//
//  Created by Matthew Meyerink on 1/16/23.
//

import Foundation
import MapKit

enum LocationType: Codable {
    case NATURE
    case FOOD
    case SHOPPING
    case ENTERTAINMENT
}

struct Coordinates: Codable {
    var latitude: CLLocationDegrees
    var longitude: CLLocationDegrees
    
    init(latitude: CLLocationDegrees, longitude: CLLocationDegrees) {
        self.latitude = latitude
        self.longitude = longitude
    }
}

struct Crumb: Identifiable, Codable {
    var id = UUID()
    var name: String = ""
    var type: LocationType
    var coordinates: Coordinates
    var dateCreated: Date
    var notes: String = ""
    var beenThere: Bool = false
    
    enum CodingKeys: String, CodingKey {
        case id, name, type, coordinates, dateCreated, notes, beenThere
    }
    
    init(locationType: LocationType, dateCreated: Date, coordinates: Coordinates) {
        self.type = locationType
        self.dateCreated = dateCreated
        self.coordinates = coordinates
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        id = try values.decode(UUID.self, forKey: .id)
        name = try values.decode(String.self, forKey: .name)
        type = try values.decode(LocationType.self, forKey: .type)
        coordinates = try values.decode(Coordinates.self, forKey: .coordinates)
        dateCreated = try values.decode(Date.self, forKey: .dateCreated)
        notes = try values.decode(String.self, forKey: .notes)
        beenThere = try values.decode(Bool.self, forKey: .beenThere)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
        try container.encode(id, forKey: .id)
        try container.encode(name, forKey: .name)
        try container.encode(type, forKey: .type)
        try container.encode(coordinates, forKey: .coordinates)
        try container.encode(dateCreated, forKey: .dateCreated)
        try container.encode(notes, forKey: .notes)
        try container.encode(beenThere, forKey: .beenThere)
    }
}
