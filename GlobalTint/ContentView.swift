//
//  ContentView.swift
//  GlobalTint
//
//  Created by Richard Mullinix on 2/19/21.
//

import SwiftUI

struct ContentView: View {
    @State var isPresented: Bool = false
    var body: some View {
        Button("Present Sheet"){
            isPresented.toggle()
        }
        .actionSheet(isPresented: $isPresented){
            ActionSheet(title: Text("title"), buttons: [
                .default(Text("item 1")),
                .default(Text("item 2")),
                .cancel()
            ])
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
