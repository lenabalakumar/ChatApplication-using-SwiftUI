//
//  ContentView.swift
//  ChatApplication
//
//  Created by Lenabalakumar Subbarayan on 07/11/2023.
//

import SwiftUI

struct ContentView: View {
    
    @State var chatText: String = ""
    
    let chatContent: [ChatContent] = ChatContent.sampleChatContent
    
    var body: some View {
        NavigationStack {
            ZStack(alignment: .bottom) {
                ScrollView {
                    ForEach(chatContent) { chat in
                        Text(chat.chat)
                            .chatBubble(sender: chat.fromSender)
                    }
                    .padding(.vertical)
                }
                TextField("Your chat", text: $chatText)
                    .modifier(RoundedTextFieldModifier())
            }
            .padding()
            .navigationTitle("Chats")
        }
    }
}

struct ChatBubble: ViewModifier {
    
    let sender: Bool
    
    func body(content: Content) -> some View {
        content
            .foregroundColor(Color.white)
            .padding(.horizontal)
            .padding(.vertical, 4)
            .background(sender ? Color.blue : Color.green)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .padding(sender ? .trailing : .leading, 8)
            .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: sender ? .trailing : .leading)
    }
}


struct RoundedTextFieldModifier: ViewModifier {
    func body(content: Content) -> some View {
        content
            .padding()
            .overlay {
                RoundedRectangle(cornerRadius: 10)
                    .stroke()
                    .background(Color.white)
            }

    }
}

extension View {
    func roundedTextFieldModifier() -> some View {
        modifier(RoundedTextFieldModifier())
    }
    
    func chatBubble(sender: Bool) -> some View {
        modifier(ChatBubble(sender: sender))
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
