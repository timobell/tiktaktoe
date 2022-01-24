//
//  ViewController.swift
//  tiktaktoe
//
//  Created by Timo Bell on 06.01.22.
//

import UIKit

class ViewController: UIViewController {
// Buttons im Feld //
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
// Buttons zum wechseln des Starts //
    @IBOutlet weak var buttonx: UIButton!
    @IBOutlet weak var buttonO: UIButton!
// Label im Feld //
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var label3: UILabel!
    @IBOutlet weak var label4: UILabel!
    @IBOutlet weak var label5: UILabel!
    @IBOutlet weak var label6: UILabel!
    @IBOutlet weak var label7: UILabel!
    @IBOutlet weak var label8: UILabel!
    @IBOutlet weak var label9: UILabel!
// Label zum zeigen wer am zug ist //
    @IBOutlet weak var erklärungstext: UILabel!
    @IBOutlet weak var er2: UILabel!
// Aussehen vom Feld //
    @IBOutlet weak var imagechanger: UIImageView!
// Label zum sehen zu was man beim start wechseln kann //
    @IBOutlet weak var labelo: UILabel!
    @IBOutlet weak var labelx: UILabel!
    
    
    var klick = true
    var imagek = true
    var letzterbutton = 0
    var last = 10
    
    func updatelabel() {
        if klick {
            erklärungstext.text = "ist am Zug"
            erklärungstext.textColor = .black
            er2.text = "X"
            er2.textColor = .red
        } else {
            erklärungstext.text = "ist am Zug"
            erklärungstext.textColor = .black
            er2.text = "O"
            er2.textColor = .blue
        }
    }
    func tippenV() {
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
    func labelN() {
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
    func Xwins() {
        er2.text = "X"
        er2.textColor = .red
        erklärungstext.text = "Wins"
    }
    func Owins() {
        er2.text = "O"
        er2.textColor = .blue
        erklärungstext.text = "Wins"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tttlabel.text = "TikTakToe"
        tttlabel.textColor = .black
        tttlabel.textAlignment = .center
        button1label.setTitle("", for: .normal)
        button2label.setTitle("", for: .normal)
        button3label.setTitle("", for: .normal)
        button4label.setTitle("", for: .normal)
        button5label.setTitle("", for: .normal)
        button6label.setTitle("", for: .normal)
        button7label.setTitle("", for: .normal)
        button8label.setTitle("", for: .normal)
        button9label.setTitle("", for: .normal)
        labelo.text = "O"
        labelo.textColor = .blue
        labelo.textAlignment = .center
        labelx.text = "X"
        labelx.textColor = .red
        labelx.textAlignment = .center
        er2.text = ""
        erklärungstext.text = ""
        buttonx.setTitle("", for: .normal)
        buttonO.setTitle("", for: .normal)
    }
    
// Tippen //
    
    @IBAction func buttonklick(_ sender: UIButton) {
        if sender == button1label {
            if label1.text == "" {
                tippenV()
                letzterbutton = 1
            }
        } else if sender == button2label {
            if label2.text == "" {
                tippenV()
                letzterbutton = 2
            }
        } else if sender == button3label {
            if label3.text == "" {
                tippenV()
                letzterbutton = 3
            }
        } else if sender == button4label{
            if label4.text == "" {
                tippenV()
                letzterbutton = 4
            }
        } else if sender == button5label {
            if label5.text == "" {
                tippenV()
                letzterbutton = 5
            }
        } else if sender == button6label {
            if label6.text == "" {
                tippenV()
                letzterbutton = 6
            }
        } else if sender == button7label {
            if label7.text == "" {
                tippenV()
                letzterbutton = 7
            }
        } else if sender == button8label {
            if label8.text == "" {
                tippenV()
                letzterbutton = 8
            }
        } else if sender == button9label {
            if label9.text == "" {
                tippenV()
                letzterbutton = 9
            }
        }
        updatelabel()
        
// Gewinnprüfung //
        
        if label1.text == "X" , label2.text == "X" , label3.text == "X" {
            Xwins()
            labelN()
        }
        if label4.text == "X" , label5.text == "X" , label6.text == "X" {
            Xwins()
            labelN()
        }
        if label7.text == "X" , label8.text == "X" , label9.text == "X" {
            Xwins()
            labelN()
        }
        if label1.text == "X" , label4.text == "X" , label7.text == "X" {
            Xwins()
            labelN()
        }
        if label2.text == "X" , label5.text == "X" , label8.text == "X" {
            Xwins()
            labelN()
        }
        if label3.text == "X" , label6.text == "X" , label9.text == "X" {
            Xwins()
            labelN()
        }
        if label1.text == "X" , label5.text == "X" , label9.text == "X" {
            Xwins()
            labelN()
        }
        if label3.text == "X" , label5.text == "X" , label7.text == "X" {
            Xwins()
            labelN()
        }
        if label1.text == "O" , label2.text == "O" , label3.text == "O" {
            er2.text = "O"
            er2.textColor = .blue
            erklärungstext.text = "Wins"
            labelN()
        }
        if label4.text == "O" , label5.text == "O" , label6.text == "O" {
            Owins()
            labelN()
        }
        if label7.text == "O" , label8.text == "O" , label9.text == "O" {
            Owins()
            labelN()
        }
        if label1.text == "O" , label4.text == "O" , label7.text == "O" {
            Owins()
            labelN()
        }
        if label2.text == "O" , label5.text == "O" , label8.text == "O" {
            Owins()
            labelN()
        }
        if label3.text == "O" , label6.text == "O" , label9.text == "O" {
            Owins()
            labelN()
        }
        if label1.text == "O" , label5.text == "O" , label9.text == "O" {
            Owins()
            labelN()
        }
        if label3.text == "O" , label5.text == "O" , label7.text == "O" {
            Owins()
            labelN()
        }
    }
    
// Reset Knopf //
    
    @IBAction func reset(_ sender: UIButton) {
        labelN()
        erklärungstext.text = ""
        er2.text = ""
    }
    
// Auswählen mit was man anfangen möchte //
    
    @IBAction func xbutton(_ sender: UIButton) {
        if letzterbutton == 0 {
           klick = true
        }
    }
    @IBAction func obutton(_ sender: UIButton) {
        if letzterbutton == 0 {
            klick = false
        }
    }
    
// Aussehen des Spielfeldes //
    
    @IBAction func normal(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_436FE5991425-1")
    }
    @IBAction func zack(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_4FDD1B963812-1")
    }
    @IBAction func kurve(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_6902D9831170-1")
    }
    @IBAction func kreis(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_A4F2437CF520-1")
    }
    @IBAction func wierd(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_FEA8BF72405C-1")
    }
    @IBAction func styleButtonIn(_ sender: UIButton) {
        imagechanger.image = UIImage(named: "IMG_93FEEC47152D-1")
    }
}
