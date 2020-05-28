//
//  PlayViewController.swift
//  colorTap
//
//  Created by Bhavesh Shah on 9/19/18.
//  Copyright © 2018 Bhavesh Shah. All rights reserved.
//

import UIKit

class PlayViewController: UIViewController {

    @IBOutlet weak var firstlayer: UIView!
    @IBOutlet weak var secondlayer: UIView!
    @IBOutlet weak var thirdlayer: UIView!
    @IBOutlet weak var matchlayer: UIView!
    var score=0

    @IBOutlet weak var scoreText: UILabel!
    
    @IBAction func flOnTap(_ sender: Any) {
        if firstlayer.backgroundColor==matchlayer.backgroundColor {
            score=score+1
            scoreText.text = String(score)
            changeBackground()
        }
        else {
            scoreText.text="Game Over!"
        }
    }
    
    @IBAction func slOnTap(_ sender: Any) {
        if secondlayer.backgroundColor==matchlayer.backgroundColor {
            score=score+1
            scoreText.text = String(score)
            changeBackground()
        }
        else {
            scoreText.text="Game Over!"
        }
    }
    
    @IBAction func tlOnTap(_ sender: Any) {
        if thirdlayer.backgroundColor==matchlayer.backgroundColor {
            score=score+1
            scoreText.text = String(score)
            changeBackground()
        }
        else {
            scoreText.text="Game Over!"
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func changeBackground() {
        let colorarr = [UIColor.blue,UIColor.green,UIColor.yellow,UIColor.red,UIColor.purple,UIColor.magenta,UIColor.cyan,UIColor.orange,UIColor()] as [Any]
        let number = Int(arc4random_uniform(3))
        let number2 = Int(arc4random_uniform(3)+3)
        let number3 = Int(arc4random_uniform(3)+6)
        let numberarr = [number,number2,number3]
        let testnumber = Int(arc4random_uniform(3))
        firstlayer.backgroundColor = (colorarr[number] as! UIColor)
        secondlayer.backgroundColor = (colorarr[number2] as! UIColor)
        thirdlayer.backgroundColor = (colorarr[number3] as! UIColor)
        matchlayer.backgroundColor = (colorarr[numberarr[testnumber]] as! UIColor)
        }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
