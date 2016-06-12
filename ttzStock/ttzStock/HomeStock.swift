//
//  HomeStock.swift
//  ttzStock
//
//  Created by shunweiwuxian on 16/6/12.
//  Copyright © 2016年 ttz. All rights reserved.
//

import UIKit

class HomeStock: NSObject {
    var name = ""
    var code = ""
    var nowPri = ""
    var increPer = ""
    
    init(name : String , code : String,nowPri : String ,increPer :String) {
        super.init()
        self.name = name
        self.code = code
        self.nowPri = nowPri
        self.increPer = increPer
    }
}
