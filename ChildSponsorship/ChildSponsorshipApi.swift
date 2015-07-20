//
//  ChildSponsorshipApi.swift
//  ChildSponsorship
//
//  Created by Jeff Lewis on 7/18/15.
//  Copyright © 2015 Jeff Lewis. All rights reserved.
//

import Foundation

//1
class var sharedInstance: LibraryAPI {
	//2
	struct Singleton {
		//3
		static let instance = LibraryAPI()
	}
	//4
	return Singleton.instance
}