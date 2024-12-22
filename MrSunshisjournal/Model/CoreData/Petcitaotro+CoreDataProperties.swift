//
//  Petcitaotro+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Petcitaotro {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Petcitaotro> {
        return NSFetchRequest<Petcitaotro>(entityName: "Petcitaotro")
    }

    @NSManaged public var descripcion: String?
    @NSManaged public var actividad: Petactividad?

}

extension Petcitaotro : Identifiable {

}
