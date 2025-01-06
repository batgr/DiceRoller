//
//  ContentView.swift
//  DiceRoller
//
//  Created by Batsotsa Grévy on 24/08/2024.
//

import SwiftUI


struct ContentView: View {
    
    @State private var numberOfDice:Int = 3
    
    var body: some View {
        VStack {
            Text("Dice Roller")
                .font(
                    .largeTitle.lowercaseSmallCaps().bold())
                
                
                
            
            HStack(){
                ForEach(1...numberOfDice, id:\.description){
                    _ in
                    DiceView()
                }
            }
            
            HStack(){
                Button("Remove dice",systemImage: "minus.circle.fill"){
                    numberOfDice -= 1
                }
                .disabled(numberOfDice==1)
                
                Button("Add dice",systemImage: "plus.circle.fill"){
                    numberOfDice += 1
                }
                .disabled(numberOfDice==6)
                
            }
            .padding()
            .labelStyle(.iconOnly)
            .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            
        }
        .padding()
        .frame(maxWidth:.infinity,maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
        .background(.appBackgroung)
        .tint(.white)
        
    }
}

#Preview {
    ContentView()
}

