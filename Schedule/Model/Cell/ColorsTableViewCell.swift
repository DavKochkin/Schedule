//
//  ColorScheduleTableViewCell.swift
//  Schedule
//
//  Created by David Kochkin on 11.07.2023.
//

import UIKit

class ColorsTableViewCell: UITableViewCell {
        
    let backgroundViewCell: UIView = {
       let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 10
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()

    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
       
        setConstraints()
        self.selectionStyle = .none
        self.backgroundColor = .clear
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func cellConfigure(indexPath: IndexPath) {
        
        switch indexPath.section {
        case 0: backgroundViewCell.backgroundColor = .systemRed
        case 1: backgroundViewCell.backgroundColor = .systemOrange
        case 2: backgroundViewCell.backgroundColor = .systemYellow
        case 3: backgroundViewCell.backgroundColor = .systemGreen
        case 4: backgroundViewCell.backgroundColor = .systemBlue
        case 5: backgroundViewCell.backgroundColor = .systemMint
        default:
        backgroundViewCell.backgroundColor = .systemPurple
        }
    }
    
    func setConstraints() {
        self.addSubview(backgroundViewCell)
        NSLayoutConstraint.activate([
            backgroundViewCell.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            backgroundViewCell.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10),
            backgroundViewCell.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -10),
            backgroundViewCell.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -1)
        ])
    }
}
