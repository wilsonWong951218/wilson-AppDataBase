//
//  PageViewControl.swift
//  HelloEmbedInTabBar
//
//  Created by Macintosh on 2018/3/9.
//  Copyright © 2018年 appsgaga. All rights reserved.
//
import UIKit

class PageViewController:UIViewController{
    var nowPageNumber = 0
   @IBOutlet weak var mainImage: UIImageView!
    override func viewDidLoad() {
        mainImage.image = UIImage(named: "\(nowPageNumber)")
        pageroll.currentPage = nowPageNumber
        view.addSubview(pageroll)
    }
    @IBOutlet weak var pageroll: UIPageControl!
}
