//
//  AlertFriendOrTeacher.swift
//  Schedule
//
//  Created by David Kochkin on 12.07.2023.
//

import UIKit

extension UIViewController {
    
    func alertFriendOrTeacher(label: UILabel, completionHandler: @escaping(String) -> Void) {
        
        let alertController = UIAlertController(title: nil, message: nil, preferredStyle: .actionSheet)
        
        let friend = UIAlertAction(title: "Friend", style: .default) { (_) in
            label.text = "Friend"
            let typeContact = "Friend"
            completionHandler(typeContact)
        }
        
        let teacher = UIAlertAction(title: "Teacher", style: .default) { (_) in
            label.text = "Teacher"
            let typeContact = "Teacher"
            completionHandler(typeContact)
        }
        
        let cancel = UIAlertAction(title: "Cancel", style: .cancel)
        
        alertController.addAction(friend)
        alertController.addAction(teacher)
        alertController.addAction(cancel)
        
        present(alertController, animated: true)
    }
}
