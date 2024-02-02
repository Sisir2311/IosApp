//
//  TaskIosApp.swift
//  TaskIos
//
//  Created by Sisir Goljana on 01/02/24.
//

import SwiftUI
import Firebase


@main
struct TaskIosApp: App {
    @StateObject var dataManager = DataManager()
    
    init(){
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ListView()
                .environmentObject(dataManager)
        }
    }
}
