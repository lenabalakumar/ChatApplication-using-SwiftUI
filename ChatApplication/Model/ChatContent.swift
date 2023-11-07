//
//  ChatContent.swift
//  ChatApplication
//
//  Created by Lenabalakumar Subbarayan on 07/11/2023.
//

import Foundation

struct ChatContent: Identifiable {
    var id: UUID = UUID()
    var chat: String
    var fromSender: Bool
    
    init(chat: String, fromSender: Bool) {
        self.chat = chat
        self.fromSender = fromSender
    }
}

extension ChatContent {
    static let sampleChatContent: [ChatContent] = [ChatContent(chat: "Inside scroll view and I want this to be a long text and see how this looks on the screen", fromSender: false), ChatContent(chat: "Hi", fromSender: true), ChatContent(chat: "I was watching the match today", fromSender: false), ChatContent(chat: "Hello", fromSender: true), ChatContent(chat: "Enna rascala mind it!", fromSender: false), ChatContent(chat: "Glen Maxwell was awesome today!", fromSender: true), ChatContent(chat: "Australia is going to win the world cup", fromSender: false), ChatContent(chat: "I like SwiftUI", fromSender: true), ChatContent(chat: "I need to go few more steps", fromSender: false), ChatContent(chat: "Greatness comes from action", fromSender: true), ChatContent(chat: "Will I complete the Third Reich?", fromSender: true), ChatContent(chat: "It's so exausting!", fromSender: false), ChatContent(chat: "I can keep going all day everyday", fromSender: true)]
}
