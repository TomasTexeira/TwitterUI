//
//  FeedView.swift
//  TwitterUI
//
//  Created by TomTex on 13/07/2021.
//

import SwiftUI

//Home,Tweets.

struct FeedView: View {
    let tweets: [Tweet]
    
    var body: some View {
        NavigationView {
            List(tweets) { tweet in
                TweetView(tweet: tweet)
            }
            .listStyle(PlainListStyle())
            .navigationBarItems(
                
                leading:
                    HStack {
                        Button(action: {}) {
                            Image("me").resizable()
                                .frame(width: 40, height: 40)
                                .cornerRadius(30)
                                
                        }
                        Button(action: {}){
                            Image("logo").resizable()
                                .frame(width: 50, height: 50, alignment: .center)
                                .padding(115)
                        }
                    },
                
                trailing:
                    Button(action: {}) {
                        Image("settings").resizable()
                            
                    }
            )
            
        }
        
    }
}

struct TweetView: View {
    let tweet: Tweet
    
    var body: some View {
        HStack(alignment: .top) {
            Image(systemName: "person.crop.circle.fill")
                .font(.system(size: 55))
                .padding(.top)
                .padding(.trailing, 5)
                .foregroundColor(.twitterBlue)
            
            VStack(alignment: .leading) {
                HStack {
                    Text(tweet.authorName)
                        .bold()
                        .lineLimit(1)
                    Text("@\(tweet.authorUsername) • \(tweet.timestampText)")
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                .padding(.top, 5)
                
                Text(tweet.text)
                    .lineLimit(nil)
                    .multilineTextAlignment(.leading)
                
                TweetActionsView(tweet: tweet)
                    .foregroundColor(.gray)
                    .padding([.bottom, .top], 10)
                    .padding(.trailing, 30)
            }
        }
    }
    
}

struct TweetActionsView: View {
    let tweet: Tweet
    
    
    var body: some View {
        HStack{
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                Image(systemName: "message")
            }
            Text(tweet.numberOfReplies > 0 ? "\(tweet.numberOfReplies)" : "")
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ ) {
                Image(systemName: "arrow.2.squarepath")
            }
            Text(tweet.numberOfRetweets > 0 ? "\(tweet.numberOfRetweets)" : "")
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ ) {
                Image(systemName: "heart")
            }
            Text(tweet.numberOfLikes > 0 ? "\(tweet.numberOfLikes)" : "")
            Spacer()
            
            Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/ ) {
                Image(systemName: "square.and.arrow.up")
            }
        }
    }
}
