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
    @IBOutlet weak var lllabel: UILabel!
    
    
// Aussehen vom Feld //
    
    @IBOutlet weak var imagechanger: UIImageView!
    
    var klick = 0
    var imagek = true
    var letzterbutton = 0
    var last = 10
    var lol = 0
    var nnn = 0
    
    func updatelabel() {
        if klick == 0 || klick == 1 {
            if klick == 0 {
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
        if nnn == 10 {
            erklärungstext.text = ""
            er2.text = ""
            lllabel.text = "Unentschieden"
            lllabel.textColor = .black
        }
    }
    func labelN() {
        klick = 0
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
        lol = 1
        klick = 2
    }
    func Owins() {
        er2.text = "O"
        er2.textColor = .blue
        erklärungstext.text = "Wins"
        lol = 1
        klick = 2
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
        er2.text = ""
        erklärungstext.text = ""
        buttonx.setTitle("", for: .normal)
        buttonO.setTitle("", for: .normal)
        lllabel.text = ""
    }
    
    @IBAction func buttonklick(_ sender: UIButton) {
        // Gewinnprüfung //
                
        if label1.text == "X" , label2.text == "X" , label3.text == "X" {
            Xwins()
        }
        if label4.text == "X" , label5.text == "X" , label6.text == "X" {
            Xwins()
        }
        if label7.text == "X" , label8.text == "X" , label9.text == "X" {
            Xwins()
        }
        if label1.text == "X" , label4.text == "X" , label7.text == "X" {
            Xwins()
        }
        if label2.text == "X" , label5.text == "X" , label8.text == "X" {
            Xwins()
        }
        if label3.text == "X" , label6.text == "X" , label9.text == "X" {
            Xwins()
        }
        if label1.text == "X" , label5.text == "X" , label9.text == "X" {
            Xwins()
        }
        if label3.text == "X" , label5.text == "X" , label7.text == "X" {
            Xwins()
        }
        if label1.text == "O" , label2.text == "O" , label3.text == "O" {
            Owins()
        }
        if label4.text == "O" , label5.text == "O" , label6.text == "O" {
            Owins()
        }
        if label7.text == "O" , label8.text == "O" , label9.text == "O" {
            Owins()
        }
        if label1.text == "O" , label4.text == "O" , label7.text == "O" {
            Owins()
        }
        if label2.text == "O" , label5.text == "O" , label8.text == "O" {
            Owins()
        }
        if label3.text == "O" , label6.text == "O" , label9.text == "O" {
            Owins()
        }
        if label1.text == "O" , label5.text == "O" , label9.text == "O" {
            Owins()
        }
        if label3.text == "O" , label5.text == "O" , label7.text == "O" {
            Owins()
        }
        if lol == 0{
            if sender == button1label  {
                if label1.text == "" {
                    if klick == 0 {
                        label1.text = "X"
                        label1.textColor = .red
                        label1.textAlignment = .center
                        klick = 1
                    }else {
                        label1.text = "O"
                        label1.textColor = .blue
                        label1.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 1
                    nnn += 2
                }
            } else if sender == button2label {
                if label2.text == "" {
                    if klick == 0 {
                        label2.text = "X"
                        label2.textColor = .red
                        label2.textAlignment = .center
                        klick = 1
                    }else {
                        label2.text = "O"
                        label2.textColor = .blue
                        label2.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 2
                    nnn += 1
                }
            } else if sender == button3label {
                if label3.text == "" {
                    if klick == 0 {
                        label3.text = "X"
                        label3.textColor = .red
                        label3.textAlignment = .center
                        klick = 1
                    }else {
                        label3.text = "O"
                        label3.textColor = .blue
                        label3.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 3
                    nnn += 1
                }
            } else if sender == button4label{
                if label4.text == "" {
                    if klick == 0 {
                        label4.text = "X"
                        label4.textColor = .red
                        label4.textAlignment = .center
                        klick = 1
                    }else {
                        label4.text = "O"
                        label4.textColor = .blue
                        label4.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 4
                    nnn += 1
                }
            } else if sender == button5label {
                if label5.text == "" {
                    if klick == 0 {
                        label5.text = "X"
                        label5.textColor = .red
                        label5.textAlignment = .center
                        klick = 1
                    }else {
                        label5.text = "O"
                        label5.textColor = .blue
                        label5.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 5
                    nnn += 1
                }
            } else if sender == button6label {
                if label6.text == "" {
                    if klick == 0 {
                        label6.text = "X"
                        label6.textColor = .red
                        label6.textAlignment = .center
                        klick = 1
                    }else {
                        label6.text = "O"
                        label6.textColor = .blue
                        label6.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 6
                    nnn += 1
                }
            } else if sender == button7label {
                if label7.text == "" {
                    if klick == 0 {
                        label7.text = "X"
                        label7.textColor = .red
                        label7.textAlignment = .center
                        klick = 1
                    }else {
                        label7.text = "O"
                        label7.textColor = .blue
                        label7.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 7
                    nnn += 1
                }
            } else if sender == button8label {
                if label8.text == "" {
                    if klick == 0 {
                        label8.text = "X"
                        label8.textColor = .red
                        label8.textAlignment = .center
                        klick = 1
                    }else {
                        label8.text = "O"
                        label8.textColor = .blue
                        label8.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 8
                    nnn += 1
                }
            } else if sender == button9label {
                if label9.text == "" {
                    if klick == 0 {
                        label9.text = "X"
                        label9.textColor = .red
                        label9.textAlignment = .center
                        klick = 1
                    }else {
                        label9.text = "O"
                        label9.textColor = .blue
                        label9.textAlignment = .center
                        klick = 0
                    }
                    letzterbutton = 9
                    nnn += 1
                }
            }
        updatelabel()
        }
    }
    
// Reset Knopf //
    
    @IBAction func reset(_ sender: UIButton) {
        labelN()
        erklärungstext.text = ""
        er2.text = ""
        letzterbutton = 0
        lol = 0
        nnn = 0
        lllabel.text = ""
    }
    
// Auswählen mit was man anfangen möchte //
    
    @IBAction func xbutton(_ sender: UIButton) {
        if letzterbutton == 0 {
           klick = 0
            er2.text = "X"
            er2.textColor = .red
            erklärungstext.text = "ist am Zug"
        }
    }
    @IBAction func obutton(_ sender: UIButton) {
        if letzterbutton == 0 {
            klick = 1
            er2.text = "O"
            er2.textColor = .blue
            erklärungstext.text = "ist am Zug"
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
