//
//  ScrumdingerApp.swift
//  Scrumdinger
//
//  Created by gadgelogger on 2023/09/05.
//
//アプリ起動時に開くファイル
//Flutterで言うとmain.dartやな。
import SwiftUI

@main
struct ScrumdingerApp: App {
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: DailyScrum.sampleData)
        }
    }
}
