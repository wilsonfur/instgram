//
//  CameraViewController.swift
//  instgram
//
//  Created by wilson on 2017/11/4.
//  Copyright © 2017年 wilson. All rights reserved.
//
//  picker.sourceType = UIImagePickerControllerSourceType.photoLibrary(圖庫)



import UIKit

 class CameraViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    override func viewDidLoad() {
        if UIImagePickerController.isSourceTypeAvailable(.camera) {
            let picker = UIImagePickerController()
            picker.cameraDevice =  UIImagePickerControllerCameraDevice.front
            picker.delegate = self
            picker.sourceType = UIImagePickerControllerSourceType.camera
            picker.allowsEditing = true
            self.present(picker, animated: false, completion: nil)
        } else {
            print("can't find camera")
        }
        //super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
