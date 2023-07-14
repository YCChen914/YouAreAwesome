//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by 陳永承 on 2023/7/8.
//

import SwiftUI
import AVFAudio

struct ContentView: View {
    @State private var messageString = "Namaste"
    @State private var messageImage = 0
    @State private var messageCount = 0
    @State private var messageSound = 0
    @State private var audioPlayer: AVAudioPlayer!
    //    @State private var pressCounter = 0 //2023/7/12練習 我的寫法
    
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
                    Image("image"+String(messageImage))
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(30)
                        .shadow(radius: 30)
                        .padding()
                    //                    //Image(systemName: "speaker.wave.3",variableValue: 0.5)
                    //                    Image(systemName: "cloud.sun.rain.fill")
                    //                        .resizable()
                    //                        .scaledToFit()
                    //                    //黑灰白三色階
                    //                    //                        .symbolRenderingMode(.hierarchical)
                    //                    //自定義三色
                    //                    //                        .symbolRenderingMode(.palette)
                    //                    //                        .foregroundStyle(.gray, .orange, .blue)
                    //                    //三色
                    //                        .symbolRenderingMode(.multicolor)
                    //                        .padding()
                    //                    //透過右邊屬性欄自訂顏色
                    //                        .background(Color(hue: 0.525, saturation: 0.782, brightness: 0.954, opacity: 0.452))
                    //                    //圓角修飾
                    //                        .cornerRadius(30)
                    //                    //陰影
                    //                        .shadow(color: .gray,radius: 30,x: 20,y: 20)
                    //                    //邊框
                    //                        .overlay(
                    //                            RoundedRectangle(cornerRadius: 30)
                    //                                .stroke(.teal, lineWidth:2)//描邊
                    //                        )
                    //                    //剪成圓形
                    //                    //.clipShape(Circle())
                    //                        .padding()
                    
                    
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
                        Button("Show Message") {
                            //action when button is pressed
                            //利用let固定不可變更 可加速運算
                            let message = ["You Are Awesome!","You Are Great!","Fabulous? That's You!","So Good!"]
                            //三元運算式寫法
                            //print(messageImage)
//                            messageCount = (messageCount == message.count-1 ? 0 : messageCount+1)
//                            var newInt:Int
//                            repeat{
//                                newInt = Int.random(in: 0...9)
//                            }while newInt == messageImage
                            messageImage = randomRepeatCheck(check: messageImage, randomStart: 0, randomEnd: 9)
                            
//                            repeat{
//                                newInt = Int.random(in: 0...message.count-1)
//                            }while newInt == messageCount
//                            messageCount = newInt
                            messageString = message[randomRepeatCheck(check: messageCount, randomStart: 0, randomEnd: message.count-1)]
                            
//                            repeat{
//                                newInt = Int.random(in: 0...5)
//                            }while newInt == messageSound
                            messageSound = randomRepeatCheck(check: messageSound, randomStart: 0, randomEnd: 5)
                            
                            playSound()
                            //                            if messageString == message1
                            //                            {
                            //                                messageString = message2
                            //                            }
                            //                            else
                            //                            {
                            //                                messageString = message1
                            //                            }
                            //2023/7/12練習 我的寫法
                            //                            if pressCounter == 0
                            //                            {
                            //                                messageString = "You Are Awesome!"
                            //                                pressCounter = 1
                            //                            }
                            //                            else
                            //                            {
                            //                                messageString = "You Are Great!"
                            //                                pressCounter = 0
                            //                            }
                        }
                        .buttonStyle(.borderedProminent) //設定按鈕格式
                        
                        //                        Spacer()
                        //
                        //                        Button("Great") {
                        //                            //action when button is pressed
                        //                            messageString = "You Are Great!"
                        //                        }
                        //                        .buttonStyle(.borderedProminent)
                    }
                    //            .border(.brown, width: 5)//檢查用框框
                    .padding()
                }
            }
        }
    }
    func randomRepeatCheck(check:Int,randomStart:Int,randomEnd:Int) -> Int {
        var newInt:Int
        guard randomEnd >= randomStart else{
            print("You cannot put more End-Number than Start-Number!")
            return -1
        }
        repeat{
            newInt = Int.random(in: randomStart...randomEnd)
        }while newInt == check
        return newInt
    }
    
    func playSound(){
        let soundName = "sound\(messageSound)"
        guard let soundFile = NSDataAsset(name: soundName)else{
            print("😡Could not read file named \(soundName)")
            return
        }
        do{
            audioPlayer = try AVAudioPlayer(data: soundFile.data)
            audioPlayer.play()
        }catch{
            print("😡 ERROR: \(error.localizedDescription) creating audioPlayer")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
