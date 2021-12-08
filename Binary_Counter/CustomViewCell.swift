//
//  CustomViewCell.swift
//  Binary_Counter
//
//  Created by Maha saad on 04/05/1443 AH.
//

import UIKit

protocol CustomCellDelegate : AnyObject {
    func add(num: Int)
    func minus(num : Int)
}

class CustomViewCell: UITableViewCell {
    
    @IBOutlet weak var number: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    weak var delegate : CustomCellDelegate?

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func BtnSub(_ sender: UIButton) {
        
        if let powerString = number.text {
            if let powerNumber = Int(powerString){
                delegate?.minus(num: powerNumber)
            }
        }
       
        
    }
    @IBAction func BtnPlus(_ sender: UIButton) {
        if let powerString = number.text {
            if let powerNumber = Int(powerString){
                delegate?.add(num: powerNumber)
            }
        }
        
    }
    
}
