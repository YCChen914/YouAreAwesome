//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 陳永承 on 2023/7/8.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, theycall you!"
    
    var body: some View {
        
        VStack {
            Text(messageString)
                .font(.largeTitle)//標題
                .fontWeight(.heavy)//大型字
                .minimumScaleFactor(0.5)//過大自動縮小 直至符合
                .foregroundColor(Color.green)
                .italic()
                .padding()
                .frame(width: 300, height: 150) //固定文字框大小
                .border(.brown, width: 1)//檢查用框框
            HStack{
                Button("Awesome") {
                    //action when button is pressed
                    messageString = "You Are Awesome!"
                }
                .buttonStyle(.borderedProminent)
                
                Button("Great") {
                    //action when button is pressed
                    messageString = "You Are Great!"
                }
                .buttonStyle(.borderedProminent)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
