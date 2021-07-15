//
//  SearchView.swift
//  TwitterUI
//
//  Created by TomTex on 12/07/2021.
//

import SwiftUI

//Search View
struct SeacrhView: View {
    let searchs: [Search]
    
    @State var text: String

    var body: some View {
        
        NavigationView {
            List(searchs) { search in
                SearchsView(search: search)
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
                        TextField("Search Twitter",text: $text)
                            .padding(7)
                            .padding(.horizontal, 80)
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

struct SearchsView: View {
    let search: Search
    
    var body: some View {
        HStack(alignment: .top) {
            VStack(alignment: .leading) {
                HStack {
                    Text(search.theme)
                        .position(x: 20, y: 20)
                        .lineLimit(nil)
                        .padding(20)
                        .multilineTextAlignment(.leading)
                    
                    Text("\(search.trending) • \(search.moredata)")
                        .position(x: -125, y: 10)
                        .lineLimit(1)
                        .truncationMode(.middle)
                        .foregroundColor(.gray)
                }
                
                
                Text(search.content)
                    .lineLimit(1)
                    .foregroundColor(.gray)
                
            }
        }
    }
    
}

struct SearchesActionView: View {
    let search: Search
    
    
    var body: some View {
        Text("Hola 2")
    }
}
