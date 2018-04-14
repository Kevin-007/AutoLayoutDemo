//
//  SnpTableViewCell.swift
//  AutoLayoutDemo
//
//  Created by Gavin Huang on 2018/4/11.
//  Copyright © 2018年 Gavin Huang. All rights reserved.
//

import UIKit
import SnapKit

class SnpTableViewCell: UITableViewCell {
  
     var placeLabel = UILabel()
     var distanceLabel = UILabel()
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    
    /// MARK: -setup UI
    func setupUI() {
        
        distanceLabel.textColor = UIColor.red
        if #available(iOS 8.2, *) {
            distanceLabel.font = UIFont.systemFont(ofSize: 17, weight: UIFont.Weight.semibold)
        } else {
             distanceLabel.font = UIFont.boldSystemFont(ofSize: 17)
        }
        
        contentView.addSubview(placeLabel)
        contentView.addSubview(distanceLabel)
        
        placeLabel.snp.makeConstraints {
            $0.left.equalToSuperview().offset(16)
            $0.top.bottom.equalToSuperview()
        }
        
        distanceLabel.snp.makeConstraints{
            $0.top.bottom.equalToSuperview()
            $0.left.equalTo(placeLabel.snp.right).offset(32)
            $0.right.lessThanOrEqualToSuperview().offset(-16)
        }
        
        //set CompressionResistance  ContentHugging
        distanceLabel.setContentCompressionResistancePriority(.required, for: .horizontal)
        distanceLabel.setContentHuggingPriority(.required, for: .horizontal)
        
        placeLabel.setContentCompressionResistancePriority(.defaultLow, for: .horizontal)
        placeLabel.setContentHuggingPriority(.required, for: .horizontal)
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
