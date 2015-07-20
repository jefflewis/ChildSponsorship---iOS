//
//  Child.swift
//  ChildSponsorship
//
//  Created by Jeff Lewis on 7/18/15.
//  Copyright © 2015 Jeff Lewis. All rights reserved.
//

import UIKit

class Child: NSObject {
  
  var id                : Int
  var name              : String
  var childDescription  : String
  var gender            : String
  var birthdate         : NSDate
  var userId            : Int

  var photos            : [ChildPhoto] {
    get {
      return self.getPhotos()
    }
  }
  
  init(id: Int, name: String, childDescription: String, gender: String, birthdate: NSDate, userId: Int) {
    self.id               = id
    self.name             = name
    self.childDescription = childDescription
    self.gender           = gender
    self.birthdate        = birthdate
    self.userId           = userId
    super.init()
  }
  
  func getPhotos() -> [ChildPhoto] {
    return ChildSponsorshipApiClient.sharedInstance.getPhotosForChild(self.id)
  }
  
  func deletePhoto(photo : ChildPhoto) {
    ChildSponsorshipApiClient.sharedInstance.deletePhotoForChild(self..id)
  }
  
  func addPhoto(photo : ChildPhoto) {
    ChildSponsorshipApiClient.sharedInstance.addPhotoForChild(self.id)
  }
}
