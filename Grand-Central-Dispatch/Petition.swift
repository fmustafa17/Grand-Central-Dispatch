//
//  Petition.swift
//  Grand-Central-Dispatch
//
//  Created by Farhana Mustafa on 7/4/20.
//  Copyright © 2020 Farhana Mustafa. All rights reserved.
//

import Foundation

struct Petition: Codable {
    var title: String
    var body: String
    var signatureCount: Int
}
