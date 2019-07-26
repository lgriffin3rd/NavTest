//
//  ContentView.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    var body: some View {
        NavigationView {
            VStack {
                Text("Starting SwiftUI View")
                
                NavigationLink(destination: ViewControllerWrapper(controller: TestViewController())) {
                    Text("Go to VC").color(.blue).padding()
                }
            }
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
