//
//  ViewController.swift
//  mentor_book
//
//  Created by kawagishi on 2018/02/08.
//  Copyright © 2018年 juna Kawagishi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //----------------------------------
    //Setting variable
    //----------------------------------
    var mentorArray: [Mentor] = []
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet var namelabel: UILabel!
    @IBOutlet var courseLabel: UILabel!
    
    var index: Int = 0
    
    //----------------------------------
    //Setting function
    //----------------------------------
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.

        //instance
        mentorArray.append(Mentor(name: "ながた", course: "iPhone", imageName: "nagata.jpg"))
        mentorArray.append(Mentor(name: "りょうさん", course: "Unity", imageName: "ryo.jpg"))
        mentorArray.append(Mentor(name: "たいてぃ", course: "WebS, WebD", imageName: "taithi.JPG"))
        
        setUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    //----------------------------------
    //original function
    //----------------------------------
    
    //View
    func setUI(){
        imageView.image = mentorArray[index].getImage()
        namelabel.text = mentorArray[index].name
        courseLabel.text = mentorArray[index].course
    }
    
    //back button
    @IBAction func back(){
        index -= 1
        if index == -1{
            index = 2
        }
        setUI()
    }
    
    //next button
    @IBAction func next(){
        index += 1
        if index == 3 {
            index = 0
        }
        setUI()
    }
}

