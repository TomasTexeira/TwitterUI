//
//  ContentView.swift
//  TwitterUI
//
//  Created by TomTex on 06/07/2021.
//

import SwiftUI

extension Color {
    static var twitterBlue: Color = Color(red: 29/255, green: 161/255, blue: 241/255)
}

struct ContentView: View {
    
    //Tweets, Home.
    
    private let tweets: [Tweet] = [
        Tweet(authorName: "TomasTexeira", authorUsername: "Tomas_Texeira1", timestampText: "2h", text: "Hello World, i`m programming a Twitter-Clone.Check it out on my GitHub", numberOfReplies: 23, numberOfRetweets: 30, numberOfLikes: 20),
        Tweet(authorName: "Joma", authorUsername: "jomaoppa", timestampText: "1d", text: "Loved Wandavision. Couldn’t get into The Falcon and the Winter soldier. Now watching Loki, seems dope.", numberOfReplies: 0, numberOfRetweets: 2, numberOfLikes: 200),
        Tweet(authorName: "Apple", authorUsername: "Apple", timestampText: "1h", text: "Do you want a free iphone?", numberOfReplies: 1000, numberOfRetweets: 500, numberOfLikes: 30000),
        Tweet(authorName: "Microsoft", authorUsername: "Microsoft", timestampText: "2m", text: "WTF!!⬆️⬆️", numberOfReplies: 300, numberOfRetweets: 120, numberOfLikes: 10000),
        Tweet(authorName: "BadBunny", authorUsername: "sanbenitoi", timestampText: "17h", text: "Como dijo Bad Bunny: 'Quiero dedicarte los atardeceres'", numberOfReplies: 23, numberOfRetweets: 30, numberOfLikes: 20),
        Tweet(authorName: "Ariana Grande", authorUsername: "ArianaGrande", timestampText: "1jul", text: "Thank u🖤", numberOfReplies: 3700, numberOfRetweets: 600, numberOfLikes: 60000),
        Tweet(authorName: "Tomas Texeira", authorUsername: "Tomas Developer", timestampText: "Today", text: "If you liked the app, don't forget to follow me:GitHub: @TomasTexeira LinkedIn: https: //www.linkedin.com/in/tomas-texeira-600090188", numberOfReplies: 07, numberOfRetweets: 07, numberOfLikes: 2021),
        
    ]
    
    //Messages.You can write a message here, just copy the example, and change "mensaje" and "userName".
    
    private let messages: [Message] = [
        Message(mensajes: "FOLLOW ME: GITHUB:@TomasTexeira LINKEDIN:https://www.linkedin.com/in/tomas-texeira-600090188", userName: "TomasTexeira", time: "12h"),]
    
    //Search and treanding.
    private let searches: [Search] = [
        Search( theme: "Bad Bunny", trending: "Music", moredata: "Trending", content: "29.4K Tweets"),
        Search( theme: "Tour France", trending: "Sports", moredata: "Trending", content: "21.8K Tweets"),
        Search( theme: "#MARVEL", trending: "Series", moredata: "Trending", content: "11.5k Tweets"),
        Search( theme: "Ester Elite", trending: "Series", moredata: "Trending", content: "11.4k Tweets"),
        Search( theme: "Joe Biden", trending: "Politics", moredata: "Trending", content: "30k Tweets"),
        Search( theme: "#Pasapalabra", trending: "", moredata: "Trending in Argentina", content: "Yesterday"),
        Search( theme: "IpadMini2021", trending: "GQ Spain", moredata: "Yesterday", content: "29.4k Tweets"),
        Search( theme: "#FreeBritney", trending: "", moredata: "Trending in Argentina", content: "100K Tweets"),
    ]
    
    
    @State private var selectedTab = 0
    
    var body: some View {
        
        //Buttons Home,search,message.
        ZStack {
            TabView(selection: $selectedTab) {
                FeedView(tweets: tweets).tabItem {
                    Image(systemName: "house")
                }.tag(0)
                SeacrhView(searchs: searches ,text: "").tabItem {
                    Image(systemName: "magnifyingglass")
                }.tag(1)
                Text("Tab content 2").tabItem {
                    Image(systemName: "bell")
                }.tag(2)
             MessageView(messages: messages,text: "").tabItem {
                    Image(systemName: "envelope")
                }.tag(3)
            }.accentColor(.twitterBlue)
        }
    }
}




struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
