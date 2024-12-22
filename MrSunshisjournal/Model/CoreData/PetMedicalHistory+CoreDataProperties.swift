//
//  PetMedicalHistory+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension PetMedicalHistory {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<PetMedicalHistory> {
        return NSFetchRequest<PetMedicalHistory>(entityName: "PetMedicalHistory")
    }

    @NSManaged public var vacuna: String?
    @NSManaged public var fechavacuna: Date?
    @NSManaged public var mota: String?
    @NSManaged public var mascota: Petmascota?

}

extension PetMedicalHistory : Identifiable {

}
