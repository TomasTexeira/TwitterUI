//
//  Tweet.swift
//  TwitterUI
//
//  Created by TomTex on 06/07/2021.
//

import Foundation

//Home view.
struct Tweet: Identifiable {
    let id = UUID()
    let authorName: String
    let authorUsername :String
    let timestampText: String
    let text: String
    let numberOfReplies: Int
    let numberOfRetweets: Int
    let numberOfLikes: Int
    
    
}

//Messages view.
struct Message: Identifiable {
    let id = UUID()
    let mensajes: String
    let userName: String
    let time: String
}

//Search view.
struct Search: Identifiable {
    var id = UUID()
    let theme: String
    let trending: String
    let moredata: String
    let content: String
}
