//
//  ViewController.swift
//  first SnapKit Project
//
//  Created by fortune cookie on 1/25/24.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var pauseButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "pause"), for: .normal)
        return button
    }()
    
    private lazy var forwardButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "forward"), for: .normal)
        return button
    }()
    
    private lazy var backButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "back"), for: .normal)
        return button
    }()
    
    private lazy var shakeButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "shake"), for: .normal)
        return button
    }()
    
    private lazy var repeatButton: UIButton = {
        let button = UIButton()
        button.setImage(UIImage(named: "repeat"), for: .normal)
        return button
    }()
    
    private lazy var companyLabel: UILabel = {
        let label = UILabel()
        label.text = "PsychologiOS 2024®"
        label.font = UIFont.systemFont(ofSize: 16, weight: .thin)
        label.textColor = .gray
        return label
    }()
    
    private var interfaceView: InterfaceInformationViewController = {
        InterfaceInformationViewController()
    }()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupViews()
    }
 
    private func setupViews(){
        view.addSubview(interfaceView)
        interfaceView.snp.makeConstraints({make in
            make.center.equalToSuperview()
            make.width.height.equalToSuperview()
            interfaceView.layer.borderWidth = 1
            interfaceView.layer.borderColor = UIColor.black.cgColor
        })
        view.addSubview(pauseButton)
        pauseButton.snp.makeConstraints({make in
            make.centerX.equalToSuperview()
            make.top.equalTo(interfaceView.snp_bottomMargin).offset(-170)
        })
      
        view.addSubview(forwardButton)
        forwardButton.snp.makeConstraints({make in
            make.left.equalTo(pauseButton.snp_rightMargin).offset(44)
            make.top.equalTo(interfaceView.snp_bottomMargin).offset(-140)
        })
        view.addSubview(backButton)
        backButton.snp.makeConstraints({make in
            make.right.equalTo(pauseButton.snp_leftMargin).offset(-44)
            make.top.equalTo(interfaceView.snp_bottomMargin).offset(-140)
        })
        view.addSubview(repeatButton)
        repeatButton.snp.makeConstraints({make in
            make.right.equalTo(forwardButton.snp_leftMargin).offset(50)
            make.top.equalTo(interfaceView.snp_bottomMargin).offset(-140)
        })
        view.addSubview(shakeButton)
        shakeButton.snp.makeConstraints({make in
            make.left.equalTo(backButton.snp_rightMargin).offset(-50)
            make.top.equalTo(interfaceView.snp_bottomMargin).offset(-140)
        })
        view.addSubview(companyLabel)
        companyLabel.snp.makeConstraints({make in
            make.centerX.equalToSuperview()
            make.bottom.equalToSuperview().offset(-45)
        })
    
    }

}

