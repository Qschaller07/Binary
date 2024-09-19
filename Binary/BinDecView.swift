//
//  SwiftUIView.swift
//  Binary
//
//  Created by Jonas R. Gregory on 9/17/24.
//

import SwiftUI
extension String {
    func binToDec() -> Int {
        return Int(self, radix: 2)!
    }
}
struct BinDecView: View {
    
    var body: some View {
        VStack {
            
        }
    }
}

#Preview {
    BinDecView()
}
