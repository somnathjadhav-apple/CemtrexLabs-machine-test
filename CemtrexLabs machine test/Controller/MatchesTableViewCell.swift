//
//  MatchesTableViewCell.swift
//  CemtrexLabs machine test
//
//  Created by Somnath on 27/08/21.
//

import UIKit

protocol cellDelegate : class {
    func editButtonPressed(tag: Int, cell: MatchesTableViewCell)
}

class MatchesTableViewCell: UITableViewCell {
   
    @IBOutlet weak var starButton: UIButton!
    @IBOutlet weak var matchesLabel: UILabel!
    var cellDelegate: cellDelegate?
    var isStarSelected : Bool = false
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
    //MARK: Action by Star Button
    
    @IBAction func starButtonPressed(_ sender: UIButton) {
        cellDelegate?.editButtonPressed(tag: sender.tag, cell: self)
    }
    
}
