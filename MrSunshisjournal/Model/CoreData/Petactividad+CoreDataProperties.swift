//
//  Petactividad+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Petactividad {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Petactividad> {
        return NSFetchRequest<Petactividad>(entityName: "Petactividad")
    }

    @NSManaged public var tipo: String?
    @NSManaged public var dateinit: Date?
    @NSManaged public var datefinish: Date?
    @NSManaged public var time: Date?
    @NSManaged public var name: String?
    @NSManaged public var notes: String?
    @NSManaged public var photo: String?
    @NSManaged public var mascota: Petmascota?
    @NSManaged public var cita: Petcitaotro?
    @NSManaged public var comida: Petcomida?
    @NSManaged public var sanidad: PetSanidad?

}

extension Petactividad : Identifiable {

}
