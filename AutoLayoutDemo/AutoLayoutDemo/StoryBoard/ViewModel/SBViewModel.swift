//
//  SBViewModel.swift
//  AutoLayoutDemo
//
//  Created by Gavin Huang on 2018/4/11.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import Foundation

class SBViewModel: NSObject{
   lazy var datas: [SBModel] = {
        let distances = "123456789123456789"
        let places = "大雾浓重，离屋五步远就看不见窗户了，只能看到黑乎乎的一团，从中透出红色的，显得很大的灯光。河上仍然响着那种古怪的呼哧声，沙沙声，噼啪声，薄冰相撞的叮当声。院子里近处雾中一只公鸡啼了一声，附近的公鸡便都相应啼鸣，远处村子里传来一声连着一声，转眼混成一片的打鸣声。除了河上，周围一切都是静悄悄的。月，朦胧。窗，寂寥。树，沉默。黑暗中的神秘，变得越来越深沉，气氛如此安静，一切都比过白天的空闷……风一阵一阵，轻轻地吹散云层，也拂走了眼前的阴霾。月悬在窗前，孤独地从东向西行去，依稀可见那泫然而泣后泛着的暗淡的泪光，不知是否倦了，累了，低眉惙怛伤悴，却又不知如何遮掩，仿佛知道我心底暗藏一抹难以抚平的伤痕，让我尤想为其拭尽那两行泪水，满脸愁容，不禁令人心疼。墙边仅有的一棵桂树，盼了八年，等的花未开，等花的人已不在。窗外的树影显得有些单薄，而屋内的灯格外昏暗，里面也不曾挂过一帘，只有月光一片，洒落窗弦。虫鸣声不停地打断看月的心绪，心中烦乱，百感交集，月下的人，有谁懂得他的落默?是谁，让我如此牵肠挂肚?是谁，让我如此心神不宁?又是谁，让我在征途中走出迷茫?月光扰乱心神，我该如何遗忘你的倾城"
        
       var models: [SBModel] = []
        for i in 0...20 {
            let placeRand = (arc4random()%50) + 1
            let distanceRand = (arc4random()%10) + 1
            let place = String( places[places.startIndex...places.index(places.startIndex, offsetBy: Int(placeRand))] )
            
            let distance = "距我" + String( distances[distances.startIndex...distances.index(distances.startIndex, offsetBy: Int(distanceRand))] )  + "m"
            
            let model = SBModel.init(place: place, distance: distance)
            models.append(model)
        }
        return models
    }()
}
