//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 陳永承 on 2023/7/8.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "When the Genius Bar needs help, they call you!"
    
    var body: some View {
        VStack{ //VStack(spacing: 0) 上下空格為零
            Text(messageString)
                .font(.largeTitle)//標題
                .fontWeight(.heavy)//大型字
                .minimumScaleFactor(0.5)//過大自動縮小 直至符合
                .multilineTextAlignment(.center)//多行自動對齊
                .foregroundColor(Color.green)
                .italic()//斜體
                .frame(height: 150) //固定文字框大小
                .frame(maxWidth:.infinity)//自動調整到最寬
                .border(.brown, width: 1)//檢查用框框
                .padding()//填充空格
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
            .border(.brown, width: 5)//檢查用框框
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
