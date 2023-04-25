//
//  ProfileViewController.swift
//  Navigation
//
//  Created by Admin on 12.04.2023.
//  Copyright © 2023 Admin. All rights reserved.
//

import UIKit

class ProfileViewController: UIViewController {

    
           
    private let profileHeaderView = { () -> ProfileHeaderView in
        let  view =  ProfileHeaderView()
        
        return view
    }()
    
   private let stackViewButtons: UIStackView = {
       let stackView = UIStackView()
       stackView.axis = .vertical
       stackView.spacing = 10
                       
       return stackView
   }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .lightGray
        title = "Profile"
        
        translatesAutoresizingMaskIntoConstraints()
        addSubviews()
        setupContraints()
       
        
    }
    
    private func translatesAutoresizingMaskIntoConstraints() {
        profileHeaderView.translatesAutoresizingMaskIntoConstraints = false
        stackViewButtons.translatesAutoresizingMaskIntoConstraints = false
        
    }

    private func addSubviews() {
        view.addSubview(profileHeaderView)
        
    }
    
    private func setupContraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        NSLayoutConstraint.activate([
           
            //profileHeaderView
            profileHeaderView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor),
            
            profileHeaderView.topAnchor.constraint(
                equalTo: safeAreaGuide.topAnchor),
            
            profileHeaderView.leadingAnchor.constraint(
                equalTo: view.leadingAnchor,
                constant: 0),
            
            profileHeaderView.trailingAnchor.constraint(
                equalTo: view.trailingAnchor,
                constant: 0),
            
            profileHeaderView.topAnchor.constraint(
                equalTo: safeAreaGuide.topAnchor,
                constant: 0),
            profileHeaderView.heightAnchor.constraint(
                equalToConstant: 220),
             ])
        }



}


