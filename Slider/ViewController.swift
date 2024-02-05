//
//  ViewController.swift
//  Slider
//
//  Created by Gennady on 04.02.2024.
//

import UIKit

final class ViewController: UIViewController {
    @IBOutlet var colorView: UIView!
    
    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    
    @IBOutlet var redLabel: UILabel!
    @IBOutlet var greenLabel: UILabel!
    @IBOutlet var blueLabel: UIStackView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateColorView()
    }

    @IBAction func sliderValueChanged(_ sender: UISlider) {
        updateColorView()
    }
    
    func updateColorView() {
        let red = CGFloat(redSlider.value)
        let green = CGFloat(greenSlider.value)
        let blue = CGFloat(blueSlider.value)
        
        colorView.backgroundColor = UIColor(red: red, green: green, blue: blue, alpha: 1.0)
        
        redLabel.text = String(format: "%.2f", redSlider.value)
        greenLabel.text = String(format: "%.2f", greenSlider.value)
//        blueLabel.text = String(format: "%.2f", blueSlider.value)
        
        redSlider.minimumTrackTintColor = UIColor(red: red, green: 0, blue: 0, alpha: 1)
        greenSlider.minimumTrackTintColor = UIColor(red: 0, green: green, blue: 0, alpha: 1)
        blueSlider.minimumTrackTintColor = UIColor(red: 0, green: 0, blue: blue, alpha: 1)
    }
    
}

