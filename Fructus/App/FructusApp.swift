//
//  FructusApp.swift
//  Fructus
//
//  Created by Luke Mason on 12/28/21.
//

import SwiftUI

@main // New feature that allows a file to serve as an entry point for the start of the app
struct FructusApp: App { // New App Protocal API
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    
    
    var body: some Scene { // App is built using scenes
        WindowGroup {
            if isOnboarding {
                OnboardingView()
            }
            else {
                ContentView()
            }
        }
    }
}


// MARK: - Notes on working with views, scenes, and apps

// MARK: - Views:
    // Important because each view defines a piece of the UI in the application
    // Everything you see is a view - Images, Texts, HSTACKS, VSTACKS
    // Views serve as the basic buildling blocks to show everything on the screen

// MARK: - Scenes:
    // Views form the content of scenes
    // Scenes can be composed to show more complex scenes
    // iPad OS can show multiple windows side by side
    // iOS prefers to show a single scene at a time
    // WindowGroup - Allows us to conditionally render different views

// MARK: - @AppStorage:
    // Every onboarding page must have some state value to tell which state the user is in
    // SwiftUI's new dedicated property wrapper for user defaults
    // On a value change allows the UI to be updated in real time
