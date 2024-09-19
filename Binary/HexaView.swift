//
//  HexaView.swift
//  Binary
//
//  Created by Jonas R. Gregory on 9/19/24.
//

import SwiftUI

struct HexaView: View {
    @State var putInHexa: String = ""
    var body: some View {
        VStack {
            
            Text("Change Hexadecimal to Binary or Decimal!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            Divider()
            Spacer()
            Text("Enter Hexadecimal:")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
            TextField("Enter only 0-9 and A-F!", text: $putInHexa)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
                .font(.title2)
            Text("Hexa to Binary: \n \(putInHexa.hexaToBinary)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Text("Hexa to decimal: \n \(putInHexa.hexaToInt)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

#Preview {
    HexaView()
}
