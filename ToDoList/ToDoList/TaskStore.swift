//
//  TaskStore.swift
//  To Do List
//
//  Created by Marta on 5/22/20.
//  Copyright © 2020 Marta. All rights reserved.
//

import Foundation

class TaskStore {
    var tasks = [[Task](), [Task]()]
    
    func add(_ task: Task, at index: Int, isDone: Bool = false) {
        let section = isDone ? 1 : 0
        
        tasks[section].insert(task, at: index)
    }
    
    @discardableResult func removeTask(at index: Int, isDone: Bool = false) -> Task {
        let section = isDone ? 1 : 0
        
        return tasks[section].remove(at: index)
    }
}
