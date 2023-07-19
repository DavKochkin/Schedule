//
//  ContactOptionTableViewController.swift
//  Schedule
//
//  Created by David Kochkin on 12.07.2023.
//

import UIKit

class ContactsOptionsTableViewController: UITableViewController {
    
    let idOptionContactCell = "idOptionContactCell"
    let idOptionContactHeader = "idOptionContactHeader"
    
    let headerNameArray = ["NAME", "PHONE NUMBER", "MAIL", "TYPE", "CHOOSE IMAGE"]
    var cellNameArray = ["Name", "Phone Number", "Mail", "Type", ""]
    
    private var imageIsChanged = false
    var contactModel = ContactModel()
    var editModel = false
    var dataIMage: Data?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Options Contacts"
        
        tableView.dataSource = self
        tableView.delegate = self
        tableView.backgroundColor = .systemGray6
        tableView.separatorStyle = .none
        tableView.bounces = false
        tableView.register(OptionsTableViewCell.self, forCellReuseIdentifier: idOptionContactCell)
        tableView.register(HeaderOptionsTableViewCell.self, forHeaderFooterViewReuseIdentifier: idOptionContactHeader)
        
        navigationItem.rightBarButtonItem = UIBarButtonItem(barButtonSystemItem: .save,
                                                            target: self,
                                                            action: #selector(saveButtonTapped))
        print(contactModel)
    }
    
    @objc func saveButtonTapped() {
        
        if cellNameArray[0] == "Name" || cellNameArray[3] == "Type" {
            alertOk(title: "Error", message: "Required fields: NAME and TYPE")
        } else {
            setImageModel()
            setModel()
            
            RealmManager.shared.saveContactModel(model: contactModel)
            contactModel = ContactModel()
            
            cellNameArray = ["Name", "Phone Number", "Mail", "Type", ""]
            alertOk(title: "Success", message: nil)
            tableView.reloadData()
            
            
        }
    }
    
    private func pushControllers(vc: UIViewController) {
        let viewController = vc
        navigationController?.navigationBar.topItem?.title = "Options"
        navigationController?.pushViewController(viewController, animated: true)
    }
    
    private func setModel() {
        contactModel.contactsName = cellNameArray[0]
        contactModel.contactsPhone = cellNameArray[1]
        contactModel.contactsMail = cellNameArray[2]
        contactModel.contactsType = cellNameArray[3]
        contactModel.contactsImage = dataIMage
    }
    
    @objc func setImageModel() {
        
        if imageIsChanged {
            let cell = tableView.cellForRow(at: [4,0]) as! OptionsTableViewCell
            
            let image = cell.backgroundViewCell.image
            guard let imageData = image?.pngData() else {return}
            dataIMage = imageData
            
            cell.backgroundViewCell.contentMode = .scaleAspectFit
            imageIsChanged = false
        } else {
            dataIMage = nil
        }
    }
    
    
    //MARK: UITableViewDelegate, UITableViewDataSource
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 5
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: idOptionContactCell, for: indexPath) as! OptionsTableViewCell
        
        if editModel == false {
            cell.cellContactsConfigure(nameArray: cellNameArray, indexPath: indexPath, image: nil)
        } else if let data = contactModel.contactsImage, let image = UIImage(data: data) {
            cell.cellContactsConfigure(nameArray: cellNameArray, indexPath: indexPath, image: image)
        } else {
            cell.cellContactsConfigure(nameArray: cellNameArray, indexPath: indexPath, image: nil)
        }
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        indexPath.section == 4 ? 200 : 44 
    }
    
    override func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: idOptionContactHeader) as! HeaderOptionsTableViewCell
        header.headerConfigure(nameArray: headerNameArray, section: section)
        return header
    }
    
    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 25
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        let cell = tableView.cellForRow(at: indexPath) as! OptionsTableViewCell

        switch indexPath.section {
        case 0: alertForCellName(label: cell.nameCellLabel, name: "Name Contact", placeholder: "Enter name contact"){ text in
//            self.contactModel.contactsName = text
            self.cellNameArray[0] = text
        }
        case 1: alertForCellName(label: cell.nameCellLabel, name: "Phone Contact", placeholder: "Enter phone contact"){ text in
//            self.contactModel.contactsPhone = text
            self.cellNameArray[1] = text
        }
        case 2: alertForCellName(label: cell.nameCellLabel, name: "Mail Contact", placeholder: "Enter mail contact") { text in
//            self.contactModel.contactsMail = text
            self.cellNameArray[2] = text
        }
        case 3: alertFriendOrTeacher(label: cell.nameCellLabel) { (type) in
//            self.contactModel.contactsType = type
            self.cellNameArray[3] = type
        }
        case 4: alertPhotoOrCamera { [self] source in
            chooseImagePicker(source: source)
        }
        default:
            print("Tap ContactTableView")
        }
    }
}


//MARK: UIImagePickerControllerDelegate, UINavigationControllerDelegate

extension ContactsOptionsTableViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func chooseImagePicker(source: UIImagePickerController.SourceType) {
        
        if UIImagePickerController.isSourceTypeAvailable(source) {
            let imagePicker = UIImagePickerController()
            imagePicker.delegate = self
            imagePicker.allowsEditing = true
            imagePicker.sourceType = source
            present(imagePicker, animated: true)
        }
    }
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let cell = tableView.cellForRow(at: [4,0]) as! OptionsTableViewCell
        
        cell.backgroundViewCell.image = info[.editedImage] as? UIImage
        cell.backgroundViewCell.contentMode = .scaleAspectFill
        cell.backgroundViewCell.clipsToBounds = true
        imageIsChanged = true
        dismiss(animated: true)
    }
}
