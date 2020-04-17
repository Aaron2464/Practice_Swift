//
//  ViewController.swift
//  AutoLayoutStarter
//
//  Created by Derrick Park on 2019-04-17.
//  Copyright © 2019 Derrick Park. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  let mainView: UIView = {
    let main = UIView()
    // important when setting contraints programmatically
    main.translatesAutoresizingMaskIntoConstraints = false
    main.backgroundColor = .green
    return main
  }()
  
  let squareButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Square", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(squareTapped), for: .touchUpInside)
    return butt
  }()
  
  let portraitButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Portrait", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(portraitTapped), for: .touchUpInside)
    return butt
  }()
  
  let landScapeButton: UIButton = {
    let butt = UIButton(type: .system)
    butt.setTitle("Landscape", for: .normal)
    butt.translatesAutoresizingMaskIntoConstraints = false
    butt.titleLabel?.font = UIFont.boldSystemFont(ofSize: 14)
    butt.addTarget(self, action: #selector(landscapeTapped), for: .touchUpInside)
    return butt
  }()
    
  let purpleBox: UIView = {
    let view = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 50))
//    let view = UIView(frame: CGRect(x: 0, y: 0, width: 0, height: 0))
//    let view = UIView(frame: .zero)

    view.translatesAutoresizingMaskIntoConstraints = false
    view.backgroundColor = .purple
    return view
  }()
    
    let bluebox: UIView = {
        let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 50),
            view.heightAnchor.constraint(equalToConstant: 50)
        ])
        return view
    }()
    
    let bluebox1: UIView = {
           let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .blue
           NSLayoutConstraint.activate([
               view.widthAnchor.constraint(equalToConstant: 50),
               view.heightAnchor.constraint(equalToConstant: 50)
           ])
           return view
       }()
    
    let bluebox2: UIView = {
           let view = UIView(frame: CGRect(x: 0, y: 0, width: 20, height: 20))
           view.translatesAutoresizingMaskIntoConstraints = false
           view.backgroundColor = .blue
           NSLayoutConstraint.activate([
               view.widthAnchor.constraint(equalToConstant: 50),
               view.heightAnchor.constraint(equalToConstant: 50)
           ])
           return view
       }()
    
    let orange: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 70),
            view.heightAnchor.constraint(equalToConstant: 50)
        ])
        return view
    }()
    
    let orange1: UIView = {
        let view = UIView(frame: .zero)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .orange
        
        NSLayoutConstraint.activate([
            view.widthAnchor.constraint(equalToConstant: 30),
            view.heightAnchor.constraint(equalToConstant: 50),
        ])
        return view
    }()
  
  var widthAnchor: NSLayoutConstraint?
  var heightAnchor: NSLayoutConstraint?
  
  override func viewDidLoad() {
    super.viewDidLoad()
    view.backgroundColor = .white
    view.addSubview(mainView)
    setupLayout()
  }

  fileprivate func setupLayout() {
    mainView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    mainView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    widthAnchor = mainView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7, constant: 0)
    widthAnchor?.isActive = true
    
    heightAnchor = mainView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7, constant: 0)
    heightAnchor?.isActive = true
    
    mainView.addSubview(purpleBox)
    NSLayoutConstraint.activate([
        purpleBox.heightAnchor.constraint(equalToConstant: 50),
        purpleBox.widthAnchor.constraint(equalTo: mainView.widthAnchor, multiplier: 0.6),
        purpleBox.bottomAnchor.constraint(equalTo: mainView.bottomAnchor, constant: -20),
        purpleBox.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
    ])
    
    let orangeStackView = UIStackView(arrangedSubviews: [orange,orange1])
    orangeStackView.translatesAutoresizingMaskIntoConstraints = false
    orangeStackView.axis = .horizontal
    orangeStackView.spacing = 10
    orangeStackView.isLayoutMarginsRelativeArrangement = true
    orangeStackView.directionalLayoutMargins = NSDirectionalEdgeInsets(top: 10, leading: 10, bottom: 10, trailing: 10)
    
    let backgroundView = UIView()
    backgroundView.backgroundColor = .red
    backgroundView.translatesAutoresizingMaskIntoConstraints = false
    orangeStackView.insertSubview(backgroundView, at: 0)
    // pin the background view edge to the stack view edge
    NSLayoutConstraint.activate([
        backgroundView.leadingAnchor.constraint(equalTo: orangeStackView.leadingAnchor),
        backgroundView.trailingAnchor.constraint(equalTo: orangeStackView.trailingAnchor),
        backgroundView.topAnchor.constraint(equalTo: orangeStackView.topAnchor),
        backgroundView.bottomAnchor.constraint(equalTo: orangeStackView.bottomAnchor)
    ])

    view.addSubview(orangeStackView)
    
    NSLayoutConstraint.activate([
        orangeStackView.topAnchor.constraint(equalTo: mainView.topAnchor, constant: 20),
        orangeStackView.trailingAnchor.constraint(equalTo: mainView.trailingAnchor, constant: -20)
    ])
    
    let blueBoxStackView = UIStackView(arrangedSubviews: [bluebox, bluebox1, bluebox2])
    blueBoxStackView.translatesAutoresizingMaskIntoConstraints = false
    blueBoxStackView.axis = .vertical
    blueBoxStackView.alignment = .center
    blueBoxStackView.distribution = .equalSpacing
    blueBoxStackView.backgroundColor = .black
    
    view.addSubview(blueBoxStackView)
    NSLayoutConstraint.activate([
        blueBoxStackView.centerYAnchor.constraint(equalTo: mainView.centerYAnchor),
        blueBoxStackView.centerXAnchor.constraint(equalTo: mainView.centerXAnchor),
        blueBoxStackView.heightAnchor.constraint(equalTo: mainView.heightAnchor, multiplier: 0.7),
        blueBoxStackView.widthAnchor.constraint(equalToConstant: 50)
        ])
    
    let buttStackView = UIStackView(arrangedSubviews: [
      squareButton, portraitButton, landScapeButton])
    buttStackView.translatesAutoresizingMaskIntoConstraints = false
    buttStackView.axis = .horizontal
    buttStackView.alignment = .center
    buttStackView.distribution = .fillEqually
    
    view.addSubview(buttStackView)
    NSLayoutConstraint.activate([
      buttStackView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: -50),
      buttStackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
      buttStackView.heightAnchor.constraint(equalToConstant: 50),
      buttStackView.widthAnchor.constraint(equalTo: view.widthAnchor)
      ])
  }

  @objc private func squareTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.9)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func portraitTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.7)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.7)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
  
  @objc private func landscapeTapped() {
    view.layoutIfNeeded()
    UIView.animate(withDuration: 2.0) {
      self.widthAnchor?.isActive = false
      self.widthAnchor? = self.mainView.widthAnchor.constraint(equalTo: self.view.widthAnchor, multiplier: 0.95)
      self.widthAnchor?.isActive = true
      
      self.heightAnchor?.isActive = false
      self.heightAnchor? = self.mainView.heightAnchor.constraint(equalTo: self.view.heightAnchor, multiplier: 0.4)
      self.heightAnchor?.isActive = true
      self.view.layoutIfNeeded()
    }
  }
}

