//
//  ViewController.swift
//  UILable
//
//  Created by 马锦航 on 16/7/25.
//  Copyright © 2016年 banhuo. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    
    //  懒加载
    lazy var textLabel: UILabel = {
        let label = UILabel()
        label.frame = CGRectMake(0, 200, UIScreen.mainScreen().bounds.width, 20)
        label.text = "这是一个label"
        label.backgroundColor = UIColor.yellowColor()
        label.textAlignment = NSTextAlignment.Center    // swift中枚举的调用: 枚举名.类型名
        return label
    }()                                                 //  不要省略'()'
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setViewStyle()
        loadSubviews()
    }
    
    
    //MARK:  加载子控件
    func loadSubviews() -> () {
        view.addSubview(textLabel)
    }
    
    //MARK: - 设置页面style
    func setViewStyle() -> () {
        view.backgroundColor = UIColor.lightGrayColor()
    }
    
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        print("click")
        textLabel.text = "点击了"
    }
    
    
}

