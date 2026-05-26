//
//  HoroscopeViewCell.swift
//  Zodiac-iOS
//
//  Created by Tardes on 25/5/26.
//

import UIKit

class HoroscopeViewCell: UITableViewCell {

    @IBOutlet weak var horoscopeImagenView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var datesLabel: UILabel!
    
    func render(horoscope: Horoscope){
        nameLabel.text = horoscope.name
        datesLabel.text = horoscope.dates
        horoscopeImagenView.image = horoscope.getImage()
    }
    
    /*override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }*/

    
}
