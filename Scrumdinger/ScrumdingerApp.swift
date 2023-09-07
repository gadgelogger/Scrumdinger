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
    @StateObject private var store = ScrumStore()
    
    
    var body: some Scene {
        WindowGroup {
            ScrumsView(scrums: $store.scrums) {
                Task {
                    do {
                        try await store.save(scrums: store.scrums)
                    } catch {
                        fatalError(error.localizedDescription)
                    }
                }
            }                .task {
                do {
                    try await store.load()
                } catch {
                    fatalError(error.localizedDescription)
                }
            }
        }
    }
}
