//
//  Petmascota+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Petmascota {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Petmascota> {
        return NSFetchRequest<Petmascota>(entityName: "Petmascota")
    }

    @NSManaged public var born: Bool
    @NSManaged public var comidafav: String?
    @NSManaged public var cumple: Date?
    @NSManaged public var descripcion: String?
    @NSManaged public var esteril: Bool
    @NSManaged public var genero: Bool
    @NSManaged public var nombre: String?
    @NSManaged public var pesoactual: Double
    @NSManaged public var raza: String?
    @NSManaged public var razacien: String?
    @NSManaged public var actividades: NSSet?
    @NSManaged public var credencial: Petcredentials?
    @NSManaged public var habitat: Pethabitat?

}

// MARK: Generated accessors for actividades
extension Petmascota {

    @objc(addActividadesObject:)
    @NSManaged public func addToActividades(_ value: Petactividad)

    @objc(removeActividadesObject:)
    @NSManaged public func removeFromActividades(_ value: Petactividad)

    @objc(addActividades:)
    @NSManaged public func addToActividades(_ values: NSSet)

    @objc(removeActividades:)
    @NSManaged public func removeFromActividades(_ values: NSSet)

}

extension Petmascota : Identifiable {

}
