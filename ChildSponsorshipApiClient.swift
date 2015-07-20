//
//  ChildSponsorshipApiClient.swift
//  ChildSponsorship
//
//  Created by Jeff Lewis on 7/18/15.
//  Copyright © 2015 Jeff Lewis. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

class ChildSponsorshipApiClient : NSObject{
  
  static let sharedInstance = ChildSponsorshipApiClient()
  
  let baseUrl = "https://child-sponsorship-api.herokuapp.com/api/v1"
  let manager : Manager
  let configuration : NSURLSessionConfiguration
  
  override init() {
    self.configuration = NSURLSessionConfiguration.defaultSessionConfiguration()
    self.manager = Alamofire.Manager(configuration: configuration)
  }
  
  
  // MARK: Helper Methods
  
  
  
  // MARK: Base Actions

  func get(path : String, completion: (response: AnyObject, error: ErrorType) -> ()) {
    
  }
  
  func post(path : String, completion: (response: AnyObject, error: ErrorType) -> ()) {
    
  }
  
  // MARK: User Actions
  
//  func login(email: String, password : String) -> Void {
//    let credential = NSURLCredential(user: email, password: password, persistence: .ForSession)
//    
//    self.manager.request(.GET, self.baseUrl + "/login", parameters: ["email" : email, "password" : password])
//                .responseJSON { (_, _, data, _) in
//                  let json = JSON(data!)
//                  if let authToken = json[0]["token"].string{
//                    print(authToken)
//                  }
//                }
//  }
  
  func logoutUser(userId : Int) {
    // TODO: Implement
  }
  
  
  // MARK: Child Actions
  
  func getChildrenForUser(userId : Int) -> [Child] {
    // TODO: Implement
    //
    //    child = Child(
    //      id:               response.id,
    //      name:             response.name,
    //      childDescription: response.description,
    //      gender:           response.gender,
    //      birthdate:        response.birthdate,
    //      userId:           response.userId
    //    )
    //    
    //    return child
  }
  
  func addChildForUser(userId : Int) {
    // TODO: Implement
  }
  
  // MARK: ChildPhoto Actions
  
  func getPhotosForChild(childId : Int) -> [ChildPhoto] {
    // TODO: Implement
  }
  
  func deletePhotoForChild(childid : Int) {
    // TODO: Implement
  }
  
  func addPhotoForChild(childId : Int) {
    // TODO: Implement
  }
  
  
  
  
}