//
//  ViewController.swift
//  TestPureLayoutLibrary
//
//  Created by Nadya Post on 8/4/20.
//  Copyright © 2020 Nadya Post. All rights reserved.
//

import UIKit
import PureLayout

class ViewControllerWithPureLayout: UIViewController {

    let blueView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        return view
        }()
    let redView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = #colorLiteral(red: 1, green: 0.1491314173, blue: 0, alpha: 1)
        return view
        }()
    let pinkView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = #colorLiteral(red: 0.9098039269, green: 0.4784313738, blue: 0.6431372762, alpha: 1)
        return view
        }()
    let yellowView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = #colorLiteral(red: 0.9686274529, green: 0.78039217, blue: 0.3450980484, alpha: 1)
        return view
        }()
    let greenView: UIView = {
        let view = UIView.newAutoLayout()
        view.backgroundColor = #colorLiteral(red: 0.4666666687, green: 0.7647058964, blue: 0.2666666806, alpha: 1)
        return view
        }()

    var didSetupConstraints = false

    override func loadView() {
        view = UIView()
        view.backgroundColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)

        view.addSubview(blueView)
        view.addSubview(redView)
        view.addSubview(pinkView)
        view.addSubview(yellowView)
        view.addSubview(greenView)

//        pinkView.addSubview(blueView)
//        pinkView.addSubview(purpleView)
//        pinkView.addSubview(orangeView)

        view.setNeedsUpdateConstraints() // bootstrap Auto Layout
    }

    override func updateViewConstraints() {
/*         Check a flag didSetupConstraints before creating constraints, because this method may be called multiple times, and we
         only want to create these constraints once. Without this check, the same constraints could be added multiple times,
         which can hurt performance and cause other issues. See Demo 7 (Animation) for an example of code that runs every time. */
        if didSetupConstraints == false {

            blueView.autoPinEdge(toSuperviewSafeArea: .top, withInset: 20)
            blueView.autoSetDimension(.height, toSize: 100.0)
            blueView.autoPinEdge(toSuperviewEdge: .left, withInset: 20.0)
            blueView.autoPinEdge(toSuperviewEdge: .right, withInset: 20.0)


            redView.autoPinEdge(.top, to: .bottom, of: blueView, withOffset: 10)
            redView.autoAlignAxis(toSuperviewAxis: .vertical)
            redView.autoMatch(.width, to: .width, of: blueView)
            redView.autoMatch(.height, to: .height, of: blueView)

            pinkView.autoCenterInSuperview()
            pinkView.autoSetDimension(.height, toSize: 200.0)
            pinkView.autoPinEdge(toSuperviewEdge: .left, withInset: 20.0)
            pinkView.autoPinEdge(toSuperviewEdge: .right, withInset: 20.0)
            setInnerViews()

            yellowView.autoPinEdge(.bottom, to: .top, of: greenView, withOffset: -10.0)
            yellowView.autoAlignAxis(toSuperviewAxis: .vertical)
            yellowView.autoMatch(.width, to: .width, of: blueView)
            yellowView.autoMatch(.height, to: .height, of: blueView)


            greenView.autoPinEdge(toSuperviewSafeArea: .bottom, withInset: 20)
            greenView.autoAlignAxis(toSuperviewAxis: .vertical)
            greenView.autoMatch(.width, to: .width, of: blueView)
            greenView.autoMatch(.height, to: .height, of: blueView)

            didSetupConstraints = true
        }

        super.updateViewConstraints()
    }
    //This setup does not work
    func setInnerViews() {
//        brownView.autoPinEdge(toSuperviewSafeArea: .leading, withInset: 8)
//        brownView.autoAlignAxis(toSuperviewAxis: .horizontal)
//        brownView.autoSetDimensions(to: CGSize(width: 20, height: 200))

//        purpleView.autoCenterInSuperview()
//        purpleView.autoAlignAxis(toSuperviewAxis: .horizontal)
//        purpleView.autoSetDimensions(to: CGSize(width: 20, height: 200))

//        orangeView.autoPinEdge(toSuperviewSafeArea: .trailing, withInset: -8)
//        orangeView.autoAlignAxis(toSuperviewAxis: .horizontal)
//        orangeView.autoSetDimensions(to: CGSize(width: 20, height: 200))

    }
}

