//
//  DetailView.swift
//  NavTest
//
//  Created by Lewis Griffin on 7/25/19.
//  Copyright © 2019 Lewis Griffin. All rights reserved.
//

import SwiftUI

struct DetailView : View {
    var body: some View {
        VStack {
            Text("SwiftUI Detail View")
            
            NavigationLink(destination: ViewControllerWrapper(controller: SecondViewController())) {
                Text("Show second ViewController")
            }
            
            NavigationLink(destination: ViewControllerWrapper(controller: ThirdViewController())) {
                Text("Show third ViewController")
            }
            
            NavigationLink(destination: ViewControllerWrapper(controller: FourthViewController())) {
                Text("Show Fourth VC")
            }
        }
    }
}

#if DEBUG
struct DetailView_Previews : PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
#endif
