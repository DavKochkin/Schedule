//
//  OptionsScheduleViewController.swift
//  Schedule
//
//  Created by David Kochkin on 09.07.2023.
//

import UIKit

class ScheduleOptionsTableViewController: UITableViewController {
    
    let idOptionsScheduleCell = "idOptionsScheduleCell"
    let idOptionScheduleHeader = "idOptionScheduleHeader"
    
    let headerNameArray = ["DATE AND TIME", "LESSON", "TEACHER", "COLOR", "PERIOD"]
    
    let cellNameArray = [["Date", "Time"],
                         ["Name", "Type", "Building", "Audience"],
                         ["Teacher Name"],
                         [""],
                         ["Repeat every 7 days"]]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemGray6
        tableView.separatorStyle = .none
        tableView.bounces = false 
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: idOptionsScheduleCell)
        tableView.register(HeaderOptionsTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionScheduleHeader)
        
        title = "Option Schedule"
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save, target: self, action: #selector(saveButtonTapped))
        
    }
    
    @objc private func saveButtonTapped() {
        print("SAVE")
        let scheduleModel = ScheduleModel()
        
        scheduleModel.scheduleDate = Date()
        scheduleModel.scheduleTime = Date()
        scheduleModel.scheduleName = "ScheduleName"
        scheduleModel.scheduleType = "ScheduleType"
        scheduleModel.scheduleBuilding = "ScheduleBuilding"
        scheduleModel.scheduleAudience = "ScheduleAudience"
        scheduleModel.scheduleTeacher = "ScheduleTeacher"
        scheduleModel.scheduleColor = "ScheduleColor"
        scheduleModel.scheduleRepeat = true
        scheduleModel.scheduleWeekday = 100
        
        RealmManager.shared.saveScheduleModel(model: scheduleModel)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch section {
        case 0: return 2
        case 1: return 4
        case 2: return 1
        case 3: return 1
        default:
            return 1
        }
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionsScheduleCell, for: indexPath) as! OptionsTableViewCell
        cell.cellScheduleConfigure(nameArray: cellNameArray, indexPath: indexPath)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 44
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionScheduleHeader) as! HeaderOptionsTableViewCell
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionsTableViewCell
        
        switch indexPath {
        case [0,0]: alertDate(label: cell.nameCellLabel) { (numberWeekday, date) in
            print(numberWeekday, date)
        }
        case [0,1]: alertTime(label: cell.nameCellLabel) { (date) in
            print(date)
        }
        case [1,0]: alertForCellName(label: cell.nameCellLabel, name: "Name lesson", placeholder: "Enter name lesson")
        case [1,1]: alertForCellName(label: cell.nameCellLabel, name: "Type lesson", placeholder: "Enter type lesson")
        case [1,2]: alertForCellName(label: cell.nameCellLabel, name: "Building number", placeholder: "Enter number of building")
        case [1,3]: alertForCellName(label: cell.nameCellLabel, name: "Audience number", placeholder: "Enter number of audience")
        case [2,0]:
            pushControllers(vc: TeachersViewController())
        case [3,0]:
           pushControllers(vc: ScheduleColorsViewController())
        default:
            print("Tap OptionsTableView")
        }
    }
    func pushControllers(vc: UIViewController) {
        let viewController = vc
        navigationController?.navigationBar.topItem?.title = "Options"
        navigationController?.pushViewController(viewController, animated: true)
    }
}
