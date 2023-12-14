//
//  TelaTimes.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI

struct TelaTimes: View {
    
    
    
    var body: some View {
        NavigationStack{
            ZStack {
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                
                VStack(spacing:40) {
                    
                    HStack {
                        Text("Bem vindo(a), qual time vamos treinar hoje?")
                            .font(.system(size: 30))
                            .foregroundColor(.black)
                            .padding()
                        
                        NavigationLink(destination: NovoTime()) {
                            Text("Criar Time")
                                .font(.system(size: 20))
                                .padding()
                                .padding(.horizontal, 20)
                                .background(
                                    RoundedRectangle(cornerRadius: .infinity, style: .circular)
                                        .foregroundColor(Color("Button"))
                                )
                        }
                    }
                    .padding(.horizontal, 50)
                    .background(
                        RoundedRectangle(cornerRadius: .infinity, style: .circular)
                            .foregroundColor(.white)
                    )
                    
                    VStack(spacing:40){
                        ZStack{
                            HStack{
                                Image("PerfilTime")
                                    .scaledToFit()
                                    .padding()
                                VStack(spacing:-30){
                                    HStack{
                                        Text("Time A")
                                            .font(.largeTitle.bold())
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        VStack(spacing:-50){
                                            NavigationLink(destination: TelaTime()) {
                                                ZStack{
                                                    
                                                    Text("ENTRAR")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.white)
                                                        .padding()
                                                }
                                                
                                                .background(
                                                    RoundedRectangle(cornerRadius: .infinity, style: .circular)
                                                        .foregroundColor(Color("Button"))
                                                    
                                                )
                                                
                                                .padding(.trailing,80)
                                                .padding(.vertical,20)
                                            }
                                            
                                        }
                                    }
                                    HStack{
                                        
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading){
                                                Text("Modalidade: Handebol")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Atletas: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Campeonatos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Treinos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                            }
                                            .frame(maxWidth:400, alignment: .leading)
                                            .padding()
                                            .padding(.leading, 40)
                                            .background(
                                                RoundedRectangle(cornerRadius:36, style: .circular)
                                                    .foregroundColor(.gray)
                                                
                                            )
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.vertical,20)
                                        }
                                        NavigationLink(destination: ConfigurarTime()) {
                                            Image(systemName: "pencil")
                                                .font(.system(size: 60))
                                                .foregroundColor(.gray)
                                                .padding(.trailing,80)
                                                .padding(.horizontal,20)
                                        }
                                    }
                                    
                                }
                            }
                        }
                        .background(
                            RoundedRectangle(cornerRadius: 36, style: .circular)
                                .foregroundColor(.white)
                        )
                        
                        
                        ZStack{
                            HStack{
                                Image("PerfilTime")
                                    .scaledToFit()
                                    .padding()
                                VStack(spacing:-30){
                                    HStack{
                                        Text("Time B")
                                            .font(.largeTitle.bold())
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        VStack(spacing:-50){
                                            NavigationLink(destination: TelaTime()) {
                                                ZStack{
                                                    
                                                    Text("ENTRAR")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.white)
                                                        .padding()
                                                }
                                                
                                                .background(
                                                    RoundedRectangle(cornerRadius: .infinity, style: .circular)
                                                        .foregroundColor(Color("Button"))
                                                    
                                                )
                                                
                                                .padding(.trailing,80)
                                                .padding(.vertical,20)
                                            }
                                            
                                        }
                                    }
                                    HStack{
                                        
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading){
                                                Text("Modalidade: Handebol")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Atletas: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Campeonatos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Treinos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                            }
                                            .frame(maxWidth:400, alignment: .leading)
                                            .padding()
                                            .padding(.leading, 40)
                                            .background(
                                                RoundedRectangle(cornerRadius:36, style: .circular)
                                                    .foregroundColor(.gray)
                                                
                                            )
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.vertical,20)
                                        }
                                        NavigationLink(destination: ConfigurarTime()) {
                                            Image(systemName: "pencil")
                                                .font(.system(size: 60))
                                                .foregroundColor(.gray)
                                                .padding(.trailing,80)
                                                .padding(.horizontal,20)
                                        }
                                    }
                                    
                                }
                            }
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 36, style: .circular)
                                .foregroundColor(.white)
                        )
                        
                        ZStack{
                            HStack{
                                Image("PerfilTime")
                                    .scaledToFit()
                                    .padding()
                                VStack(spacing:-30){
                                    HStack{
                                        Text("Time C")
                                            .font(.largeTitle.bold())
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        VStack(spacing:-50){
                                            NavigationLink(destination: TelaTime()) {
                                                ZStack{
                                                    
                                                    Text("ENTRAR")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.white)
                                                        .padding()
                                                }
                                                
                                                .background(
                                                    RoundedRectangle(cornerRadius: .infinity, style: .circular)
                                                        .foregroundColor(Color("Button"))
                                                    
                                                )
                                                
                                                .padding(.trailing,80)
                                                .padding(.vertical,20)
                                            }
                                            
                                        }
                                    }
                                    HStack{
                                        
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading){
                                                Text("Modalidade: Handebol")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Atletas: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Campeonatos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Treinos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                            }
                                            .frame(maxWidth:400, alignment: .leading)
                                            .padding()
                                            .padding(.leading, 40)
                                            .background(
                                                RoundedRectangle(cornerRadius:36, style: .circular)
                                                    .foregroundColor(.gray)
                                                
                                            )
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.vertical,20)
                                        }
                                        NavigationLink(destination: ConfigurarTime()) {
                                            Image(systemName: "pencil")
                                                .font(.system(size: 60))
                                                .foregroundColor(.gray)
                                                .padding(.trailing,80)
                                                .padding(.horizontal,20)
                                        }
                                    }
                                    
                                }
                            }
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 36, style: .circular)
                                .foregroundColor(.white)
                        )
                        ZStack{
                            HStack{
                                Image("PerfilTime")
                                    .scaledToFit()
                                    .padding()
                                VStack(spacing:-30){
                                    HStack{
                                        Text("Time D")
                                            .font(.largeTitle.bold())
                                            .foregroundColor(.black)
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                        VStack(spacing:-50){
                                            NavigationLink(destination: TelaTime()) {
                                                ZStack{
                                                    
                                                    Text("ENTRAR")
                                                        .font(.system(size: 20))
                                                        .foregroundColor(.white)
                                                        .padding()
                                                }
                                                
                                                .background(
                                                    RoundedRectangle(cornerRadius: .infinity, style: .circular)
                                                        .foregroundColor(Color("Button"))
                                                    
                                                )
                                                
                                                .padding(.trailing,80)
                                                .padding(.vertical,20)
                                            }
                                            
                                        }
                                    }
                                    HStack{
                                        
                                        
                                        ZStack {
                                            
                                            VStack(alignment: .leading){
                                                Text("Modalidade: Handebol")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Atletas: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Campeonatos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                                
                                                Text("Treinos: ")
                                                    .font(.system(size: 20))
                                                    .foregroundColor(.black)
                                                
                                            }
                                            .frame(maxWidth:400, alignment: .leading)
                                            .padding()
                                            .padding(.leading, 40)
                                            .background(
                                                RoundedRectangle(cornerRadius:36, style: .circular)
                                                    .foregroundColor(.gray)
                                                
                                            )
                                            .frame(maxWidth: .infinity, alignment: .leading)
                                            .padding(.vertical,20)
                                        }
                                        NavigationLink(destination: ConfigurarTime()) {
                                            Image(systemName: "pencil")
                                                .font(.system(size: 60))
                                                .foregroundColor(.gray)
                                                .padding(.trailing,80)
                                                .padding(.horizontal,20)
                                        }
                                    }
                                    
                                }
                            }
                            
                        }
                        
                        .background(
                            RoundedRectangle(cornerRadius: 36, style: .circular)
                                .foregroundColor(.white)
                        )
                    }
                    Spacer()
                    }
                    .padding(.horizontal, 50)
                    
                    
                    
                }
               
                
                }
        
            }
   
        }
        
    
    
    struct Comp14_Previews: PreviewProvider {
        static var previews: some View {
            TelaTimes()
        }
    }
    

