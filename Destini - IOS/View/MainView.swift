//
//  MainView.swift
//  Destini - IOS
//
//  Created by Aidar Asanakunov on 29/7/22.
//

import Foundation
import UIKit
import SnapKit

class MainView: UIView {
    let imageBackground: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "background")
        imageView.contentMode = .scaleAspectFill
        return imageView
    }()
    let textLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .left
        label.textColor = .white
        label.font = .systemFont(ofSize: 26, weight: .bold)
        label.numberOfLines = 0
        return label
    }()
    let firstChoiceButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Поверну направо", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .regular)
        button.setTitleColor(UIColor.white, for: .normal)
        button.titleLabel?.numberOfLines = 0
        button.setBackgroundImage(UIImage(named: "choice2Background"), for: .normal)
        return button
    }()
    let secondChoiceButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Поверну налево", for: .normal)
        button.titleLabel?.font = .systemFont(ofSize: 25, weight: .regular)
        button.titleLabel?.numberOfLines = 0
        button.setTitleColor(UIColor.white, for: .normal)
        button.setBackgroundImage(UIImage(named: "choice1Background"), for: .normal)
        return button
    }()
    override init (frame: CGRect) {
        super.init(frame: frame)
        makeConstraints()
        
    }
    func makeConstraints() {
        self.addSubview(imageBackground)
        imageBackground.addSubview(textLabel)
        self.addSubview(firstChoiceButton)
        self.addSubview(secondChoiceButton)
        
        imageBackground.snp.makeConstraints { make in
            make.top.bottom.trailing.leading.equalToSuperview()
        }
        textLabel.snp.makeConstraints { make in
            make.trailing.leading.equalToSuperview().inset(20)
            make.top.equalToSuperview().inset(180)
        }
        firstChoiceButton.snp.makeConstraints { make in
            make.bottom.equalTo(imageBackground.safeAreaLayoutGuide)
            make.centerX.equalToSuperview()
            make.width.equalTo(380)
            make.height.equalTo(80)
        }
        secondChoiceButton.snp.makeConstraints { make in
            make.bottom.equalTo(firstChoiceButton.snp.top).inset(-20)
            make.centerX.equalToSuperview()
            make.width.equalTo(380)
            make.height.equalTo(80)
        }
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
