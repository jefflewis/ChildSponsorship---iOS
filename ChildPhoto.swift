//
//  ChildPhoto.swift
//  ChildSponsorship
//
//  Created by Jeff Lewis on 7/18/15.
//  Copyright © 2015 Jeff Lewis. All rights reserved.
//

import UIKit

class ChildPhoto: NSObject {
  
  var id      : Int
  var url     : String
  var caption : String
  var childId : Int

  init(id: Int, url: String, caption: String, childId: Int) {
    self.id       = id
    self.url      = url
    self.caption  = caption
    self.childId  = childId
    super.init()
  }

}
