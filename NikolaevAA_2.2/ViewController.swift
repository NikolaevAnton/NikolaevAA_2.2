//
//  ViewController.swift
//  NikolaevAA_2.2
//
//  Created by Anton Nikolaev on 22.10.2021.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var viewOutlet: UIView!
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UILabel!
    @IBOutlet var redSliderOutlet: UISlider!
    @IBOutlet var greenSliderOutlet: UISlider!
    @IBOutlet var blueSliderOutlet: UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        valueSlider()
    }
    
    func valueSlider() {
        let red = redSliderOutlet.value
        let green = greenSliderOutlet.value
        let blue = blueSliderOutlet.value
        redLabel.text = "К: \(Int(red * 100))"
        greenLabel.text = "З: \(Int(green * 100))"
        blueLabel.text = "Г: \(Int(blue * 100))"
        colorView(red: red, green: green, blue: blue)
    }
    
    func colorView(red: Float, green: Float, blue: Float) {
        let redCGFloat = CGFloat(red)
        let greenCGFloat = CGFloat(green)
        let blueSGFloat = CGFloat(blue)
        //print("CGFloat red: \(redCGFloat), green: \(greenCGFloat), blue: \(blueSGFloat)")
        let rgbColor = UIColor(red: redCGFloat, green: greenCGFloat, blue: blueSGFloat, alpha: 1.0)
        viewOutlet.backgroundColor = rgbColor
    }

    @IBAction func redSlider() {
        valueSlider()
    }
    
    
    @IBAction func greenSlider() {
        valueSlider()
    }
 
    @IBAction func blueSlider() {
        valueSlider()
    }
    
    
}

