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
    @State private var scrums = DailyScrum.sampleData
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $scrums)
        }
    }
}
