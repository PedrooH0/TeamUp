//
//  NovoTime.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI

struct NovoTime: View {
    
    @State private var givenName: String = ""
    @State private var givenDescripition: String = ""
    @State private var isMaleSelected = false
    @State private var isFemaleSelected = false
    @State private var mostraNovaTela = false
    
    var body: some View {
        ZStack{
            Color("background")
                .edgesIgnoringSafeArea(.all)
            VStack{
                Rectangle()
                    .frame(width: 740, height: 900)
                    .foregroundColor(Color("block"))
                    .cornerRadius(36)
                    .offset(y:0)
                
                    
            }
            VStack{
                Text("Novo Time")
                    .font(.system(size:55, weight: .bold))
                    .foregroundColor(.white)
                    .offset(x:0,y:-350)
                
            }
            VStack{
                TextField("Nome", text: $givenName)
                    .font(.system(size: 20))
                    .padding()
                    .disableAutocorrection(true)
                    .frame(width: 450)
                    .offset(y:-200)
                    //.cornerRadius(35)
            }
            
            

            VStack {
                HStack {
                    Button(action: {
                        self.isMaleSelected = true
                        self.isFemaleSelected = false
                    }) {
                        Text("M")
                            .padding(20)
                            .background(isMaleSelected ? Color.blue : Color("CxResp"))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .padding(.trailing, 20)
                    .offset(y:-90)
                    
                    Button(action: {
                        self.isFemaleSelected = true
                        self.isMaleSelected = false
                    }) {
                        Text("F")
                            .padding(20)
                            .background(isFemaleSelected ? Color.pink : Color("CxResp"))
                            .foregroundColor(.white)
                            .clipShape(Circle())
                    }
                    .padding(.leading, 20)
                    .offset(y:-90)
                }
            }
            
            VStack{
                
                ZStack{
                    RoundedRectangle(cornerRadius: 36)
                        .frame(width: 418, height: 40)
                    
                        .offset(y:0)
                        .foregroundColor(Color("CxResp"))
                Text("Treinos")
                        .foregroundColor(Color.white)
                        .offset(x:-170)
                    
                    Button("+") {
                        mostraNovaTela.toggle()
                    }
                    .font(.system(size: 20))
                    .padding(20)
                    .background(Color("background"))
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .offset(x:170)
                    .sheet(isPresented: $mostraNovaTela) {
                        
                        segundaTela()
                    }
                    
                }
            }
            
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 36)
                        .frame(width: 418, height: 40)
                    
                        .offset(y:110)
                        .foregroundColor(Color("CxResp"))
                    Text("Campeonato")
                        .foregroundColor(Color.white)
                        .offset(x:-150, y:110)
                }
            }
            VStack{
            TextField("Descrição", text: $givenDescripition)
                .font(.system(size: 20))
                .padding()
                .disableAutocorrection(true)
                .frame(width: 450)
                .offset(y:200)
        }
    }
    .textFieldStyle(.roundedBorder)
}
}



struct segundaTela: View {
    @State private var selectedTime = Date()
    @State private var selectedDays: Set<Int> = Set(0..<7)

    let daysOfWeek = ["Domingo", "Segunda-feira", "Terça-feira", "Quarta-feira", "Quinta-feira", "Sexta-feira", "Sábado"]
    
    var body: some View {
        ZStack {
            Color(.gray)
            
            VStack {
                Spacer()
                
                Text("Definindo um Treino")
                    .font(.system(size:31))
                
                    
                Spacer()

                DatePicker("Escolha o Horário", selection: $selectedTime, displayedComponents: .hourAndMinute)
                    .datePickerStyle(WheelDatePickerStyle())
                    .labelsHidden()
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color("CxResp"))
                    }
                Spacer()

                
                ForEach(0..<daysOfWeek.count) { index in
                    HStack {
                        Toggle(daysOfWeek[index], isOn: Binding(
                            get: {
                                self.selectedDays.contains(index)
                            },
                            set: {
                                if $0 {
                                    self.selectedDays.insert(index)
                                } else {
                                    self.selectedDays.remove(index)
                                }
                            }
                        ))
                    }
                    .padding(.horizontal, 100)
                    .background{
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color("CxResp"))
                    }
                }

                Spacer()

                
                Text("Você escolheu: \(formatTime(selectedTime)) \(selectedDays.count == daysOfWeek.count ? "todos os dias" : "nos dias: \(selectedDays.map { daysOfWeek[$0] }.joined(separator: ", "))")")
                    .padding()
                    .background{
                        RoundedRectangle(cornerRadius: 36)
                            .foregroundColor(Color.green)
                    }

                Spacer()
            }
            .padding()
        }
    }

    private func formatTime(_ date: Date) -> String {
        let formatter = DateFormatter()
        formatter.timeStyle = .short
        return formatter.string(from: date)
    }
}



struct NovoTime_Previews: PreviewProvider {
    static var previews: some View {
        NovoTime()
    }
}
