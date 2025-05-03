//
//  ViewController.swift
//  IOS 101 - Prework
//
//  Created by user on 5/2/25.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    let imageNames = ["IMG_1", "IMG_2", "IMG_3", "IMG_4"]

    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        
        let randomColor = changeColor()
        view.backgroundColor = randomColor
        changeLabelSet()
        let randomImageName = imageNames.randomElement()!
        imageView.image = UIImage(named: randomImageName)
    }
    
    @IBOutlet weak var labelSetA: UILabel!
    @IBOutlet weak var labelSetB: UILabel!
    @IBOutlet weak var labelSetC: UILabel!
    
    @IBOutlet weak var imageView: UIImageView!
        
    func changeColor() -> UIColor{
        
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    func changeLabelSet(){
        labelSetA.font = UIFont(name: "Times New Roman", size: 15)
        labelSetA.textColor = changeColor()
        labelSetA.backgroundColor = .yellow

        labelSetB.font = UIFont(name: "Times New Roman", size: 15)
        labelSetB.textColor = changeColor()
        labelSetB.backgroundColor = .yellow

        labelSetC.font = UIFont(name: "Times New Roman", size: 15)
        labelSetC.textColor = changeColor()
        labelSetC.backgroundColor = .yellow

    }
}

