//
//  ColorPickerView.swift
//  TeamUp
//
//  Created by user on 14/12/23.
//

import SwiftUI

struct ColorPickerView: View {
    
    let colors = [Color.red, Color.orange, Color.green, Color.blue, Color.purple, Color.black, Color.gray, Color.white]
    @Binding var selectedColor: Color
    
    var body: some View {
        HStack {
            ForEach(colors, id: \.self) { color in
                
                Image (systemName: selectedColor == color ?
                Constents.Icons.recordCircleFill : Constents.Icons.circleFill)
                .foregroundColor (color)
                .font(.system(size: 24))
                .clipShape(Circle())
                .onTapGesture {
                    selectedColor = color
                }
            }
        }
    }
}


struct CollorPickerView_Previews: PreviewProvider {
    static var previews: some View {
        ColorPickerView(selectedColor: .constant(.blue))
    }
}
