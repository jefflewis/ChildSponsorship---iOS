//
//  User.swift
//  ChildSponsorship
//
//  Created by Jeff Lewis on 7/18/15.
//  Copyright © 2015 Jeff Lewis. All rights reserved.
//

import UIKit

class User: NSObject {
  
  let id       : Int
  var name     : String
  var email    : String
  var token    : String
  
  var children : [Child] {
    get {
      return self.getChildren()
    }
  }
  
  init(id: Int, name: String, email: String, token: String) {
    self.id       = id
    self.name     = name
    self.email    = email
    self.token    = token
    super.init()
  }
  
  func getChildren() -> [Child] {
    return ChildSponsorshipApiClient.sharedInstance.getChildrenForUser(self.id)
  }
  
  func addChild(child : Child) {
    ChildSponsorshipApiClient.sharedInstance.addChildForUser(self.id)
  }
  
  func logout() {
    ChildSponsorshipApiClient.sharedInstance.logoutUser(self.id)
  }

}
