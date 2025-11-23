//
//  ContentView.swift
//  Random
//
//  Created by 114iosClassStudent04 on 2025/11/23.
//

import SwiftUI

struct ContentView: View {
    @State private var selectedFood: Food?

    var body: some View {
        let foods = [
            Food(name: "二屋牡蠣拉麵", imageName: "二屋", description: ""),
            Food(name: "麵屋 千雲", imageName: "千雲", description: ""),
            Food(name: "吉天元拉麵", imageName: "吉天元", description: ""),
            Food(name: "池音 鶏白湯ラーメン", imageName: "池音", description: ""),
            Food(name: "數寄屋 辻葉 ゆず塩鷄白湯らーめん專門店", imageName: "辻葉", description: ""),
            Food(name: "京都柚子豚骨拉麵", imageName: "京都柚子豚骨", description: ""),
            Food(name: "拉麵らぁ麺魚堺", imageName: "拉麵らぁ麺魚堺", description: ""),
            Food(name: "麵屋長樂", imageName: "長樂", description: ""),
            Food(name: "真劍拉麵", imageName: "真劍", description: ""),
            Food(name: "隱家拉麵", imageName: "隱家", description: ""),
        ]
        ZStack{
            Image("background1")
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
                .opacity(0.5)
            VStack {
                Spacer()
                
                if let chosenFood = selectedFood {
                    Image(chosenFood.imageName)
                        .resizable()
                        .scaledToFill()
                        .frame(width: 200)
                    Text(chosenFood.name)
                        .font(.largeTitle)
                    Text(chosenFood.description)
                }
                
                Button("今天想吃哪一家拉麵") {
                    selectedFood = foods.randomElement()
                }
                .font(.title) // 放大文字
                .controlSize(.large) // 使用較大的控制尺寸
                .padding(.horizontal, 24) // 增加內距讓按鈕更大
                .padding(.vertical, 12)
                .buttonStyle(.borderedProminent)
                .clipShape(Capsule()) // 可選：讓外觀更像大按鈕
                .padding()
            }
        }
    }
}

#Preview {
    ContentView()
}
