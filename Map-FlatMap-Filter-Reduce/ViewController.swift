//
//  ViewController.swift
//  Map-FlatMap-Filter-Reduce
//
//  Created by houjianan on 16/7/8.
//  Copyright © 2016年 houjianan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     
        let intArr = [1, 2, 3, 4, 0]
        let dimensionsArr = [[1, 2, 3], [4, 5, 6]]
        let stringArr = ["我", "嘴", "甜"]
        //map 遍历数组
        let newArr = intArr.map { (i: Int) -> String? in
            guard i > 0 else {
                return nil
            }
            return "我是第\(i)个"
        }
        print("newArr = ", newArr)
        //map遍历二维数组，对比flatMap
        let newArr0 = dimensionsArr.map { i in
            return i
        }
        print("newArr0 = ", newArr0)
        //map的简单写法
        let newArr1 = intArr.map {
            return "我是第\($0)个"
        }
        print("newArr1 = ", newArr1)
        //flatMap遍历二维数组，对比map
        let newArr2 = dimensionsArr.flatMap {i in
            return i
        }
        print("newArr2 = ", newArr2)
        //flatMap解包nil 对比map
        let newArr20 = intArr.flatMap { (i: Int) -> String? in
            guard i > 0 else {
                return nil
            }
            return "我是第\(i)个"
        }
        print("newArr20 = ", newArr20)
        //flatMap和map共同使用，组合数组
        let newArr3 = intArr.flatMap { i in
            stringArr.map({ str in
                return "\(i)" + str
            })
        }
        print("newArr3 = ", newArr3)
        //filter过滤数组
        let newArr4 = stringArr.filter { (str: String) -> Bool in
            if str == "嘴" {
                return false
            } else {
                return true
            }
        }
        print("newArr4 = ", newArr4)
        //reduce返回数组每个元素相加
        let newArr5 = intArr.reduce(0) { (all: Int, i: Int) -> Int in
            print(all)
            print(i)
            return all + i
        }
        print("newArr5 = ", newArr5)
        //reduce返回数组组合
        let newString = intArr.reduce("") { (i: String, j : Int) -> String in
            return "\(i)" + "\(j)"
        }
        print("newString = ", newString)
        
        
    }

}

