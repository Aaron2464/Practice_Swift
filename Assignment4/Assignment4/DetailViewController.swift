//
//  DetailViewController.swift
//  Assignment4
//
//  Created by AaronH on 2020-04-23.
//  Copyright © 2020 Derrick Park. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    var city: City!
    let countryTitle: UILabel = {
        let title = UILabel()
        title.text = "Country"
        title.font = title.font.withSize(20)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let country: UILabel = {
        let title = UILabel()
        title.font = title.font.withSize(15)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let cityTitle: UILabel = {
        let title = UILabel()
        title.text = "City"
        title.font = title.font.withSize(20)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let place: UILabel = {
        let title = UILabel()
        title.font = title.font.withSize(15)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let tempTitle: UILabel = {
        let title = UILabel()
        title.text = "Tamperature"
        title.font = title.font.withSize(20)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let temp: UILabel = {
        let title = UILabel()
        title.font = title.font.withSize(15)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let summaryTitle: UILabel = {
        let title = UILabel()
        title.text = "Summary"
        title.font = title.font.withSize(20)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    let summary: UILabel = {
        let title = UILabel()
        title.font = title.font.withSize(15)
        title.translatesAutoresizingMaskIntoConstraints = false
        return title
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        navigationItem.title = city.icon.uppercased()
        
        let image = NSTextAttachment()
        image.image = UIImage(named: "icon-\(city.icon)")
        country.attributedText = NSAttributedString(attachment: image)
        place.text = city.name
        temp.text = String(city.temp)
        summary.text = city.summary
        
        let stackView = UIStackView(arrangedSubviews: [countryTitle, country, cityTitle, place, tempTitle, temp, summaryTitle, summary])
        stackView.translatesAutoresizingMaskIntoConstraints = false
        stackView.axis = .vertical
        stackView.alignment = .center
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        stackView.backgroundColor = .black
        
        view.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            stackView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            stackView.heightAnchor.constraint(equalTo: view.heightAnchor, multiplier: 0.7),
            stackView.widthAnchor.constraint(equalTo: view.widthAnchor, multiplier: 0.7)
        ])
    }
}
