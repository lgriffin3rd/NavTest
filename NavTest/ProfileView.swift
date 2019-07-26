//
//  ProfileView.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import SwiftUI

struct ProfileView : View {
    var body: some View {
        VStack {
            Text("Profile SwiftUI Contained within a ViewController").bold().lineLimit(5)
            
            NavigationLink(destination: ViewControllerWrapper(controller: SecondViewController())) {
                Text("Go To Second VC")
            }.padding()
            
            NavigationLink(destination: DetailView()) {
                Text("Detail SwiftUI View")
            }.padding()
        }
    }
}

#if DEBUG
struct ProfileView_Previews : PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
#endif
