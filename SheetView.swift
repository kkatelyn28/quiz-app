//
//  SheetView.swift
//  quiz app
//
//  Created by Katelyn Kang Jia Xuan on 18/6/22.
//

import SwiftUI

struct SheetView: View {
    var isPassing: Bool
    var body: some View {
        ZStack {
            LinearGradient(colors: [.cyan, .white], startPoint: .top, endPoint: .bottom)
            VStack {
                Text(isPassing ? "**good job! you passed**" : "**you failed. you are a disappointment**")
                    .padding()
                Image(isPassing ? "cute-cats" : "sad-cat")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
            }
        }
    }
}

struct SheetView_Previews: PreviewProvider {
    static var previews: some View {
        //SheetView(isPassing: true)
        SheetView(isPassing: false)
    }
}
