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

    @NSManaged public var nombre: String?
    @NSManaged public var genero: Bool
    @NSManaged public var raza: String?
    @NSManaged public var razacien: String?
    @NSManaged public var esteril: Bool
    @NSManaged public var cumple: Date?
    @NSManaged public var pesoactual: Double
    @NSManaged public var comidafav: String?
    @NSManaged public var descripcion: String?
    @NSManaged public var born: Bool
    @NSManaged public var habitat: Pethabitat?
    @NSManaged public var medical: NSSet?
    @NSManaged public var credencial: Petcredentials?
    @NSManaged public var actividades: NSSet?

}

// MARK: Generated accessors for medical
extension Petmascota {

    @objc(addMedicalObject:)
    @NSManaged public func addToMedical(_ value: PetMedicalHistory)

    @objc(removeMedicalObject:)
    @NSManaged public func removeFromMedical(_ value: PetMedicalHistory)

    @objc(addMedical:)
    @NSManaged public func addToMedical(_ values: NSSet)

    @objc(removeMedical:)
    @NSManaged public func removeFromMedical(_ values: NSSet)

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
