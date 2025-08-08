import Foundation

func displayTasks() {
    for task in taskList {
        print(task)
    }
}

func addTask(task: String, taskListP: [String]) -> [String] {
    var internalList = taskListP
    internalList.append(task)
    return internalList
}

func removeTask(task: Int, taskListP: [String]) -> [String] {
    var internalList = taskListP
    internalList.remove(at: task)
    return internalList
}

func editTask(task: Int, task2: String, taskListP: [String]) -> [String] {
    var internalList = taskListP
    internalList.remove(at: task)
    internalList.insert(task2, at: task)
    return internalList
}

func changePriority(task: Int, task2: Int, taskListP: [String]) -> [String] {
    var internalList = taskListP
    internalList.swapAt(task, task2)
    return internalList
}

func exitProgram() {
    exit(0)
}

var taskList: [String] = []

while true {

    print("""
    === TO DO LIST ===

    OPTIONS:

    1. List Tasks
    2. Add Task
    3. Remove Task
    4. Edit a Task
    5. Change Task Priority
    6. Exit

    """)

    guard let input = readLine(), let input = Int(input) else {
        print("The type of the entered value is incorrect!")
        continue
    }

    switch input {
        case 1:
            displayTasks()

        case 2:
            print("Enter your task:")
            guard let value = readLine() else {
                exit(1)
            }

            taskList = addTask(task: value, taskListP: taskList)

        case 3:
            print("Select the task you want to remove (index):")
            guard let value = readLine(), let value = Int(value) else {
                exit(1)
            }

            taskList = removeTask(task: value, taskListP: taskList)

        case 4:
            print("Tell me the index of the task to be edited:")
            guard let value = readLine(), let value = Int(value) else {
                exit(1)
            }

            print("Enter the new task:")
            guard let value2 = readLine() else {
                exit(1)
            }

            taskList = editTask(task: value, task2: value2, taskListP: taskList)

        case 5:
            print("Select the index of the option you want to move:")
            guard let value = readLine(), let value = Int(value) else {
                exit(1)
            }

            print("Select the index where it will go:")
            guard let value2 = readLine(), let value2 = Int(value2) else {
                exit(1)
            }

            taskList = changePriority(task: value, task2: value2, taskListP: taskList)

        case 6:
            print("""
            Program Ended!

            """)
            exitProgram()

        default:
            continue
    }
}
