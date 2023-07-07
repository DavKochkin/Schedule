//
//  ScheduleTableViewCell.swift
//  Schedule
//
//  Created by David Kochkin on 07.07.2023.
//

import UIKit

class ScheduleTableViewCell: UITableViewCell {
    
    let lessonName: UILabel = {
       let label = UILabel()
        label.text = "Programming"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let teacherName: UILabel = {
       let label = UILabel()
        label.text = "James Smith"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        DispatchQueue.main.asyncAfter(wallDeadline: .now() + 0.05) {
            self.setConstraints()
        }
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setConstraints() {
        
        let stackView = UIStackView()
        stackView.addArrangedSubview(lessonName)
        stackView.addArrangedSubview(teacherName)
        stackView.axis = .horizontal
        stackView.spacing = 10
        stackView.distribution = .fillEqually
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        
        self.addSubview(stackView)
        NSLayoutConstraint.activate([
            stackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            stackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            stackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            stackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
//        self.addSubview(lessonName)
//        NSLayoutConstraint.activate([
//            lessonName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//            lessonName.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
//            lessonName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
//            lessonName.heightAnchor.constraint(equalToConstant: 25)
//        ])
//
//        self.addSubview(teacherName)
//        NSLayoutConstraint.activate([
//            teacherName.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
//            teacherName.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
//            teacherName.widthAnchor.constraint(equalToConstant: self.frame.width / 2 - 10),
//            teacherName.heightAnchor.constraint(equalToConstant: 25)
//        ])
        
    }
}
