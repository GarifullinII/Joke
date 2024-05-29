//
//  ViewController.swift
//  Joke
//
//  Created by Ildar Garifullin on 27/05/2024.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainLabel: UILabel = {
        let label = UILabel()
        label.text = "I am reach"
        label.font = .robotoMedium24()
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    
    private let mainPhotoImageView:  UIImageView = {
        let image = UIImage(named: "diamond.png")
        let imageView = UIImageView(image: image)
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupViews()
        setConstraints()
    }
    
    private func setupViews() {
        view.backgroundColor = .specialBackground
        view.addSubview(mainPhotoImageView)
        view.addSubview(mainLabel)
    }
}

extension MainViewController {
    private func setConstraints() {
        NSLayoutConstraint.activate([
            mainPhotoImageView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainPhotoImageView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            mainPhotoImageView.heightAnchor.constraint(equalToConstant: 100),
            mainPhotoImageView.widthAnchor.constraint(equalToConstant: 100)
        ])
        
        NSLayoutConstraint.activate([
            mainLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            mainLabel.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 50),
        ])
    }
}
