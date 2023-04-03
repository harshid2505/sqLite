//
//  ViewController.swift
//  sqLite
//
//  Created by HARSHID PATEL on 31/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var t1: UITextField!
    @IBOutlet weak var t2: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        sqLite.createFile()
    }

    @IBAction func saveButton(_ sender: Any) {
        if let x = t1.text,let y = Int(x){
            sqLite.addData(name: t2.text!, id: y)
        }
    }
    
    
    @IBAction func deleteButtonAction(_ sender: UIButton) {
        if let x = t1.text,let y = Int(x){
            sqLite.deleteData(id: y, name: t2.text!)
        }
    }
    
    
    @IBAction func getDataButtonAction(_ sender: Any) {
        let navigate = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
        navigationController?.pushViewController(navigate, animated: true)
    }
    
}

