//
//  ContentView.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI

struct TelaJogador: View {
    
    @State private var isLinkActive = false
    @State private var nome = ""
    @State private var idade = ""
    @State private var genero = ""
    @State private var altura = ""
    @State private var peso = ""
    @State private var posicao = ""
    @State private var maoDominante = ""
    @State private var contato = ""
    @State private var descricao = ""
    
    var body: some View {
        NavigationStack{
            ZStack{
                Color("background")
                    .edgesIgnoringSafeArea(.all)
                Rectangle()
                    .frame(width: 720, height: 720)
                    .foregroundColor(.gray)
                    .cornerRadius(30)
                
                VStack {
                    
                    ZStack {
                        Text("Jogador B")
                            .bold()
                            .foregroundColor(.white)
                            .font(.system(size: 40))
                            .padding(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 400))
                            .offset(x: 0, y: -100)
                    }
                    
                    
                    HStack(spacing: 40) {
                        Image("PerfilTime")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
                            .frame(width: 200, height: 200)
                        
                        VStack(alignment: .leading, spacing: 5) {
                            
                            HStack {
                                Text("Nome")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite o nome",text:$nome)
                            }
                            
                            
                            HStack {
                                Text("Idade: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite a idade",text:$idade)
                                    .keyboardType(.numberPad)
                            }
                                
                            HStack {
                                Text("Gênero: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite o gênero",text:$genero)
                            }
                            
                            HStack {
                                Text("Altura: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite a altura",text:$altura)
                            }
                                
                            HStack {
                                Text("Peso: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite o peso",text:$peso)
                            }
                            
                            HStack {
                                Text("Posição: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite a posição",text:$posicao)
                            }
                            
                            HStack {
                                Text("Mão dominante: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite a mão dominante",text:$maoDominante)
                            }
                            
                            HStack {
                                Text("Contato: ")
                                    .font(.system(size: 20))
                                    .foregroundColor(.white)
                                    .bold()
                                TextField("Digite o contato",text:$contato)
                            }
                            
                        }
                    } .offset(x: 210, y: -100)
                    
                    HStack {
                            Text("Descrição: ")
                                .font(.system(size: 20))
                                .foregroundColor(.white)
                                .bold()
                                .offset(x: -160, y: -100)
                            
                        NavigationLink(destination: TelaTime()) {
                            
                            ZStack {
                                
                                Rectangle()
                                    .cornerRadius(30)
                                    .foregroundColor(.black)
                                    .frame(width: 180, height: 55)

                                
                                Text("Finalizar")
                                    .font(.system(size: 23, weight: .bold))
                                    .foregroundColor(.white)
                                    .padding()
                                                                    
                            }
                                
                        } .offset(x: 160, y:130)
                    }
                }
            }
                        
                    }
                }
            }
        
    

        
        struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                TelaJogador()
            }
        }
        

