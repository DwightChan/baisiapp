//
//  ASCommentModel.swift
//  BaiSiApp
//
//  Created by ashen on 16/4/1.
//  Copyright © 2016年 Ashen<http://www.devashen.com>. All rights reserved.
//

import UIKit

class ASCommentModel: NSObject, NSCoding {
//    "top_comment": {
//    "voicetime": 0,
//    "precid": 0,
//    "content": "这才是为人师表。难怪出国留学这么多",
//    "like_count": "339",
//    "u": {
//    "header": [
//    "http://wimg.spriteapp.cn/profile/large/2015/09/06/55ebb55fc4219_mini.jpg"
//    ],
//    "sex": "f",
//    "uid": "5564405",
//    "name": "人生的茶几上果然摆满杯具"
//    },
//    "preuid": 0,
//    "voiceuri": "",
//    "id": 47433888
//    },
    
    var content = ""
    var user = ASUserModel()
    override func setValue(value: AnyObject?, forUndefinedKey key: String) {
        if key == "u" {
            user.setValuesForKeysWithDictionary(value as! Dictionary)
        }
    }
    
    
    func encodeWithCoder(aCoder: NSCoder) {
        aCoder.encodeObject(content, forKey: "content")
        aCoder.encodeObject(user, forKey: "user")
    }
    
    override init() {
        super.init()
    }
    required init?(coder aDecoder: NSCoder) {
        super.init()
        self.content = aDecoder.decodeObjectForKey("content") as! String
        self.user = aDecoder.decodeObjectForKey("user") as! ASUserModel
    }
}
