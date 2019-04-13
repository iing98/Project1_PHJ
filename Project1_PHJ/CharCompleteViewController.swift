//
//  CharCompleteViewController.swift
//  Project1_PHJ
//
//  Created by SWUCOMPUTER on 11/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CharCompleteViewController: UIViewController {

    @IBOutlet var charNameDisplay: UILabel!
    @IBOutlet var charColorDisplay: UIImageView!
    @IBOutlet var charFaceDisplay: UIImageView!
    @IBOutlet var charAccDisplay: UIImageView!
    
    var info: String?
    var info2: UIImage?
    var info3: UIImage?
    var info4: UIImage?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let charNameString = info {
            charNameDisplay.text = charNameString
        }
        
        if let charSetColor = info2 {
            charColorDisplay.image = charSetColor
        }
        
        if let charSetFace = info3 {
            charFaceDisplay.image = charSetFace
        }
        
        if let charSetAcc = info4 {
            charAccDisplay.image = charSetAcc
        }
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
