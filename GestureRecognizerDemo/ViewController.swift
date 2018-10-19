//
//  ViewController.swift
//  GestureRecognizerDemo
//
//  Created by Mostafa AbdEl Fatah on 10/19/18.
//  Copyright © 2018 Mostafa AbdEl Fatah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var backgroundView: UIView!{
        didSet{
            /*let swipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.backgroundViewSwiped))
            swipe.direction = [.left,.right]*/
            let leftSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.backgroundViewLeftSwiped))
            leftSwipe.direction = [.left]
            let rightSwipe = UISwipeGestureRecognizer(target: self, action: #selector(ViewController.backgroundViewRightSwiped))
            rightSwipe.direction = [.right]
            backgroundView.addGestureRecognizer(leftSwipe)
            backgroundView.addGestureRecognizer(rightSwipe)
            let pinch = UIPinchGestureRecognizer(target: self, action: #selector(ViewController.backgroundViewPinch(_:)))
            backgroundView.addGestureRecognizer(pinch)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    @objc func backgroundViewPinch(_ sender:UIPinchGestureRecognizer){
        print("\(sender.scale)")
        let num = Int(sender.scale) + 10
        numberLabel.font = numberLabel.font.withSize(CGFloat( num * 15 ) )
    }
    
    @objc func backgroundViewLeftSwiped(_ sender:UISwipeGestureRecognizer){
        var num = Int( numberLabel.text! )!
        num -= 1
        numberLabel.text = "\(num)"
    }
    
    @objc func backgroundViewRightSwiped(_ sender:UISwipeGestureRecognizer){
        var num = Int( numberLabel.text! )!
        num += 1
        numberLabel.text = "\(num)"
    }
    
    @IBAction func backgroundViewTaped(_ sender: UITapGestureRecognizer) {
        backgroundView.backgroundColor = UIColor.randomColor()
    }
    


}

