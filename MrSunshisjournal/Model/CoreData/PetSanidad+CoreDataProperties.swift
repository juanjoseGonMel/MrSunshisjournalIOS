//
//  PetSanidad+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension PetSanidad {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PetSanidad> {
        return NSFetchRequest<PetSanidad>(entityName: "PetSanidad")
    }

    @NSManaged public var tipo: String?
    @NSManaged public var sanidad: Petactividad?

}

extension PetSanidad : Identifiable {

}
