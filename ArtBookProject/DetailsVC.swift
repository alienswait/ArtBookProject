//
//  DetailsVC.swift
//  ArtBookProject
//
//  Created by Mertcan Ünek on 14.06.2023.
//

import UIKit

class DetailsVC: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {

    
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var nameText: UITextField!
    @IBOutlet weak var artistText: UITextField!
    @IBOutlet weak var yearText: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //Recognizers
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        view.addGestureRecognizer(gestureRecognizer)
        imageView.isUserInteractionEnabled = true
        let imageTapRecognizer = UITapGestureRecognizer(target: self, action: #selector(selectImage))
        imageView.addGestureRecognizer(imageTapRecognizer)
    }
    

    @IBAction func saveButton(_ sender: Any) {
    }
    
    @objc func selectImage(){
        
        let picker = UIImagePickerController()
        picker.delegate = self
        picker.sourceType = .photoLibrary
        picker.allowsEditing = true
        present(picker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        imageView.image = info[.originalImage] as? UIImage
        
        self.dismiss(animated: true, completion: nil)
    }
                    
    @objc func hideKeyboard(){
        
        view.endEditing(true)
    }

}
