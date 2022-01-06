//
//  ViewController.swift
//  tiktaktoe
//
//  Created by Timo Bell on 06.01.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var tttlabel: UILabel!
    @IBOutlet weak var button1label: UIButton!
    @IBOutlet weak var button2label: UIButton!
    @IBOutlet weak var button3label: UIButton!
    @IBOutlet weak var button4label: UIButton!
    @IBOutlet weak var button5label: UIButton!
    @IBOutlet weak var button6label: UIButton!
    @IBOutlet weak var button7label: UIButton!
    @IBOutlet weak var button8label: UIButton!
    @IBOutlet weak var button9label: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tttlabel.text = "TikTakToe"
        tttlabel.textColor = .black
        tttlabel.textAlignment = .center
        
    }
    @IBAction func button1(_ sender: UIButton) {
        button1label.setTitle( "", for: .normal)
    }
    

}

