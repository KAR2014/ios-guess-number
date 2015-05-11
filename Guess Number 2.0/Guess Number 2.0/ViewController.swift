//
//  ViewController.swift
//  Guess Number 2.0
//
//  Created by Cognits on 8/05/15.
//  Copyright (c) 2015 Cognits. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var Number: UILabel! //Number #
    
    @IBOutlet weak var Insert: UITextField! //Textbox Insert
    
    @IBOutlet weak var Generate: UIButton! //1st. Play Button
    
    var random: Int = 0 //Variable to save the random value
    
    var oportunitis = 4 //Oportunitys
    
    var click = 1 //Cont of Clicks
    
    var x: Int = 0
    
    
    @IBOutlet weak var oportunity: UILabel! //# Oportunitys
    
    @IBOutlet weak var Player: UIButton! //2nd. Play Button
    
    @IBOutlet weak var text: UILabel! //Text of Message

    
    //Fun start to Load the App
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func NumberGenerate(sender: UIButton) {
        let acierto = Int(arc4random()) % 20
        random = acierto
        Number.text = String("?")
        Generate.enabled = false
        println(random)
        Player.hidden = false
        Insert.hidden = false
        
    }
    
    func validation (op: Int, y:Int){
        
        if (random == op){
            Number.text = String(random)
            println("Wrong. Try again.")
            println(op)
            Player.enabled = false
            Insert.enabled = false
            text.text = "Wrong. Try again."
        }else if(random != op){
            println("Wrong. Try again.")
            oportunity.text = String(oportunitis - 1)
            text.text = "Wrong. Try again."
            println(op)
            
        }
//        }else if(op == 4 && num != op){
//            println("Game Over")
//            Player.enabled = false
//            text.text = "Sorry Game Over"
//            Number.text = String(num)
//            println(op)
//     }
        
        oportunitis = oportunitis - 1
        oportunity.tag = oportunitis
        Insert.text = " "

    }
    
    @IBAction func Play(sender: UIButton) {
        //x = Insert.text.toInt()!
        click = click + 1
        if (click <= 4){
            println(Insert.tag)
            validation(Insert.tag, y: click)
        }
        else{
            Player.enabled = false
            Insert.enabled = false
            Number.text = String(random)
            println("Wrong. Game over.")
            text.text = "Wrong. Game over."
            oportunity.text = "0"

        }
        //x = 0;
    }
    
    

}

