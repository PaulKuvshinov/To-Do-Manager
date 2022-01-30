//
//  Task.swift
//  To-Do Manager
//
//  Created by  Paul on 27.08.2021.
//

import UIKit

// тип задачи
enum TaskPriority {
    // текущая задача
    case normal
    // важная задача
    case important
}

// состояние задачи
enum TaskStatus: Int {
    // запланированная
    case planned
    // завершенная
    case completed
}

// требования к типу, описывающему сущность Задача
protocol TaskProtocol {
    // название
    var title: String { get set }
    // тип
    var type: TaskPriority { get set }
    // статус
    var status: TaskStatus { get set }
}

// сущность Задача
struct Task: TaskProtocol {
    var title: String
    var type: TaskPriority
    var status: TaskStatus
}
