//
//  MyInfoView.swift
//  HandyMan
//
//  Created by Gary Weng on 1/6/22.
//

import SwiftUI

struct MyInfoView: View {
    @State var userName: String = "David Louis"
    @State var userPhoneNum: String = "646-598-6666"
    @State var addressStree: String = "8888 65th St"
    @State var addressCity: String = "New York"
    @State var addressState: String = "NY"
    @State var addressZip: String = "11011"
    @State var userEmail: String = "abc@gmail.com"
    
    var body: some View {
      
            VStack(alignment: .center) {
              
                CellInfo(infoName: "称呼 *", textFieldText: "你的姓名", textFieldValue: userName)
                
                CellInfo(infoName: "电话号码 *", textFieldText: "你的电话号码", textFieldValue: userPhoneNum)
                
                VStack(alignment: .leading, spacing: 5){
                    
                    
                    Text("地址 *")
                        .foregroundColor(.secondary)
                        .font(.headline)
                    HStack {
                        Text("门牌: ")
                            .font(.title2)
                        TextField("Your Stree", text: $addressStree)
                            .font(.title2)
                            .padding(.all, 5)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                    }
                    
                    HStack {
                        Text("城市: ")
                            .font(.title2)
                        TextField("Your City", text: $addressCity)
                            .font(.title2)
                            .padding(.all, 5)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                        
                        Text("州: ")
                            .font(.title2)
                        TextField("Your State", text: $addressState)
                            .font(.title2)
                            .padding(.all, 5)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                    }
                    
                    HStack {
                        Text("邮编: ")
                            .font(.title2)
                        TextField("Your Zip Code", text: $addressZip)
                            .font(.title2)
                            .padding(.all, 5)
                            .background(Color.secondary.opacity(0.2))
                            .cornerRadius(10)
                    }
                }
                .padding()
                
                CellInfo(infoName: "邮箱", textFieldText: "你的邮箱地址", textFieldValue: userEmail)
                
                
                Button(action: {}) {
                    Text("保存更新")
                        .foregroundColor(.white)
    //                    .font(.title2)
                        .font(.system(size: 25))
                        .fontWeight(.bold)
                        .padding()
                        .padding(.horizontal, 120)
                        .background(Color.red)
                        .clipShape(Capsule())
                        .shadow(radius: 10, y: 5)
                    
                }
                .padding()
                
                Spacer()
                Text("汉迪曼提供最专业的服务")
                    .foregroundColor(.gray)
                    .font(.caption)
        }
            
    }
}


struct MyInfoView_Previews: PreviewProvider {
    static var previews: some View {
        MyInfoView()
    }
}

struct CellInfo: View {
    var infoName: String
    var textFieldText: String
    @State var textFieldValue: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: 5){
            
            Text(infoName)
                .foregroundColor(.secondary)
                .font(.headline)
            TextField(textFieldText, text: $textFieldValue)
                .font(.title)
                .padding()
                .background(Color.secondary.opacity(0.2))
                .cornerRadius(10)
            
        }
        .padding()
    }
}
