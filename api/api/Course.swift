//
//  Course.swift
//  api
//
//  Created by Palak Satti on 04/12/23.
//

import Foundation

struct Course: Identifiable, Codable{
    var id: Int
    var image: String
    var title:  String
    var subtitle: String
    
}
