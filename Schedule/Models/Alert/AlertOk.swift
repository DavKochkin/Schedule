//
//  AlertOk.swift
//  Schedule
//
//  Created by David Kochkin on 14.07.2023.
//

import UIKit

extension UIViewController {
    
    func alertOk(title: String) {
        
        let alert = UIAlertController(title: title, message: nil, preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "Ok", style: .default)
        
        alert.addAction(ok)
        
        present(alert, animated: true)
        
    }
}
