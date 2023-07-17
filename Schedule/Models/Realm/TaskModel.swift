//
//  TaskModel.swift
//  Schedule
//
//  Created by David Kochkin on 17.07.2023.
//

import RealmSwift
import Foundation

class TaskModel: Object {
    
    @Persisted var taskDate: Date?
    @Persisted var taskName: String = "Unknown"
    @Persisted var taskDescription: String = "Unknown"
    @Persisted var taskColor: String = "03c7be"
    @Persisted var taskReady: Bool = false
}
