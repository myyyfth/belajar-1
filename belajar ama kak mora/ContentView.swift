//
//  ContentView.swift
//  belajar ama kak mora
//
//  Created by Ahmad Miftah Syakir on 27/01/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Image("Elaina-san")
                .resizable()
                .edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        VStack{
        HandView()
            FromBox()
        }
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct HandView : View{
    var body : some View{
        VStack{
            Image(systemName : "hand.draw.fill")
                .resizable()
                .frame(width: 100, height:100)
                .padding()
                .background(Color.orange)
                .foregroundColor(.black)
                .cornerRadius(20)
            
            Text("WELCOME")
                
        }
        
    }
}


struct FromBox : View {
    @State  var username : String = ""
    @State  var password : String = ""
    var body: some View {
        VStack{
            Text("Namae").font(.callout).bold()
            TextField("username.." , text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Text("Pasuwādo").font(.callout).bold()
            SecureField("password.." , text: $username)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            Button(action : {print("Hello Button")}){
                Text("gass")
                
            }
            
            .padding()
            .background(Color.black)
            .cornerRadius(10)
            .foregroundColor(.orange)
            .cornerRadius(20)
            
            
        }
        
        .padding(.all,30)
        .background(Color.orange)
        .cornerRadius(30)
    }
}


