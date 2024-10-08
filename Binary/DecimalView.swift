//
//  DecimalView.swift
//  Binary
//
//  Created by Quin Schaller on 9/19/24.
//

import SwiftUI

struct DecimalView: View {
    @State var PutInDecimal: String = ""
    var body: some View {
        VStack {
            Text("Change Decimal to Binary or Hexa!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            Divider()
            Spacer()
            Text("Enter Decimal:")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
            TextField("Any Number!", text: $PutInDecimal)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
                .font(.title2)
            Text("Decmial to Binary: \n \(PutInDecimal.decimalToBinary)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Text("Decimal to Hexa: \n \(PutInDecimal.decimalToHexa)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

#Preview {
    DecimalView()
}
