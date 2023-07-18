//
//  RealmManager.swift
//  Schedule
//
//  Created by David Kochkin on 13.07.2023.
//

import RealmSwift

class RealmManager {
    
    static let shared =  RealmManager()
    
    private init() {}
    
    let localRealm = try! Realm()
    
    func saveScheduleModel(model: ScheduleModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
    func deleteScheduleModel(model: ScheduleModel) {
        try! localRealm.write {
            localRealm.delete(model)
        }
    }
    
    //TaskModel
    
    func saveTaskModel(model: TaskModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }
    
    func deleteTaskModel(model: TaskModel) {
        try! localRealm.write {
            localRealm.delete(model)
        }
    }
    
    func updateReadyButtonTaskModel(task: TaskModel, bool: Bool) {
        try! localRealm.write {
            task.taskReady = bool
        }
    }
    
    
    //ContactModel

    func saveContactModel(model: ContactModel) {
        try! localRealm.write {
            localRealm.add(model)
        }
    }

    func deleteContactModel(model: ContactModel) {
        try! localRealm.write {
            localRealm.delete(model)
        }
    }

}
