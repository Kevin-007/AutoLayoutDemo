//
//  SBModel.swift
//  AutoLayoutDemo
//
//  Created by Gavin Huang on 2018/4/11.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import Foundation

struct SBModel {
    var place: String
    var distance: String
}

extension SBModel {
    var description: String {
        return "place:\(place), distance:\(distance)"
    }
}

