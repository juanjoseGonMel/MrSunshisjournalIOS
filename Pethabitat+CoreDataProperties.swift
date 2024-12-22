//
//  Pethabitat+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Pethabitat {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Pethabitat> {
        return NSFetchRequest<Pethabitat>(entityName: "Pethabitat")
    }

    @NSManaged public var acceso: Bool
    @NSManaged public var capacidad: Int16
    @NSManaged public var descripcion: String?
    @NSManaged public var size: Float
    @NSManaged public var temp: Float
    @NSManaged public var tipo: String?
    @NSManaged public var mascotas: NSSet?

}

// MARK: Generated accessors for mascotas
extension Pethabitat {

    @objc(addMascotasObject:)
    @NSManaged public func addToMascotas(_ value: Petmascota)

    @objc(removeMascotasObject:)
    @NSManaged public func removeFromMascotas(_ value: Petmascota)

    @objc(addMascotas:)
    @NSManaged public func addToMascotas(_ values: NSSet)

    @objc(removeMascotas:)
    @NSManaged public func removeFromMascotas(_ values: NSSet)

}

extension Pethabitat : Identifiable {

}
