//
//  Petcredentials+CoreDataProperties.swift
//  MrSunshisjournal
//
//  Created by DISMOV on 22/12/24.
//
//

import Foundation
import CoreData


extension Petcredentials {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<Petcredentials> {
        return NSFetchRequest<Petcredentials>(entityName: "Petcredentials")
    }

    @NSManaged public var foliolicencia: String?
    @NSManaged public var vetename: String?
    @NSManaged public var mascota: Petmascota?

}

extension Petcredentials : Identifiable {

}
