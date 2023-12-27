//
//  ContentView.swift
//  EmojiLover
//
//  Created by Tristan Khieu on 12/21/23.
//

import SwiftUI

enum Emoji: String, CaseIterable {
    case sad = "🥲"
    case happy = "😃"
    case love = "😍"
    case cat = "😹"
}


struct ContentView: View {
    @State var selection: Emoji = .cat
    
    var body: some View {
        NavigationView {
            VStack {
                Text(selection.rawValue)
                    .font(.system(size: 150))
                Picker("Select Emoji", selection: $selection) {
                    ForEach(Emoji.allCases, id: \.self) { emoji in
                        Text(emoji.rawValue)
                    }
                }
                .pickerStyle(.segmented)
            }
            .navigationTitle("Emoji Lovers 2")
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
