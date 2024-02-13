//
//  ContentView.swift
//  ColorGridApp
//
//  Created by Anil Caliskan on 13.02.2024.
//

import SwiftUI

struct ContentView: View {
    
    let columnLayout = Array(repeating: GridItem(), count: 3)
    
    @State private var selectedColor = Color.gray
    
    let allColors: [Color] = [
            .pink,
            .red,
            .orange,
            .yellow,
            .green,
            .mint,
            .teal,
            .cyan,
            .blue,
            .indigo,
            .purple,
            .brown,
            .gray
    ]
    
    var body: some View {
        VStack {
           Text("Selected Color")
                .font(.body)
                .fontWeight(.semibold)
                .foregroundColor(selectedColor)
                .padding(10)
            
            ScrollView {
                LazyVGrid(columns: columnLayout, content: {
                    ForEach(allColors, id: \.description) { color in
                        Button {
                            selectedColor = color
                        }label: {
                            RoundedRectangle(cornerRadius: 4.0)
                                .aspectRatio(1.0, contentMode: ContentMode.fit)
                                .foregroundColor(color)
                        }
                        .buttonStyle(.plain)
                    }
                })
            }
        }
        .padding(10)
        
    }
}

#Preview {
    ContentView()
}
