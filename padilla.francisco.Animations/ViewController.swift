//
//  ViewController.swift
//  padilla.francisco.Animations
//
//  Created by Francisco Padilla on 14/11/22.
//

import UIKit

class ViewController: UIViewController {
    private var auxAnimation:String? = nil
    override func viewDidLoad() {
        super.viewDidLoad()
        let segmentedControl = UISegmentedControl (items: ["Fish","Chicken","Hamster"])
        segmentedControl.frame = CGRect(x: 10, y: 140, width:self.view.bounds.width - 20, height: 30)
        segmentedControl.selectedSegmentIndex = UISegmentedControl.noSegment
        self.view.addSubview(segmentedControl)
        segmentedControl.selectedSegmentIndex = 0
        let fish = LoaderView()
        fish.frame.size = CGSize(width: 400, height: 400)
        fish.center = self.view.center
        fish.commonInit(animation: "fish")
        view.addSubview(fish)
        view.backgroundColor = .cyan
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .valueChanged)
        segmentedControl.addTarget(self, action: #selector(segmentedControlValueChanged(_:)), for: .touchUpInside)
        
    }
    
    @objc func segmentedControlValueChanged(_ sender: UISegmentedControl) {
        
        let animationView = LoaderView()
        animationView.frame.size = CGSize(width: 400, height: 400)
        animationView.center = self.view.center
        animationView.removeFromSuperview()
        
        if sender.selectedSegmentIndex == 0 {
            animationView.commonInit(animation: "fish")
            view.addSubview(animationView)
            view.backgroundColor = .cyan
        }
        if sender.selectedSegmentIndex == 1 {
            animationView.commonInit(animation: "chicken")
            view.addSubview(animationView)
            view.backgroundColor = .red
        }
        if sender.selectedSegmentIndex == 2 {
            animationView.commonInit(animation: "hamster")
            view.addSubview(animationView)
            view.backgroundColor = .blue
        }
    }

}

