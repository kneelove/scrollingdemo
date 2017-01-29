//
//  ViewController.swift
//  scrolling
//
//  Created by Nilav Vaghasiya on 1/29/17.
//  Copyright © 2017 zeolabs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollview: UIScrollView!
    var images = [UIImageView()]

    
    override func viewDidLoad() {
        super.viewDidLoad()
      
    }

    override func viewDidAppear(_ animated: Bool) {
        var content:CGFloat = 0.0
        
        
        for x in 0...2{
            
            let image = UIImage(named: "icon\(x).png")
            
            let imageView = UIImageView(image: image)
            images.append(imageView)
            var newX:CGFloat = 0.0
            newX = view.frame.width/2+view.frame.size.width*CGFloat(x)
            content += newX
            scrollview.addSubview(imageView)
            imageView.frame = CGRect(x: newX-75, y: (view.frame.size.height/2), width: 150, height:150)
            
            

             }
        scrollview.contentSize = CGSize(width: content, height: view.frame.height
        )
    
        
        

}

}
