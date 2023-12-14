//
//  TelaTime.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI

struct TelaTime: View {
    var body: some View {
        NavigationStack{
            ZStack{
                Color("background")
                    .edgesIgnoringSafeArea(.all)
              
                VStack{

                    HStack {
                        Text("Time A")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 0))
                            .offset(x:-660)
                        
                            
                            NavigationLink(destination:
                                TelaTimes()) {
                                
                                ZStack{
                                    
                                    Circle()
                                        .frame(width: 40, height: 40)
                                        .foregroundColor(.gray)
                                    Image(systemName: "xmark")
                                        .foregroundColor(.black)
                                        .font(.system(size:20))
                                }
                            }
                            
                        }.offset(x: 330)
                        
                    
                    HStack(spacing: 10) {
                        VStack {
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador A")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            
                        NavigationLink(destination: TelaJogador()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15){
                                        Image("PerfilTime")
                                            .resizable()
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 100, height: 100)
                                        
                                        Text("Jogador B")
                                            .bold()
                                            .foregroundColor(.white)
                                            .font(.system(size: 30))
                                    }
                                }
                            }
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador C")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador D")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador E")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador F")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            ZStack {
                                
                                Rectangle()
                                    .frame(width: 300, height: 130)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15) {
                                    Image("PerfilTime")
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(width: 100, height: 100)
                            
                                    Text("Jogador G")
                                        .bold()
                                        .foregroundColor(.white)
                                        .font(.system(size: 30))
                                }
                            }
                            
                            
                        } .offset(x: 180, y: 0)
                        
                        Image("Court2")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 1000, height: 1000)
                            //.rotationEffect(.degrees(90))
                    }
                    
                    Spacer()
                    
                    HStack(spacing: 50){
                        
                        
                        
                        NavigationLink(destination: ConfigurarTime()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 290, height: 70)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15){
                                        Image(systemName: "gearshape.fill")
                                            .resizable()
                                            .foregroundColor(.white)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Configurar Equipe")
                                            .bold()
                                            .foregroundColor(.white)
                                            .font(.system(size: 25))
                                    }
                                }
                            }
                        
                        
                        
                        NavigationLink(destination: Lousa()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 240, height: 70)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15){
                                        Image(systemName: "clipboard.fill")
                                            .resizable()
                                            .foregroundColor(.white)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Tactical Mode")
                                            .bold()
                                            .foregroundColor(.white)
                                            .font(.system(size: 25))
                                    }
                                }
                            }
                        
                        
                        
                        NavigationLink(destination: TelaJogador()) {
                            ZStack {
                                Rectangle()
                                    .frame(width: 270, height: 70)
                                    .foregroundColor(.gray)
                                    .cornerRadius(30)
                                
                                HStack(spacing: 15){
                                        Image(systemName: "plus.circle.fill")
                                            .resizable()
                                            .foregroundColor(.white)
                                            .aspectRatio(contentMode: .fit)
                                            .frame(width: 30, height: 30)
                                        
                                        Text("Adicionar Atleta")
                                            .bold()
                                            .foregroundColor(.white)
                                            .font(.system(size: 25))
                                    }
                                }
                            }
                        
                    } .offset(y:-50)
                }
            }
        }
    }
}


struct TelaTime_Previews: PreviewProvider {
    static var previews: some View {
        TelaTime()
    }
}
