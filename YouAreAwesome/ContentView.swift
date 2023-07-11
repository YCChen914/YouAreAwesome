//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 陳永承 on 2023/7/8.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = "Namaste"
    
    var body: some View {
        GeometryReader {geometry in //空間大小閱讀器 利用一個變數去抓螢幕大小
            ZStack { //前後重疊
//                Rectangle()//方形色塊填色
//                    .fill(
//                        //Color("SkyBlue").opacity(0.4)天藍色 不透明度0.4
//                        Gradient(colors: [.white,Color("SkyBlue")])//顏色漸變 數量不限
//                    )
//                    .ignoresSafeArea()//忽略安全區 滿版
                VStack{ //VStack(spacing: 0) 上下空格為零
                    //Stack只能放10個 用Group包起來就只算一個 可以重複包 更改屬性一次針對全部
//                    Group {
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Text("I am a Text View!")
//                        Group{
//                            Text("I am a Text View!")
//                            Text("I am a Text View!")
//                            Text("I am a Text View!")
//                            Text("I am a Text View!")
//                        }
//                    }
//                    .font(.title)
//                    .fontWeight(.heavy)

//                    Text("You Have Skills!")
//                        .font(.largeTitle)
//                        .fontWeight(.black)//最粗
//                        .foregroundColor(Color("SweetOrange"))//到Assets中字定義顏色
//                        .padding()//圓角與安全區設置-1
//                        .background(Color("Lime"))
//                        .cornerRadius(15)//圓角與安全區設置-2
                    
                    Spacer()//空間等分空格填充
                    
                    Image(systemName: "figure.mind.and.body")
                        .resizable()
                        .scaledToFit()
                        .foregroundColor(.pink)
                    
                    Text(messageString)
                        .font(.largeTitle)//標題
                        .fontWeight(.heavy)//大型字
                        .minimumScaleFactor(0.5)//過大自動縮小 直至符合
                        .multilineTextAlignment(.center)//多行自動對齊
                        .foregroundColor(Color.pink)
                        //.italic()//斜體
                        .frame(height: 150) //固定文字框大小
                        .frame(maxWidth:.infinity)//自動調整到最寬
                    //                .border(.brown, width: 1)//檢查用框框
                        .padding()//填充空格
                    
                    Spacer()//空間等分空格填充
                    
//                    Divider()//分隔線用法1
//                        .background(.black)
//                        .padding()
//                        .frame(width: 150.0) //寬度固定
//
//                    Rectangle()//分隔線用法2
//                        .fill(Color("SweetOrange"))
//                        .frame(width: geometry.size.width*(2/3), height: 3)//寬度自訂
                    HStack{
                        Button("Awesome") {
                            //action when button is pressed
                            messageString = "You Are Awesome!"
                        }
                        .buttonStyle(.borderedProminent) //設定按鈕格式
                        
                        Spacer()
                        
                        Button("Great") {
                            //action when button is pressed
                            messageString = "You Are Great!"
                        }
                        .buttonStyle(.borderedProminent)
                    }
                    //            .border(.brown, width: 5)//檢查用框框
                    .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
