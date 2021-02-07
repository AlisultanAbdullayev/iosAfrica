//
//  AnimalModel.swift
//  Africa
//
//  Created by Alisultan Abdullah on 3.01.2021.
//

import SwiftUI

struct Animal: Codable, Identifiable {
    let id:String
    let name:String
    let headline:String
    let description:String
    let image:String
    let link:String
    let gallery:[String]
    let fact:[String]
}
