//
//  FinalViewController.swift
//  error
//
//  Created by 2020-1 on 10/11/19.
//  Copyright © 2019 Karen . All rights reserved.
//

import UIKit

class FinalViewController: UIViewController {
    
    var info: String? = ""
     @IBOutlet weak var bcartelera: UIButton!
    
    @IBOutlet weak var infoText: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor(red: 1, green: 0.556, blue: 0.232, alpha: 1)
        self.applyRoundCorner(bcartelera)
        
        
    }
    
    override func viewDidAppear(_ animated: Bool) {
        infoText.text = info
        infoText.backgroundColor = UIColor(red: 1, green: 0.556, blue: 0.232, alpha: 1)
    }
    
    func applyRoundCorner(_ object:AnyObject){
        
        object.layer.cornerRadius = object.frame.size.width/9
        object.layer?.masksToBounds = true
    }
    


    
}
