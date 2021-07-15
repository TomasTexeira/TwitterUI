//
//  MessageView.swift
//  TwitterUI
//
//  Created by TomTex on 12/07/2021.
//

import SwiftUI

//Messages.

struct MessageView: View {
    let messages: [Message]
    
    @State var text: String
    
    var body: some View {
        NavigationView {
            List(messages) { message in
                MensajesView(message: message)
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(
            leading:
                HStack {
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("menu").resizable()
                            .frame(width: 25, height: 25)
                            .cornerRadius(30)
                    }
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        TextField("Search for people and groups",text: $text)
                            .padding(7)
                            .padding(.horizontal, 20)
                                    .background(Color(.systemGray6))
                                    .cornerRadius(20)
                                    .padding(.horizontal, 10)
                                            
                    }
                },
                trailing:
                    Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                        Image("settings")
                    }
            )
        }
    }
}

struct MensajesView: View {
    let message: Message
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .padding(.top)
                .padding(.trailing, 5)
                .foregroundColor(.twitterBlue)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(message.userName)
                        .bold()
                        .lineLimit(1)
                    Text("@\(message.userName) • \(message.time)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                .padding(.top, 5)
                
                Text(message.mensajes)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.gray)
                
            }
        }
    }
    
}


struct MessagesActionView: View {
    let message: Message
    
    
    var body: some View {
        Text("Hello 2")
    }
}

