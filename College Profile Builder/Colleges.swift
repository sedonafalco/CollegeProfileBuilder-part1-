//
//  Colleges.swift
//  College Profile Builder
//
//  Created by Sedona Falco on 2/8/17.
//  Copyright © 2017 Sedona Falco. All rights reserved.
//

import UIKit

class Colleges: NSObject {
    
    
    
    var name = String()
    var location = String()
    var enrollment = Int()
    var image = Data()
    
    
    convenience init(name: String, location: String, enrollment: Int, image: Data) {
        self.init()
        self.name = name
        self.location = location
        self.enrollment = enrollment
        self.image = image
    }

}
