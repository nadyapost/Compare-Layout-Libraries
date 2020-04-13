//
//  ViewControllerWithSnapkit.swift
//  TestPureLayoutLibrary
//
//  Created by Nadya Post on 8/4/20.
//  Copyright © 2020 Nadya Post. All rights reserved.
//

import UIKit
import SnapKit

class ViewControllerWithSnapkit: UIViewController {
    let vStackView = UIStackView()
    
    let hStackView: UIStackView = {
        let stackView = UIStackView()
        stackView.axis = .horizontal
        stackView.spacing = 8
        stackView.distribution = .fillEqually
        return stackView
    }()
    
    let blueView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        return view
        }()
    let redView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        return view
        }()
    let yellowView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return view
        }()
    let greenView: UIView = {
        let view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return view
        }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupVStack()
        setupViews()
        addViewsToHstack()
        
        view.backgroundColor = #colorLiteral(red: 0.05882352963, green: 0.180392161, blue: 0.2470588237, alpha: 1)
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
    }
    func setupVStack() {
        vStackView.axis = .vertical
        vStackView.spacing = 20
        view.addSubview(vStackView)
        vStackView.snp.makeConstraints { make in
            make.edges.equalTo(self.view)
        }
    }
    func setupViews() {
        vStackView.addSubview(blueView)
        blueView.snp.makeConstraints { make in
            make.height.equalTo(100)
            make.leading.trailing.equalTo(view)
        }
        vStackView.addSubview(redView)
        redView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view)
            make.height.equalTo(blueView)
        }
        vStackView.addSubview(hStackView)
        hStackView.snp.makeConstraints { make in
            make.center.equalTo(vStackView)
        }
        vStackView.addSubview(yellowView)
        yellowView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view)
            make.height.equalTo(blueView)
        }
        vStackView.addSubview(greenView)
        greenView.snp.makeConstraints { make in
            make.leading.trailing.equalTo(view)
            make.height.equalTo(blueView)
        }

        vStackView.addArrangedSubviews([UIView(), blueView, redView, hStackView, yellowView, greenView, UIView()])
    }
    func addViewsToHstack() {
        let purpleView: UIView = {
            let view = UIView()
            view.backgroundColor = #colorLiteral(red: 0.1764705926, green: 0.01176470611, blue: 0.5607843399, alpha: 1)
            view.snp.makeConstraints { make in
                make.height.equalTo(200)
            }
            hStackView.addSubview(view)
            return view
        }()
        let peachView: UIView = {
            let view = UIView()
            view.backgroundColor = #colorLiteral(red: 0.9568627477, green: 0.6588235497, blue: 0.5450980663, alpha: 1)
            view.snp.makeConstraints { make in
                make.height.equalTo(200)
            }
            hStackView.addSubview(view)
            return view
        }()
        let pinkView: UIView = {
            let view = UIView()
            view.backgroundColor = #colorLiteral(red: 0.5725490451, green: 0, blue: 0.2313725501, alpha: 1)
            view.snp.makeConstraints { make in
                make.height.equalTo(200)
            }
            hStackView.addSubview(view)
            return view
        }()
        hStackView.addArrangedSubviews([purpleView, peachView, pinkView])
    }
}









extension UIStackView {
    func addArrangedSubviews(_ views: [UIView]) {
        for view in views {
            addArrangedSubview(view)
        }
    }
}
