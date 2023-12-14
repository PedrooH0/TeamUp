//
//  Lousa.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI


struct Line {
    var points: [CGPoint] = [CGPoint]()
    var color: Color = .red
    var lineWidth: Double = 1.0
    var isEraser: Bool = false
}


struct Lousa: View {
    
    //lines
    @State private var currentLine = Line()
    @State private var lines: [Line] = []
    @State private var selectedColor: Color = .red
    @State private var thickness: Double = 1.0
    @State private var isEraserActive = false
    
    //pins
    @State private var locations: [CGPoint] = []
    @State private var isDeleted: [Bool] = []
    @State private var colors: [Color] = []
    @State private var color: Color = .red
    
    var body: some View {
        
        ZStack {
         
            Color("background")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                
                ZStack {
                    
                    Image("Court2")
                    
                    Canvas { context, size in
                        
                        for line in lines {
                            var path = Path()
                            path.addLines(line.points)
                            if line.isEraser  {
                                context.blendMode = .clear
                                context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                                context.blendMode = .normal
                            } else {
                                context.stroke(path, with: .color(line.color), lineWidth: line.lineWidth)
                            }
                            
                        }
                        
                        
                    }
                    .gesture(
                        DragGesture(minimumDistance: 0, coordinateSpace: .local)
                            .onChanged({ value in
                                let newPoint = value.location
                                currentLine.points.append(newPoint)
                                currentLine.isEraser = isEraserActive
                                self.lines.append(currentLine)
                            })
                            .onEnded({value in
                                //self.lines.append(currentLine)
                                self.currentLine = Line(
                                    points: [],
                                    color: selectedColor,
                                    lineWidth: thickness,
                                    isEraser: isEraserActive
                                )
                            })
                        
                    )
                    
                    HStack(spacing: 40) {
                        
                        Slider(value: $thickness, in: 1...30) {
                            Text("Grossura")
                        }
                        .frame(maxWidth: 200)
                        .onChange(of:thickness) { newThickness in
                            currentLine.lineWidth = newThickness
                        }
                        .offset(x: 120)
                        
                        ColorPickerView(selectedColor: $selectedColor)
                            .onChange(of: selectedColor) { newColor in
                                currentLine.color = newColor
                            }
                            .offset(x: 110)
                        
                        Toggle(isOn: $isEraserActive) {
                            }
                        .offset(x:-160)
                        
                        Button("Limpar") {
                            lines.removeAll()
                            }
                        .offset(x:-140)
                        
                        
                        
                    }.offset(x: 0 , y: 590)
                    
                    
                    NavigationLink(destination: TelaTime()) {
                        
                        ZStack {
                            
                            Rectangle()
                                .cornerRadius(30)
                                .foregroundColor(.black)
                                .frame(width: 180, height: 55)

                            
                            Text("Fechar")
                                .font(.system(size: 23, weight: .bold))
                                .foregroundColor(.white)
                                .padding()
                        }
                    }.offset(y: -600)
                }.padding()
               
            }
            ContentPin()
        }
        
    }
    
}
struct Lousa_Previews: PreviewProvider {
    static var previews: some View {
        Lousa()
    }
}

struct DraggablePin: View {
    @Binding var location: CGPoint
    @Binding var isDeleted: Bool
    @Binding var color: Color

    var body: some View {
        Circle()
            .fill(color)
            .frame(width: 50, height: 50)
            .position(location)
            .gesture(
                DragGesture()
                    .onChanged { value in
                        self.location = value.location
                        if abs(self.location.x - 80) < 25 && abs(self.location.y - 800) < 25 { // Altere estes valores para a posição da sua lixeira
                            self.isDeleted = true
                        }
                    }
            )
    }
}

struct ContentPin: View {
    @State private var locations: [CGPoint] = []
    @State private var isDeleted: [Bool] = []
    @State private var colors: [Color] = []
    @State private var color: Color = .red

    var body: some View {
        ZStack {
            ForEach(locations.indices, id: \.self) { index in
                if !isDeleted[index] {
                    DraggablePin(location: $locations[index], isDeleted: $isDeleted[index], color: $colors[index])
                        .onChange(of: locations[index]) { newValue in
                            if abs(newValue.x - 80) < 25 && abs(newValue.y - 800) < 25 { // Altere estes valores para a posição da sua lixeira
                                isDeleted[index] = true
                            }
                        }
                }
            }

            Button(action: {
                locations.append(CGPoint(x: 500, y: 700)) // Altere este valor para a posição inicial do pin
                isDeleted.append(false)
                colors.append(color)
            }) {
                Text("Adicionar Pin")
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .position(x: 100, y: 550)

            Button(action: {
                color = color == .red ? .blue : .red
            }) {
                Text("Mudar Cor")
                    .padding()
                    .background(Color.white)
                    .foregroundColor(.black)
                    .cornerRadius(10)
            }
            .position(x: 100, y: 650)
            
            Image(systemName: "trash")
                .resizable()
                .foregroundColor(.white)
                .frame(width: 50, height: 50)
                .position(x: 80, y: 800)
        }
    }
}

