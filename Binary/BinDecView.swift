//
//  SwiftUIView.swift
//  Binary
//
//  Created by Jonas R. Gregory on 9/17/24.
//

import SwiftUI
extension String {
    var hexaToInt      : Int    { return Int(strtoul(self, nil, 16))      }
    var hexaToDouble   : Double { return Double(strtoul(self, nil, 16))   }
    var hexaToBinary   : String { return String(hexaToInt, radix: 2)      }
    var decimalToHexa  : String { return String(Int(self) ?? 0, radix: 16)}
    var decimalToBinary: String { return String(Int(self) ?? 0, radix: 2) }
    var binaryToInt    : Int    { return Int(strtoul(self, nil, 2))       }
    var binaryToDouble : Double { return Double(strtoul(self, nil, 2))   }
    var binaryToHexa   : String { return String(binaryToInt, radix: 16)  }
}

extension Int {
    var binaryString: String { return String(self, radix: 2)  }
    var hexaString  : String { return String(self, radix: 16) }
    var doubleValue : Double { return Double(self) }
}
struct BinDecView: View {
    @State var PutInBinary: String = ""

    var body: some View {
        VStack {
            
            Text("Change Binary to Decimal or Hexa!")
                .font(.largeTitle)
                .multilineTextAlignment(.center)
                .padding()
            Divider()
            Spacer()
            Text("Enter Binary:")
                .multilineTextAlignment(.center)
                .font(.largeTitle)
            TextField("Enter Binary; Only 1's and 0's!", text: $PutInBinary)
                .multilineTextAlignment(.center)
                .frame(width: 300)
                .textFieldStyle(.roundedBorder)
                .font(.title2)
            Text("Binary to Decimal: \n \(PutInBinary.binaryToInt)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Text("Binary to Hexa: \n \(PutInBinary.binaryToHexa)")
                .padding()
                .font(.title)
                .multilineTextAlignment(.center)
            Spacer()
        }
        
    }
}

#Preview {
    BinDecView()
}
