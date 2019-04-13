//
//  CharMakeViewController.swift
//  Project1_PHJ
//
//  Created by SWUCOMPUTER on 11/04/2019.
//  Copyright © 2019 SWUCOMPUTER. All rights reserved.
//

import UIKit

class CharMakeViewController: UIViewController {

    @IBOutlet var charNameDisplay: UILabel!
    @IBOutlet var CharImage: UIImageView!
    @IBOutlet var charFaceImage: UIImageView!
    @IBOutlet var charAccImage: UIImageView!
    @IBOutlet var charSetSegment: UISegmentedControl!
    
    @IBOutlet var button1: UIButton!
    @IBOutlet var button2: UIButton!
    @IBOutlet var button3: UIButton!
    
    var info:String?
    var info2:Int?
    let charPinkImage = UIImage(named: "body-pink.png")
    let charMintImage = UIImage(named: "body-mint.png")
    let charPurpleImage = UIImage(named: "body-purple.png")
    let charFacePinkImage = UIImage(named: "face-pink.png")
    let charFaceMintImage = UIImage(named: "face-mint.png")
    let charFacePurpleImage = UIImage(named: "face-purple.png")
    let charAccPinkImage = UIImage(named: "acc-pink.png")
    let charAccMintImage = UIImage(named: "acc-mint.png")
    let charAccPurpleImage = UIImage(named: "acc-purple.png")
    
    @IBAction func clickButton1(_ sender: UIButton) {
        if charSetSegment.selectedSegmentIndex == 0 {
            charFaceImage.image = charFacePinkImage
        }
        else {
            charAccImage.image = charAccPinkImage
        }
    }
    
    @IBAction func clickButton2(_ sender: UIButton) {
        if charSetSegment.selectedSegmentIndex == 0 {
            charFaceImage.image = charFaceMintImage
        }
        else {
            charAccImage.image = charAccMintImage
        }
    }
    
    @IBAction func clickButton3(_ sender: UIButton) {
        if charSetSegment.selectedSegmentIndex == 0 {
            charFaceImage.image = charFacePurpleImage
        }
        else {
            charAccImage.image = charAccPurpleImage
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCompleteChar"{
            let destVC = segue.destination as! CharCompleteViewController
            destVC.info = charNameDisplay.text
            destVC.info2 = CharImage.image
            destVC.info3 = charFaceImage.image
            destVC.info4 = charAccImage.image
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        if let charNameString = info {
            charNameDisplay.text = charNameString
        }
        
        if let charImageSet = info2 {
            if charImageSet == 0 {
                CharImage.image = charPinkImage
            }
            if charImageSet == 1 {
                CharImage.image = charMintImage
            }
            if charImageSet == 2 {
                CharImage.image = charPurpleImage
            }
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
