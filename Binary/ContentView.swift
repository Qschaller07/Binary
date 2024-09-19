//
//  ContentView.swift
//  Binary
//
//  Created by Quin Schaller on 9/9/24.
//

import SwiftUI





struct ContentView: View {
    
    var body: some View {
        ZStack {
            VStack {
                Text("Decimal, Binary, and Hexa Converter")
                    .font(.largeTitle)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.purple)
                    .brightness(-0.1)
                    .bold()
                Text("Each View Converts Its Type To The Others")
                    .font(.title3)
                    .multilineTextAlignment(.center)
                Divider()
                NavigationStack {
                    Spacer()
                    NavigationLink("Convert Decimal", destination: DecimalView())
                        .font(.title)
                        .foregroundStyle(.purple)
                        .brightness(-0.1)
                        .bold()
                        
                    Spacer()
                    NavigationLink("Convert Binary", destination: BinaryView())
                        .font(.title)
                        .foregroundStyle(.purple)
                        .brightness(-0.1)
                        .bold()
                    Spacer()
                    NavigationLink("Convert Hexa", destination: HexaView())
                        .font(.title)
                        .foregroundStyle(.purple)
                        .brightness(-0.1)
                        .bold()
                    Spacer()
                }
            }
        }
    }
    
}

#Preview {
    ContentView()
}
