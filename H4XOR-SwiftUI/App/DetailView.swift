//
//  DetailView.swift
//  H4XOR-SwiftUI
//
//  Created by hakkı can şengönül on 14.06.2022.
//

import SwiftUI
import WebKit

struct DetailView: View {
    let url : String
    var body: some View {
        WebView(url: url)
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(url: temporaryApi)
    }
}


