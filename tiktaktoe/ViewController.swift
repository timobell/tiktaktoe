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
    
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
    
    var klick = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tttlabel.text = "TikTakToe"
        tttlabel.textColor = .black
        tttlabel.textAlignment = .center
        button1label.setTitle( "", for: .normal)
        button2label.setTitle("", for: .normal)
        button3label.setTitle("", for: .normal)
        button4label.setTitle("", for: .normal)
        button5label.setTitle("", for: .normal)
        button6label.setTitle("", for: .normal)
        button7label.setTitle("", for: .normal)
        button8label.setTitle("", for: .normal)
        button9label.setTitle("", for: .normal)
        
    }
    @IBAction func button1(_ sender: UIButton) {
        button1label.setTitle( "", for: .normal)
        if klick {
            label1.text = "X"
            label1.textColor = .red
            label1.textAlignment = .center
            klick = false
        }else {
            label1.text = "O"
            label1.textColor = .blue
            label1.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button2(_ sender: UIButton) {
        button2label.setTitle("", for: .normal)
        if klick {
            label2.text = "X"
            label2.textColor = .red
            label2.textAlignment = .center
            klick = false
        }else {
            label2.text = "O"
            label2.textColor = .blue
            label2.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button3(_ sender: UIButton) {
        button3label.setTitle("", for: .normal)
        if klick {
            label3.text = "X"
            label3.textColor = .red
            label3.textAlignment = .center
            klick = false
        }else {
            label3.text = "O"
            label3.textColor = .blue
            label3.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button4(_ sender: UIButton) {
        button4label.setTitle("", for: .normal)
        if klick {
            label4.text = "X"
            label4.textColor = .red
            label4.textAlignment = .center
            klick = false
        }else {
            label4.text = "O"
            label4.textColor = .blue
            label4.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button5(_ sender: UIButton) {
        button5label.setTitle("", for: .normal)
        if klick {
            label5.text = "X"
            label5.textColor = .red
            label5.textAlignment = .center
            klick = false
        }else {
            label5.text = "O"
            label5.textColor = .blue
            label5.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button6(_ sender: UIButton) {
        button6label.setTitle("", for: .normal)
        if klick {
            label6.text = "X"
            label6.textColor = .red
            label6.textAlignment = .center
            klick = false
        }else {
            label6.text = "O"
            label6.textColor = .blue
            label6.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button7(_ sender: UIButton) {
        button7label.setTitle("", for: .normal)
        if klick {
            label7.text = "X"
            label7.textColor = .red
            label7.textAlignment = .center
            klick = false
        }else {
            label7.text = "O"
            label7.textColor = .blue
            label7.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button8(_ sender: UIButton) {
        button8label.setTitle("", for: .normal)
        if klick {
            label8.text = "X"
            label8.textColor = .red
            label8.textAlignment = .center
            klick = false
        }else {
            label8.text = "O"
            label8.textColor = .blue
            label8.textAlignment = .center
            klick = true
        }
    }
    @IBAction func button9(_ sender: UIButton) {
        button9label.setTitle("", for: .normal)
        if klick {
            label9.text = "X"
            label9.textColor = .red
            label9.textAlignment = .center
            klick = false
        }else {
            label9.text = "O"
            label9.textColor = .blue
            label9.textAlignment = .center
            klick = true
        }
    }
    @IBAction func reset(_ sender: UIButton) {
        klick = true
        label1.text = ""
        label2.text = ""
        label3.text = ""
        label4.text = ""
        label5.text = ""
        label6.text = ""
        label7.text = ""
        label8.text = ""
        label9.text = ""
    }
    

}

