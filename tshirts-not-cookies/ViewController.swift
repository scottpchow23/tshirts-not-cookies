//
//  ViewController.swift
//  tshirts-not-cookies
//
//  Created by Scott P. Chow on 1/7/19.
//  Copyright © 2019 Scott Chow. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var countLabel: UILabel!

    var count = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        print("View did load")
    }

    @IBAction func tapButtonTUI(_ sender: Any) {
        print("Button was tapped")
        incrementCount()

        self.view.backgroundColor = randomColor()
    }

    func randomColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        print("Created the color r:\(red * 255) b:\(blue * 255) g:\(green * 255)")

        return UIColor(red: red, green: green, blue: blue, alpha: 1)
    }

    func incrementCount() {
        count = count + 1
        print("\(count) t-shirts")
        countLabel.text = "\(count) t-shirts"
    }
}

