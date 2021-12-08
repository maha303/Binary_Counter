//
//  ViewController.swift
//  Binary_Counter
//
//  Created by Maha saad on 04/05/1443 AH.
//

import UIKit

class ViewController: UIViewController {
    
    

    @IBOutlet weak var tableView: UITableView!
    
    @IBOutlet weak var Total: UILabel!
    
    var count = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        
    }

}
extension ViewController : CustomCellDelegate{
    func add(num: Int) {
        count += num
        Total.text = " Total :\(count)"
    }
    
    func minus(num: Int) {
        count -= num
        Total.text = " Total : \(count)"
    }
    
}
extension ViewController : UITableViewDataSource {
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 16
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomViewCell
    
        cell.delegate = self
        cell.number.text = "\(pow(10,indexPath.row))"
        return cell
    }
    
    
}

