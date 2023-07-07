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
    
    let lessonTime: UILabel = {
       let label = UILabel()
        label.text = "08:00"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 20)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let typeLabel: UILabel = {
       let label = UILabel()
        label.text = "Type:"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonType: UILabel = {
       let label = UILabel()
        label.text = "Lesson"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let buildingLabel: UILabel = {
       let label = UILabel()
        label.text = "Building"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonBuilding: UILabel = {
       let label = UILabel()
        label.text = "1"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next Demi Bold", size: 14)
        label.textAlignment = .left
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let classLabel: UILabel = {
       let label = UILabel()
        label.text = "Class"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .right
        label.adjustsFontSizeToFitWidth = true
        label.translatesAutoresizingMaskIntoConstraints = false
        label.backgroundColor = .red
        
        return label
    }()
    
    let lessonClass: UILabel = {
       let label = UILabel()
        label.text = "101"
        label.textColor = .black
        label.font = UIFont(name: "Avenir Next", size: 14)
        label.textAlignment = .left
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
        
        let topStackView = UIStackView(arrangedSubviews: [lessonName, teacherName], axis: .horizontal, spacing: 10, distribution: .fillEqually)
    
        
        self.addSubview(topStackView)
        NSLayoutConstraint.activate([
            topStackView.topAnchor.constraint(equalTo: self.topAnchor, constant: 10),
            topStackView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            topStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            topStackView.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        self.addSubview(lessonTime)
        NSLayoutConstraint.activate([
            lessonTime.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            lessonTime.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 5),
            lessonTime.widthAnchor.constraint(equalToConstant: 100),
            lessonTime.heightAnchor.constraint(equalToConstant: 25)
        ])
        
        let bottomStackView = UIStackView(arrangedSubviews: [typeLabel, lessonType, buildingLabel, lessonBuilding, classLabel, lessonClass], axis: .horizontal, spacing: 5, distribution: .fillProportionally)
        
        self.addSubview(bottomStackView)
        NSLayoutConstraint.activate([
            bottomStackView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -10),
            bottomStackView.leadingAnchor.constraint(equalTo: lessonTime.trailingAnchor, constant: 5),
            bottomStackView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -5),
            bottomStackView.heightAnchor.constraint(equalToConstant: 25)
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
