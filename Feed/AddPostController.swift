//
//  AddPostController.swift
//  Feed
//
//  Created by Shaun Chua on 3/20/17.
//  Copyright © 2017 Shaun Chua. All rights reserved.
//

import UIKit

class AddPostController: UIViewController {
    
    //container view
    let inputsContainerView: UIView = {
        let view = UIView()
        view.backgroundColor = UIColor.white
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        return view
    }()
    
    override func viewDidLoad() {

        super.viewDidLoad()

        view.backgroundColor = UIColor.white
        
        //navigation bar/item
        navigationItem.title = "New Post"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Cancel", style: .plain, target: self, action: #selector(handleCancel))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "Post", style: .plain, target: self, action: #selector(handlePost))
        
        //status box
        self.automaticallyAdjustsScrollViewInsets = false
        
        view.addSubview(inputsContainerView)
        
        setUpViews()
        
    }

    func handleCancel() {
        dismiss(animated: true, completion: nil)
    }
    
    func handlePost(){
        dismiss(animated: true, completion: nil)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //status box
    lazy var statusUpdateTextView: UITextView = {
        let textView = UITextView()
        textView.translatesAutoresizingMaskIntoConstraints = false
        textView.backgroundColor = UIColor.lightGray
        textView.font = UIFont.systemFont(ofSize: 14)
        textView.textColor = UIColor.white
        textView.font = UIFont(name: "Avenir", size: 12)
        //        textView.textAlignment = NSTextAlignment.justified
        // Make UITextView web links clickable
        //        textView.isSelectable = true
        //        textView.isEditable = true
        //        textView.dataDetectorTypes = UIDataDetectorTypes.link
        textView.layer.cornerRadius = 10
        //        textView.autocorrectionType = UITextAutocorrectionType.yes
        //        textView.spellCheckingType = UITextSpellCheckingType.yes
        return textView
    }()
    
    //photo picker
    lazy var galleryStatusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "gallery")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.contentMode = .scaleAspectFit
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(photoSelector)))
        imageView.isUserInteractionEnabled = true
        return imageView
    }()
    
    //camera view
    lazy var cameraStatusImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.image = UIImage(named: "camera")
        imageView.translatesAutoresizingMaskIntoConstraints = false
        imageView.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(camera)))
        imageView.contentMode = .scaleAspectFit
        imageView.isUserInteractionEnabled = true
        return imageView
    }()

    
    func setUpViews(){
        
        inputsContainerView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        inputsContainerView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: 25).isActive = true
        inputsContainerView.widthAnchor.constraint(equalTo: view.widthAnchor, constant: -40).isActive = true
        inputsContainerView.heightAnchor.constraint(equalTo: view.heightAnchor, constant: -150).isActive = true

        inputsContainerView.addSubview(statusUpdateTextView)
        inputsContainerView.addSubview(galleryStatusImageView)
        inputsContainerView.addSubview(cameraStatusImageView)
        
        //statusUpdateTextView constraints
        statusUpdateTextView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        statusUpdateTextView.topAnchor.constraint(equalTo: inputsContainerView.topAnchor).isActive = true
        statusUpdateTextView.widthAnchor.constraint(equalTo: inputsContainerView.widthAnchor).isActive = true
        statusUpdateTextView.heightAnchor.constraint(equalTo: inputsContainerView.heightAnchor, constant: -100).isActive = true
        
        //cameraStatusImageView constraints
        galleryStatusImageView.rightAnchor.constraint(equalTo: inputsContainerView.rightAnchor).isActive = true
        galleryStatusImageView.bottomAnchor.constraint(equalTo: inputsContainerView.bottomAnchor).isActive = true
        galleryStatusImageView.topAnchor.constraint(equalTo: statusUpdateTextView.bottomAnchor, constant: 10).isActive = true
        
        //photoStatusImageView constraints
        cameraStatusImageView.leftAnchor.constraint(equalTo: inputsContainerView.leftAnchor).isActive = true
        cameraStatusImageView.topAnchor.constraint(equalTo: statusUpdateTextView.bottomAnchor).isActive = true
        cameraStatusImageView.bottomAnchor.constraint(equalTo: inputsContainerView.bottomAnchor).isActive = true
        
        

    }

}



