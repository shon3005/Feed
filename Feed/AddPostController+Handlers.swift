//
//  AddPostController+Handlers.swift
//  Feed
//
//  Created by Lorraine Leung on 3/28/17.
//  Copyright © 2017 Shaun Chua. All rights reserved.
//

import AVFoundation
import UIKit

extension AddPostController: UIImagePickerControllerDelegate, UINavigationControllerDelegate{
    
    func photoSelector(){
        //create image picker controller
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]){
        var selectedImageFromPicker: UIImage?
        
        //to edit image size
        if let editedImage = info["UIImagePickerControllerEditedImage"] as? UIImage{
            selectedImageFromPicker = editedImage
        }
        else if let originalImage = info["UIImagePickerControllerOriginalImage"] as? UIImage{
            selectedImageFromPicker = originalImage
        }
        
        //optional to unwrap selectedImage to display on the imageView
        if let selectedImage = selectedImageFromPicker {
            galleryStatusImageView.image = selectedImage
        }
        
        //dismiss controller
        self.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        dismiss(animated: true, completion: nil)
    }
    
    func camera(){
        
    }
    
}
