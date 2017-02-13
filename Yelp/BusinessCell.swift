//
//  BusinessCell.swift
//  Yelp
//
//  Created by Robert Mitchell on 2/12/17.
//  Copyright © 2017 Timothy Lee. All rights reserved.
//

import UIKit

class BusinessCell: UITableViewCell {
    
    @IBOutlet var businessImage: UIImageView!
    @IBOutlet var ratingsImage: UIImageView!
    @IBOutlet var businessLabel: UILabel!
    @IBOutlet var distanceLabel: UILabel!
    @IBOutlet var reviewsLabel: UILabel!
    @IBOutlet var adressLabel: UILabel!
    @IBOutlet var foodLabel: UILabel!
    
    var business: Business! {
        didSet{
            businessLabel.text = business.name
            businessImage.setImageWith(business.imageURL!)
            foodLabel.text = business.categories
            adressLabel.text = business.address
            reviewsLabel.text = "\(business.reviewCount!) Reviews"
            ratingsImage.setImageWith(business.ratingImageURL!)
            distanceLabel.text = business.distance
            
        }
    }

    override func awakeFromNib() {
        super.awakeFromNib()
        businessImage.layer.cornerRadius = 4
        businessImage.clipsToBounds = true
    }
    


    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
