//
//  Post.swift
//  H4XORBootCamp
//
//  Created by Vinojen Gengatharan on 2020-09-08.
//  Copyright © 2020 Vinojen Gengatharan. All rights reserved.
//

import Foundation
struct Post : Decodable, Identifiable
{
    let title : String
    let url : String?
    let author : String
    let points : Int
    let objectID : String
    var id : String
    {
        return objectID
    }
    
    
    
    
    
}
