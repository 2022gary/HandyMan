//
//  LoginSignupView.swift
//  HandyMan
//
//  Created by Bowei Li on 1/6/22.
//

import SwiftUI

struct LoginSignupView: View {
    var body: some View {
        LoginPage()
    }
}

struct LoginSignupView_Previews: PreviewProvider {
    static var previews: some View {
        LoginSignupView()
    }
}

struct LoginPage: View {
    @State var index = 1
    @Namespace var name
    
    var body: some View{
        
        GeometryReader{_ in
            
            VStack(spacing:10){
                Spacer()
                Image(systemName: "dollarsign.circle")
                    .resizable()
                    .frame(width: 100, height: 100)
                    .padding(.bottom, 25)
                    .foregroundColor(.gray)
                
                HStack(spacing:0) {
                    Button(action: {
                        withAnimation(.spring()) {
                            index = 0
                        }
                    }){
                        VStack{
                            Text("Login")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 0 ? .black : .gray)
                            ZStack {
                                Capsule()
                                    .fill(Color.black.opacity(0.1))
                                    .frame(height:4)
                                
                                if index == 0 {
                                    Capsule()
                                        .fill(Color.black)
                                        .frame(height:4)
                                        .matchedGeometryEffect(id: "Tab", in: name)
                                }
                            }
                            .padding(.horizontal)
                        }
                        
                    }
                    Button(action: {
                        withAnimation(.spring()) {
                            index = 1
                        }
                    }){
                        VStack{
                            Text("Sign Up")
                                .font(.system(size: 20))
                                .fontWeight(.bold)
                                .foregroundColor(index == 1 ? .black : .gray)
                            ZStack {
                                Capsule()
                                    .fill(Color.black.opacity(0.1))
                                    .frame(height:4)
                                    
                                
                                if index == 1 {
                                    Capsule()
                                        .fill(Color.black)
                                        .frame(height:4)
                                        .matchedGeometryEffect(id: "Tab", in: name)
                                }
                            }
                            .padding(.horizontal)
                        }
                       
                    }
                }
                .padding(.top, 30)
                .padding(.bottom)
                
                HStack{
                if index == 0 {
                    Login()
                }else{
                    SignUp()
                }
                }
                Spacer()
            }
        }
        .background(Color.white)
        .edgesIgnoringSafeArea(.all)
    }
}


struct Login: View {
    @State var email = ""
    @State var pass = ""
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            VStack {
                HStack{
                    Text("Welcome Back!")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 10)
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.white)
                        TextField("Email", text: self.$email)
                    }
                    Divider().background(Color.white.opacity(0.9))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                .font(.title2)
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "key.fill")
                            .foregroundColor(Color.white)
                        TextField("Password", text: self.$pass)
                    }
                    Divider().background(Color.white.opacity(0.9))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                .font(.title2)
                
                HStack {
                    Spacer()
                    Button(action:{
                        
                    }){
                        Text("Forget Password")
                            .foregroundColor(Color.white.opacity(0.5))
                    }
                }
                .padding(.horizontal)
                .padding(.top, 30)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color.secondary)
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button (action: {
                
            }){
                Text("LOGIN")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.red)
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.2), radius: 5, x: 0, y: 5)
            }
            .offset(y: 25)
        }
    }
}


struct SignUp: View{
    @State var email = ""
    @State var pass = ""
    @State var repass = ""
   
    
    var body: some View{
        
        ZStack(alignment: .bottom) {
            VStack {
                HStack {
                    Text("Create Account")
                        .foregroundColor(.white)
                        .font(.title)
                        .fontWeight(.bold)
                    Spacer()
                }
                .padding(.top, 10)
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "envelope.fill")
                            .foregroundColor(Color.white)
                        TextField("Email", text: self.$email)
                    }
                    Divider().background(Color.white.opacity(0.9))
                }
                .padding(.horizontal)
                .padding(.top, 40)
                .font(.title2)
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "key.fill")
                            .foregroundColor(Color.white)
                        TextField("Password", text: self.$pass)
                    }
                    Divider().background(Color.white.opacity(0.9))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                .font(.title2)
                
                VStack{
                    HStack(spacing: 15){
                        Image(systemName: "key.fill")
                            .foregroundColor(Color.white)
                        TextField("Password", text: self.$repass)
                    }
                    Divider().background(Color.white.opacity(0.9))
                }
                .padding(.horizontal)
                .padding(.top, 30)
                .font(.title2)
            }
            .padding()
            .padding(.bottom, 65)
            .background(Color.secondary)
            .clipShape(RoundedRectangle(cornerRadius: 10))
            .contentShape(RoundedRectangle(cornerRadius: 10))
            .cornerRadius(35)
            .padding(.horizontal, 20)
            
            Button (action: {
                
            }){
                Text("SIGNUP")
                    .foregroundColor(.white)
                    .fontWeight(.bold)
                    .padding(.vertical)
                    .padding(.horizontal, 50)
                    .background(Color.red)
                    .clipShape(Capsule())
                    .shadow(color: Color.white.opacity(0.2), radius: 5, x: 0, y: 5)
            }
            .offset(y: 25)
        }
    }
}
