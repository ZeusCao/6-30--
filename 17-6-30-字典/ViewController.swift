//
//  ViewController.swift
//  17-6-30-字典
//
//  Created by Zeus on 2017/6/30.
//  Copyright © 2017年 Zeus. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }

    // 1.定义
    func demo() {
        // oc中使用字典用{}， swift中也是使用[]
        let dict = ["name" : "张三", "age" : "18"]
        print(dict)
        
        /**
         所有对象能够被转化为JSON（字典或者数组）必须遵循以下规则：
         1.定义节点是数组或者字典
         2.所有对象必须是NSString, NSNumber, NSNull,或者字典和数组
         3.所有的key都是NSString
         4.NSNumber不能为nil或者无穷大
         */
        
        // 定义字典的数组
        let array :[[String : Any]] = [
             ["name" : "张三", "age" : 18],
             ["name" : "李四", "age" : 20]
        ]
        print(array)
    }
    
    // 2.增删改
    func demo1() {
       
        var dict = ["name" : "张三", "age" : "18"]
        
        // 新增 key不存在就是新增
        dict["title"] = "大哥"
        print(dict);
        
        // 修改 ：key存在就是修改
        dict["name"] = "李四"
        
        // 删除: 直接给定key值就可删除
        // hash（哈希） 就是将字符串变成唯一的整数，便于查找，提高遍历的速度
        dict.removeValue(forKey: "age")
        
        
    }
    
    // 3.遍历
    func demo2() {
        let dict = ["name" : "张三", "age" : "18", "title" : "老板"]
        
        for e in dict {
            print(e) // 打印出来的是一组组键值对
            print("\(e.key) \(e.value)")
        }
        
        // 前面的是key，后面的是value，取名随意
        for (key, value) in dict {
            print("\(key) \(value)")
        }
        
        
    }
    
    // 4.合并
    func demo3() {
        var dict1 = ["name" : "张三", "age" : "18", "title" : "老板"]
        
        let dict2 = ["name" : "张三", "height" : "1.9"]
        
        // 将dict2合并到到dict1
        // 提示：字典不能 += 直接相加
        
        // 思路 ：遍历dict2，依次设置:如果key存在会修改，不存在就增加
        for e in dict2 {
            dict1[e.key] = dict2[e.key]
        }
    }
    
   
    func demo4() {
        
    }
    
    
    
    func demo5() {
        
    }
    
    
    func demo6() {
        
    }

}

