//
//  ViewController.swift
//  CompareLayoutLibraries
//
//  Created by Nadya Post on 13/4/20.
//  Copyright © 2020 Nadya Post. All rights reserved.
//

import UIKit
import EasyPeasy

class EaseyPeasyViewController: UIViewController {
    
    let vStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .vertical
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        return stackView
    }()
    let hStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    func makeUIView(_ color: UIColor) -> UIView {
        let view = UIView()
        view.backgroundColor = color
        return view
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = #colorLiteral(red: 0.1411764706, green: 0.1411764706, blue: 0.1411764706, alpha: 1)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        
        view.addSubview(vStackView)
        vStackView.easy.layout(Margins())
        setupVStackViews()
        addViewsToHstack()
    }
    
    func setupVStackViews() {
        let blueView = makeUIView(#colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1))
        vStackView.addSubview(blueView)
        blueView.easy.layout(
            Height(>=50),
            Left().to(vStackView, .left),
            Right().to(vStackView, .right)
        )
        
        let redView = makeUIView(#colorLiteral(red: 0.7450980544, green: 0.1568627506, blue: 0.07450980693, alpha: 1))
        vStackView.addSubview(redView)
        redView.easy.layout(
            Width().like(blueView)
        )
        vStackView.addSubview(hStackView)
        hStackView.easy.layout(
            Width().like(blueView)
        )
        
        let yellowView = makeUIView(#colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1))
        vStackView.addSubview(yellowView)
        yellowView.easy.layout(
            Width().like(blueView)
        )
        
        let greenView = makeUIView(#colorLiteral(red: 0.5843137503, green: 0.8235294223, blue: 0.4196078479, alpha: 1))
        vStackView.addSubview(greenView)
        greenView.easy.layout(
            Width().like(blueView)
        )

        vStackView.addArrangedSubviews([blueView, redView, hStackView, yellowView, greenView])
    }
    
    func addViewsToHstack() {
        let purpleView = makeUIView(#colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1))
        hStackView.addSubview(purpleView)
        
        let peachView = makeUIView(#colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1))
        hStackView.addSubview(peachView)

        let pinkView = makeUIView(#colorLiteral(red: 0.8549019694, green: 0.250980407, blue: 0.4784313738, alpha: 1))
        hStackView.addSubview(pinkView)

        hStackView.addArrangedSubviews([purpleView, peachView, pinkView])
    }
}

