//
//  FeedCell.swift
//  InstaCloneFirebase
//
//  Created by UMUT GUDUL on 26.04.2021.
//

import UIKit
import Firebase

class FeedCell: UITableViewCell {

    
    @IBOutlet weak var userEmailLabel: UILabel!
    
    @IBOutlet weak var documentIdLabel: UILabel!
    @IBOutlet weak var likeLabel: UILabel!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var commentLabel: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        
    }

    @IBAction func likeButtonClicked(_ sender: Any) {
        let fireStoreDataBase = Firestore.firestore()
        if let likeCount = Int(likeLabel.text!){
            let likeStore = ["likes" : likeCount + 1] as [String : Any]
            fireStoreDataBase.collection("Posts").document(documentIdLabel.text!).setData(likeStore, merge: true)
        }
       
        
        
    }
}
