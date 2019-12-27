//
//  Summit.swift
//  Summit
//
//  Created by Dalton Prescott Ng on 27/12/19.
//  Copyright © 2019 daltonDemo. All rights reserved.
//

import UIKit

struct Mountain {
    var name: String
    var height: Int // Meters
    var image: UIImage
}

var Mountains = [Mountain]()

//MARK: Seed some sample mountains into the Mountain Array
func seedMountains() {
    // Create the different mountains
    Mountains.append(Mountain.init(name: "Mount Everest",     height: 8848, image: #imageLiteral(resourceName: "Everest")))
    Mountains.append(Mountain.init(name: "K2",                height: 8611, image: #imageLiteral(resourceName: "K2")))
    Mountains.append(Mountain.init(name: "Kanchenjunga",      height: 8586, image: #imageLiteral(resourceName: "Kanchenjunga")))
    Mountains.append(Mountain.init(name: "Mount Kilimanjaro", height: 5895, image: #imageLiteral(resourceName: "Kilimanjaro")))
    Mountains.append(Mountain.init(name: "Denali",            height: 6190, image: #imageLiteral(resourceName: "Denali")))
    Mountains.append(Mountain.init(name: "Mount Fuji",        height: 3776, image: #imageLiteral(resourceName: "Fuji")))
    Mountains.append(Mountain.init(name: "Matterhorn",        height: 4478, image: #imageLiteral(resourceName: "Matterhorn")))
    Mountains.append(Mountain.init(name: "Mont Blanc",        height: 4808, image: #imageLiteral(resourceName: "MontBlanc")))
    Mountains.append(Mountain.init(name: "Lhotse",            height: 8516, image: #imageLiteral(resourceName: "Lhotse")))
    Mountains.append(Mountain.init(name: "Manaslu",           height: 8163, image: #imageLiteral(resourceName: "Manaslu")))
    Mountains.append(Mountain.init(name: "Cho Oyu",           height: 8188, image: #imageLiteral(resourceName: "Cho Oyu")))
}


//MARK: Crop a given image into a square.
func cropImageToSquare(_ image: UIImage) -> UIImage? {
    var imageHeight = image.size.height
    var imageWidth = image.size.width

    if imageHeight > imageWidth {
        imageHeight = imageWidth
    }
    else {
        imageWidth = imageHeight
    }

    let size = CGSize(width: imageWidth, height: imageHeight)

    let refWidth : CGFloat = CGFloat(image.cgImage!.width)
    let refHeight : CGFloat = CGFloat(image.cgImage!.height)

    let x = (refWidth - size.width) / 2
    let y = (refHeight - size.height) / 2

    let cropRect = CGRect(x: x, y: y, width: size.height, height: size.width)
    if let imageRef = image.cgImage!.cropping(to: cropRect) {
        return UIImage(cgImage: imageRef, scale: 0, orientation: image.imageOrientation)
    }

    return nil
}
