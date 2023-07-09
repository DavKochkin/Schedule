//
//  HeaderOptionsScheduleTableViewCell.swift
//  Schedule
//
//  Created by David Kochkin on 09.07.2023.
//

import UIKit

class HeaderOptionsScheduleTableViewCell: UITableViewHeaderFooterView {
    
    let headerLabel = UILabel(text: "", font: .avenirNext14())
    
    let headerNameArray = ["DATE AND TIME", "LESSON", "TEACHER", "COLOR", "PERIOD"]

    override init(reuseIdentifier: String?) {
        super.init(reuseIdentifier: reuseIdentifier)
       
        headerLabel.textColor = .gray
        
        self.contentView.backgroundColor = .systemGray6
        
        setConstraints()
       
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func headerConfigure(section: Int) {
        headerLabel.text = headerNameArray[section]
    }
    
    func setConstraints() {
      
        self.addSubview(headerLabel)
        NSLayoutConstraint.activate([
            headerLabel.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 25),
            headerLabel.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: 0)
        ])
    }
}


