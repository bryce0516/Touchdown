//
//  ProductModel.swift
//  Touchdown
//
//  Created by Hye Sung Park on 10/5/23.
//

import Foundation


struct Product:Codable, Identifiable {
    let id : Int
    let name: String
    let image: String
    let price: Int
    let description: String
    let color: [Double]
}
