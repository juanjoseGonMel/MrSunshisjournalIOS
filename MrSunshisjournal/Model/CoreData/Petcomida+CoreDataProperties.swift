//
//  Petcomida+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Petcomida {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Petcomida> {
        return NSFetchRequest<Petcomida>(entityName: "Petcomida")
    }

    @NSManaged public var cantidad: Int16
    @NSManaged public var descripcion: String?
    @NSManaged public var actividad: Petactividad?

}

extension Petcomida : Identifiable {

}
