//
//  ContentView.swift
//  cw 5-B
//
//  Created by Jamal Al-kandari on 10/08/2022.
//

import SwiftUI

struct ContentView: View { // contant view -->
    
    @State var grItems = ["Doritos", "Nice", "Snikers", "Reeses", "Lemon"]
    @State var new = ""
    
    var body: some View { // body -->
        
        VStack{ // Vstack -->
          
            List (grItems, id:\.self)  {   i in // list -->
                HStack{ // Hstack (1) -->
                    
                    Image(i)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 70, height: 70)
                        
                        
                    Spacer()
                    Text(i)
                    
                    
                } // Hstack (1) <--
                
               
                
            } .padding() // list <--
            
            
            
            HStack{ // Hstack (2) -->
                
                
                Button  {
                    grItems.append(new)
                } label: {
                    Image(systemName: "plus")
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                }.background(.green)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .cornerRadius(12)
                
                TextField("New Item", text: $new)
                .padding()
                
                Button  {
                    grItems.remove(at: 0)
                } label: {
                    Image(systemName: "minus")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 40, height: 40)
                        .padding()
                }.background(.red)
                    .foregroundColor(.white)
                    .font(.system(size: 40))
                    .cornerRadius(12)
                        
                
            }.padding() // Hstack (2) <--
            
            
        } // Vstack <--
        
 
     
    } // body <--
} // contant view <--

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
