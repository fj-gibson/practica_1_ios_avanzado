//
//  LoaderView.swift
//  padilla.francisco.Animations
//
//  Created by Francisco Padilla on 14/11/22.
//

import UIKit
import Lottie

class LoaderView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        //commonInit()
    }
    
    required init?(coder eDecoder:NSCoder){
        super.init(coder: eDecoder)
        //commonInit()
    }
    
    func commonInit(animation:String){
        let animationView = LottieAnimationView(name: animation)
        animationView.frame = CGRect(x: 0, y: 0, width: 400, height: 400)
        animationView.center = self.center
        animationView.animationSpeed = 0.2
        animationView.contentMode = .scaleAspectFill
        self.addSubview(animationView)
        animationView.play()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        animationView.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        animationView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        animationView.widthAnchor.constraint(equalToConstant: 280).isActive = true
        animationView.heightAnchor.constraint(equalToConstant: 108).isActive = true
    }

}
