//
//  BusinessCell.swift
//  Yelp
//
//  Created by Jasmine Edwards on 2/16/18.
//  Copyright © 2018 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {

    @IBOutlet weak var thumbImageView: UIImageView!
    
    
    @IBOutlet weak var categoriesLabel: UILabel!
    
    
    @IBOutlet weak var addressLabel: UILabel!
    
    @IBOutlet weak var reviewsCountLabel: UILabel!
   
    @IBOutlet weak var ratingImageView: UIImageView!
    
    @IBOutlet weak var distanceLabel: UILabel!
    
    
    @IBOutlet weak var nameLabel: UILabel!
    
    
    
    var business: Business! {
        didSet {
            nameLabel.text = business.name
            thumbImageView.setImageWith(business.imageURL!)
            categoriesLabel.text = business.categories
            addressLabel.text = business.address
            reviewsCountLabel.text = "\(business.reviewCount!) Reviews"
            ratingImageView.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
        }
    }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        thumbImageView.layer.cornerRadius = 3
        thumbImageView.clipsToBounds = true
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
