//
//  ViewController.swift
//  Calculator
//
//  Created by Assylan Sovetov on 28.02.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private var sizeOfLabels: CGFloat = 65
    private var grayColor = UIColor(red: 220/255, green: 220/255, blue: 220/255, alpha: 1)
//    private var grayColorByHex =  UIColor(hex: "F00")
    private var orangeColor =  UIColor(red: 255/255, green: 149/255, blue: 0/255, alpha: 1)
    private lazy var myLabelInput: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: 80)
        return label
    }()
    private lazy var myLabelZero: UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myZero: UIView = {
        let view = UIView()
        view.backgroundColor = grayColor
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    private lazy var myLabelOne: UILabel = {
        let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
//        label.backgroundColor = UIColor.clear.withAlphaComponent(0.1)
//        label.frame = CGRect(x: 0, y: 0, width: 100, height: 100)
        return label
    }()
    
    private lazy var myOne: UIView = {
        let view = UIView()
        view.backgroundColor = grayColor
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor.black.cgColor
        return view
    }()
    
    private lazy var myLabelTwo: UILabel = {
        let label = UILabel()
        label.text = "2"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelThree: UILabel = {
        let label = UILabel()
        label.text = "3"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelFour: UILabel = {
        let label = UILabel()
        label.text = "4"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelFive: UILabel = {
        let label = UILabel()
        label.text = "5"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelSix: UILabel = {
        let label = UILabel()
        label.text = "6"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelSeven: UILabel = {
        let label = UILabel()
        label.text = "7"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelEight: UILabel = {
        let label = UILabel()
        label.text = "8"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelNine: UILabel = {
        let label = UILabel()
        label.text = "9"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelEqual: UILabel = {
        let label = UILabel()
        label.text = "="
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelColon: UILabel = {
        let label = UILabel()
        label.text = ","
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelPlus: UILabel = {
        let label = UILabel()
        label.text = "+"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelMinus: UILabel = {
        let label = UILabel()
        label.text = "-"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelMultiply: UILabel = {
        let label = UILabel()
        label.text = "x"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelDivide: UILabel = {
        let label = UILabel()
        label.text = "÷"
        label.textColor = .white
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelPercent: UILabel = {
        let label = UILabel()
        label.text = "%"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelPlusMinus: UILabel = {
        let label = UILabel()
        label.text = "±"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myLabelClear: UILabel = {
        let label = UILabel()
        label.text = "C"
        label.textColor = .black
        label.font = UIFont.boldSystemFont(ofSize: sizeOfLabels)
        return label
    }()
    private lazy var myTwo: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myThree: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myFour: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myFive: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var mySix: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var mySeven: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myEight: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myNine: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myEqual: UIView = {
            let view = UIView()
            view.backgroundColor = orangeColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myColon: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myPlus: UIView = {
            let view = UIView()
            view.backgroundColor = orangeColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myMinus: UIView = {
            let view = UIView()
            view.backgroundColor = orangeColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myMultiply: UIView = {
            let view = UIView()
            view.backgroundColor = orangeColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myDivide: UIView = {
            let view = UIView()
            view.backgroundColor = orangeColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myPercent: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myPlusMinus: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()
        private lazy var myClear: UIView = {
            let view = UIView()
            view.backgroundColor = grayColor
            view.layer.borderWidth = 2
            view.layer.borderColor = UIColor.black.cgColor
            return view
        }()


    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        view.backgroundColor = UIColor.black
        
        setupViews()
        setupConstraints()
    }
    

}

//Mark: - Setup vievs and constraints methods

private extension ViewController{
    
    func setupViews(){
        view.addSubview(myLabelInput)
        view.addSubview(myZero)
        myZero.addSubview(myLabelZero)
        view.addSubview(myOne)
        myOne.addSubview(myLabelOne)
        view.addSubview(myTwo)
        myTwo.addSubview(myLabelTwo)
        view.addSubview(myThree)
        myThree.addSubview(myLabelThree)
        view.addSubview(myFour)
        myFour.addSubview(myLabelFour)
        view.addSubview(myFive)
        myFive.addSubview(myLabelFive)
        view.addSubview(mySix)
        mySix.addSubview(myLabelSix)
        view.addSubview(mySeven)
        mySeven.addSubview(myLabelSeven)
        view.addSubview(myEight)
        myEight.addSubview(myLabelEight)
        view.addSubview(myNine)
        myNine.addSubview(myLabelNine)
        view.addSubview(myEqual)
        myEqual.addSubview(myLabelEqual)
        view.addSubview(myColon)
        myColon.addSubview(myLabelColon)
        view.addSubview(myPlus)
        myPlus.addSubview(myLabelPlus)
        view.addSubview(myMinus)
        myMinus.addSubview(myLabelMinus)
        view.addSubview(myMultiply)
        myMultiply.addSubview(myLabelMultiply)
        view.addSubview(myDivide)
        myDivide.addSubview(myLabelDivide)
        view.addSubview(myPercent)
        myPercent.addSubview(myLabelPercent)
        view.addSubview(myPlusMinus)
        myPlusMinus.addSubview(myLabelPlusMinus)
        view.addSubview(myClear)
        myClear.addSubview(myLabelClear)


    }
    func setupConstraints(){
        
        myLabelInput.snp.makeConstraints { make in
            make.bottom.equalTo(myClear.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(5)
        }
        myZero.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(2)
        }
        myLabelZero.snp.makeConstraints { make in
            make.width.equalTo(myZero.snp.width).dividedBy(2)
            make.center.equalToSuperview()
            make.leading.equalTo(35)
        }
        myColon.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myZero.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
            
        }
        myLabelColon.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myEqual.snp.makeConstraints { make in
            make.bottom.equalTo(view.safeAreaLayoutGuide.snp.bottom)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myColon.snp.trailing)
//            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
            make.trailing.equalTo(view.safeAreaLayoutGuide.snp.trailing)
            
        }
        myLabelEqual.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myOne.snp.makeConstraints { make in
            make.bottom.equalTo(myZero.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelOne.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myTwo.snp.makeConstraints { make in
            make.bottom.equalTo(myZero.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myOne.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelTwo.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myThree.snp.makeConstraints { make in
            make.bottom.equalTo(myZero.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myTwo.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelThree.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myPlus.snp.makeConstraints { make in
            make.bottom.equalTo(myZero.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myThree.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelPlus.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        myFour.snp.makeConstraints { make in
            make.bottom.equalTo(myOne.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelFour.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myFive.snp.makeConstraints { make in
            make.bottom.equalTo(myOne.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myFour.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelFive.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        mySix.snp.makeConstraints { make in
            make.bottom.equalTo(myOne.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myFive.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelSix.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myMinus.snp.makeConstraints { make in
            make.bottom.equalTo(myOne.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(mySix.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelMinus.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        
        mySeven.snp.makeConstraints { make in
            make.bottom.equalTo(myFour.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelSeven.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myEight.snp.makeConstraints { make in
            make.bottom.equalTo(myFour.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(mySeven.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelEight.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myNine.snp.makeConstraints { make in
            make.bottom.equalTo(myFour.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myEight.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelNine.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myMultiply.snp.makeConstraints { make in
            make.bottom.equalTo(myFour.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myNine.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelMultiply.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myClear.snp.makeConstraints { make in
            make.bottom.equalTo(mySeven.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(view.safeAreaLayoutGuide.snp.leading)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelClear.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myPlusMinus.snp.makeConstraints { make in
            make.bottom.equalTo(mySeven.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myClear.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelPlusMinus.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myPercent.snp.makeConstraints { make in
            make.bottom.equalTo(mySeven.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myPlusMinus.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelPercent.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }
        myDivide.snp.makeConstraints { make in
            make.bottom.equalTo(mySeven.snp.top)
            make.height.equalTo(view.safeAreaLayoutGuide.snp.height).dividedBy(7)
            make.leading.equalTo(myPercent.snp.trailing)
            make.width.equalTo(view.safeAreaLayoutGuide.snp.width).dividedBy(4)
        }
        myLabelDivide.snp.makeConstraints { make in
            make.center.equalToSuperview()
        }

    }
}

