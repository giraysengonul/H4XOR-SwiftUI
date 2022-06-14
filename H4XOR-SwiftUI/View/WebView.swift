//
//  WebView.swift
//  H4XOR-SwiftUI
//
//  Created by hakkı can şengönül on 14.06.2022.
//

import Foundation
import WebKit
import SwiftUI

struct WebView: UIViewRepresentable{
    let url : String?
    func makeUIView(context: Context) -> WKWebView {
        return WKWebView()
    }
    func updateUIView(_ uiView: WKWebView, context: Context) {
        if let safeString = url{
            if let url = URL(string: safeString){
                
                let request = URLRequest(url: url)
                uiView.load(request)
            }
        }
    }
    
}
