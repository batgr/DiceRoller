//
//  DiceView.swift
//  DiceRoller
//
//  Created by Batsotsa Grévy on 24/08/2024.
//

import SwiftUI

struct DiceView: View {
    
    @State private var numberOfPips:Int=1
    
    var body: some View {
        
        VStack{
            Image(systemName: "die.face.\(numberOfPips).fill")
                .resizable()
                .frame(maxWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/,maxHeight: 100)
                .aspectRatio(1,contentMode: .fit)
                .foregroundStyle(.black,.white)
            
                
            Button("Roll") {
                withAnimation{
                    numberOfPips=Int.random(in: 1...6)
                }
               
            }
            .buttonStyle(.bordered)
            .aspectRatio(1,contentMode: .fit)
        }
    }
}

#Preview {
    DiceView()
}
