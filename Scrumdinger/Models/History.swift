//
//  History.swift
//  Scrumdinger
//
//  Created by gadgelogger on 2023/09/07.
//

import Foundation


struct History: Identifiable, Codable {
    let id: UUID
    let date: Date
    var attendees: [DailyScrum.Attendee]
    init(id: UUID = UUID(), date: Date = Date(), attendees: [DailyScrum.Attendee]) {
          self.id = id
          self.date = date
          self.attendees = attendees
      }
}

