//
//  ViewController.swift
//  Popup
//
//  Created by ayako_sayama on 2017-06-19.
//  Copyright © 2017 ayako_sayama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet weak var greenBtn: UIButton!
    @IBOutlet weak var pinkBtn: UIButton!
    @IBOutlet weak var orangeBtn: UIButton!
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    
    @IBAction func greenAction(_ sender: Any?) {
        let alert = UIAlertController(title:"Save to Folder", message: "Select a folder to save your spot", preferredStyle: UIAlertControllerStyle.alert)
        
        let action1 = UIAlertAction(title: "Beaches", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction!) in
            print("アクション１をタップした時の処理")
        })
        
        let action2 = UIAlertAction(title: "Cafes", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction!) in
            print("アクション２をタップした時の処理")
        })
        
        //The last one creates another dialog
        
        let action3 = UIAlertAction(title: "Create Folder", style: UIAlertActionStyle.default, handler: {
            (action: UIAlertAction!) in
            
            
            let alert = UIAlertController(title: "AlertController Tutorial",
                                          message: "Submit something",
                                          preferredStyle: .alert)
            
            // Submit button
            let submitAction = UIAlertAction(title: "Submit", style: .default, handler: { (action) -> Void in
                // Get 1st TextField's text
                let textField = alert.textFields![0]
                print(textField.text!)
            })
            
            // Cancel button
            let cancel = UIAlertAction(title: "Cancel", style: .destructive, handler: { (action) -> Void in })
            
            // Add 1 textField and customize it
            alert.addTextField { (textField: UITextField) in
                textField.keyboardAppearance = .dark
                textField.keyboardType = .default
                textField.autocorrectionType = .default
                textField.placeholder = "Type something here"
                textField.clearButtonMode = .whileEditing
            }
            
            // Add action buttons and present the Alert
            alert.addAction(submitAction)
            alert.addAction(cancel)
            self.present(alert, animated: true, completion: nil)
            

        })


        
        let cancel = UIAlertAction(title: "キャンセル", style: UIAlertActionStyle.cancel, handler: {
            (action: UIAlertAction!) in
            print("キャンセルをタップした時の処理")
        })
        
        
        alert.addAction(action1)
        alert.addAction(action2)
        alert.addAction(action3)
        alert.addAction(cancel)
        
        self.present(alert, animated: true, completion: nil)
        
    }
 


    @IBAction func pinkAction(_ sender: Any?) {
        
        
        let alertController = UIAlertController(title: "HI", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        let margin:CGFloat = 8.0
        let rect = CGRect(x: margin, y: margin, width: alertController.view.bounds.width - margin * 4.0, height: 20)
        let customView = UITextView(frame: rect)
        
        customView.backgroundColor = UIColor.clear
        customView.font = UIFont.systemFont(ofSize: 12)
        customView.backgroundColor = UIColor.green
        alertController.view.addSubview(customView)
        
        let somethingAction = UIAlertAction(title: "Something", style: UIAlertActionStyle.default, handler: {(alert: UIAlertAction!) in print("something")
            
            print(customView.text)
            
        })
        
        let cancelAction = UIAlertAction(title: "Cancel", style: UIAlertActionStyle.cancel, handler: {(alert: UIAlertAction!) in print("cancel")})
        
        alertController.addAction(somethingAction)
        alertController.addAction(cancelAction)
        
        self.present(alertController, animated: true, completion:{})
    }
 
    @IBAction func orangeAction(_ sender: Any?) {
        
        
        let alert = UIAlertController(title: "My Title", message: "My Message", preferredStyle: .alert)
        
        //centralize the image inside imageView: DOESN'T WORK!!
        
        let imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: view.bounds.width, height: 100))
        imageView.contentMode = UIViewContentMode.center
        imageView.image = UIImage(named: "check")
    
        
        let action = UIAlertAction(title: "OK", style: .default, handler: nil)
        
        action.setValue(imageView.image, forKey: "image")
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
    
        let when = DispatchTime.now() + 1
        DispatchQueue.main.asyncAfter(deadline: when){
        alert.dismiss(animated: true, completion: nil)
        
        }
    }
}

