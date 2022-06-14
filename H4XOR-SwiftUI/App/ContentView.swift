//
//  ContentView.swift
//  H4XOR-SwiftUI
//
//  Created by hakkı can şengönül on 14.06.2022.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var posts : NetworkManager
    var body: some View {
        NavigationView {
            List{
                ForEach(posts.posts) { post in
                    NavigationLink (destination:DetailView(url: post.url ?? temporaryApi) , label: {
                        HStack (spacing : 10){
                            Text("\(post.points)")
                            Text(post.title ?? "nil")
                        }
                    })
                    
                    
                }
                
            }
            
            .navigationTitle("H4XOR")
            
        }.onAppear {
            posts.fetchData()
        }
        .navigationViewStyle(.stack)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().environmentObject(NetworkManager())
    }
}
