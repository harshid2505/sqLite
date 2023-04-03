//
//  ViewController2.swift
//  sqLite
//
//  Created by HARSHID PATEL on 03/04/23.
//

import UIKit

class ViewController2: UIViewController,UITableViewDelegate,UITableViewDataSource {
    
    var arr2 = sqLite.getData()
    
    @IBOutlet weak var tb: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arr2.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tb.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! MyTableViewCell
        cell.idLable.text = arr2[indexPath.row].id.description
        cell.nameLable.text = arr2[indexPath.row].name
        
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 150
    }

}
