//
//  Animal.swift
//  Zukan
//
//  Created by Owner on 2023/04/06.
//

import UIKit

class Animal {
    
    var name: String
    var details: String
    var imageName: String
    
    init(name: String, details: String, imageName: String) {
        self.name = name
        self.details = details
        self.imageName = imageName
    }
    
    func getImage() -> UIImage {
        return UIImage(named: imageName)!
    }
}
