//
//  ViewController.swift
//  MemeMe
//
//  Created by Akbal Juarez on 7/28/15.
//  Copyright (c) 2015 Akbalini. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate, UITextViewDelegate, UITextFieldDelegate{

    
    @IBOutlet var imageChossen: UIImageView!
    @IBOutlet var cameraButton: UIBarButtonItem!
    
    @IBOutlet var textField1: UITextField!
    @IBOutlet var textField2: UITextField!
    
    
    let memeTextAttributes = [
        NSStrokeColorAttributeName : UIColor.whiteColor(),
        NSForegroundColorAttributeName : UIColor.blueColor(),
        NSFontAttributeName : UIFont(name: "HelveticaNeue-CondensedBlack", size: 40)!,
        NSStrokeWidthAttributeName : 3
    ]
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(true)
        cameraButton.enabled = UIImagePickerController.isSourceTypeAvailable(UIImagePickerControllerSourceType.Camera)
        
        
        
    }
    
    func textSetUp(){
        textField1.defaultTextAttributes = memeTextAttributes
        textField2.defaultTextAttributes = memeTextAttributes
        textField1.textAlignment = NSTextAlignment.Center
        textField2.textAlignment = NSTextAlignment.Center
        textField1.delegate = self
        textField2.delegate = self
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        textSetUp()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func chooseOrTakePicture(sender: AnyObject) {
        let imagePicker = UIImagePickerController()
        
        imagePicker.delegate = self
        
        if sender.tag == 101 && cameraButton.enabled {
            imagePicker.sourceType =         UIImagePickerControllerSourceType.Camera
        }else {
            imagePicker.sourceType = UIImagePickerControllerSourceType.PhotoLibrary
        }
        
        presentViewController(imagePicker, animated: true, completion: nil)
        
    }
    
    func imagePickerController(picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [NSObject : AnyObject]) {
        if var image = info[UIImagePickerControllerOriginalImage] as? UIImage {
            imageChossen.image = image
            dismissViewControllerAnimated(true, completion: nil)
        }
    }
    
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        return true
    }

}

