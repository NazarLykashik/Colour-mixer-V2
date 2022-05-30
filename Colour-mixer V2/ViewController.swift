//
//  ViewController.swift
//  Colour-mixer V2
//
//  Created by Nazar Lykashik on 30.05.22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var colorView: UIView!
    @IBOutlet weak var redLabel: UILabel!
    @IBOutlet weak var greenLabel: UILabel!
    @IBOutlet weak var blueLabel: UILabel!
    
   
    @IBOutlet weak var redSlider: UISlider!
    @IBOutlet weak var greenSlider: UISlider!
    @IBOutlet weak var blueSlider: UISlider!
    
    @IBOutlet weak var redTextField: UITextField!
    @IBOutlet weak var greenTextField: UITextField!
    @IBOutlet weak var blueTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //скругление углов
        colorView.layer.cornerRadius = 15
        
        //цвет слайдера
        redSlider.tintColor = .red
        greenSlider.tintColor = .green
        
        setColor()
        setValueForLabel()
        setValueForTextField()
        
        // Do any additional setup after loading the view.
    }
    //измение цветов слайдерами

    @IBAction func rgbSliders(_ sender: UISlider) {
        switch sender.tag{
        case 0:
            redLabel.text = string(from: sender)
            redTextField.text = string(from: sender)
        case 1:
            greenLabel.text = string(from: sender)
            greenTextField.text = string(from: sender)
        case 2:
            blueLabel.text  = string(from: sender)
            blueTextField.text = string(from: sender)
        default:
            break
    }
    setColor()
    }
// функция для цвета
    private func setColor() {
        colorView.backgroundColor =  UIColor(red: CGFloat(redSlider.value), green: CGFloat(greenSlider.value), blue: CGFloat(blueSlider.value), alpha: 1)
    }
    //значения для лэйблов из значения слайдера
    private func setValueForLabel() {
        redLabel.text = string(from: redSlider)
        greenLabel.text = string(from: greenSlider)
        blueLabel.text = string(from: blueSlider)
    }
    //значеня для текстовых полей из сладеров
    private func setValueForTextField() {
        redTextField.text = string(from: redSlider)
        greenTextField.text = string(from: greenSlider)
        blueTextField.text = string(from: blueSlider)
    }
    private func string(from slider:UISlider) -> String{
        return String(format: "%.2f", slider.value)
    }
}

