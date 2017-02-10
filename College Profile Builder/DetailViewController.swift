//
//  DetailViewController.swift
//  College Profile Builder
//
//  Created by Sedona Falco on 2/7/17.
//  Copyright © 2017 Sedona Falco. All rights reserved.
//

import UIKit
import RealmSwift

class DetailViewController: UIViewController {


    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var locationTextField: UITextField!
    @IBOutlet weak var enrollmentTextField: UITextField!
    @IBOutlet weak var imageView: UIImageView!
   let realm = try! Realm()
    
    var detailItem: Colleges? {
        didSet {
            // Update the view.
            self.configureView()
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        self.configureView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func configureView() {
        // Update the user interface for the detail item.
        if let college = self.detailItem {
            if nameTextField != nil {
                nameTextField.text = college.name
                locationTextField.text = college.location
                enrollmentTextField.text = String(college.enrollment)
                imageView.image = UIImage(data: college.image)

            }
        }
    }
    @IBAction func onTappedSaveButton(_ sender: Any) {
        if let college = self.detailItem{
            try! realm.write ({
                college.name = nameTextField.text!
                college.location = locationTextField.text!
                college.enrollment = Int(enrollmentTextField.text!)!
                college.image = UIImagePNGRepresentation(imageView.image!)!
            })
        }
    }
}










