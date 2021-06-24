//
//  ContentView.swift
//  SwiftUI Slots
//
//  Created by Zeeshan Haider on 13/11/1442 AH.
//

import SwiftUI

struct ContentView: View {
    
  @State  var img1 = "apple"
  @State  var img2 = "apple"
  @State  var img3 = "apple"
  @State  var score = 1000
    
    var body: some View {
        
       
            VStack(){
                
                Text("SwiftUI Slots!")
                    .font(.title)
                Divider()
                Spacer()
                HStack {
                    Text("Credit :")
                    Text(String(score))
                }

                    Spacer()
                Divider()
                HStack {
                    Spacer()
                    Image(img1).resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(img2).resizable()
                        .aspectRatio(contentMode: .fit)
                    Image(img3).resizable()
                        .aspectRatio(contentMode: .fit)
             
                    Spacer()
                }
                Spacer()
                Button(action: {
                    
                    let v1 = Int.random(in: 1...3)
                    let v2 = Int.random(in: 1...3)
                    let v3 = Int.random(in: 1...3)
                    
                    var apple = 0
                    var cherry = 0
                    var star = 0
                    
                    if(v1 == 1)
                    {
                        img1 = "apple"
                        apple += 1
                    }
                    else if(v1 == 2)
                    {
                        img1 = "cherry"
                        cherry += 1
                    }
                    else if (v1 == 3)
                    {
                        img1 = "star"
                        star += 1
                    }
                    
                    // For Second Image
                    
                    if(v2 == 1)
                    {
                        img2 = "apple"
                        apple += 1
                    }
                    else if(v2 == 2)
                    {
                        img2 = "cherry"
                        cherry += 1
                    }
                    else if (v2 == 3)
                    {
                        img2 = "star"
                        star += 1
                    }
                    
                    // For Third Image
                    
                    if(v3 == 1)
                    {
                        img3 = "apple"
                        apple += 1
                    }
                    else if(v3 == 2)
                    {
                        img3 = "cherry"
                        cherry += 1
                    }
                    else if (v3 == 3)
                    {
                        img3 = "star"
                        star += 1
                    }
                    
            
              // Calculating Credit Score
                    
                    print("\(star) \(apple) \(cherry)")
                    
                    if star == 3 || apple == 3 || cherry == 3{
                        score += 100
                    }
                    else if score >= 500 {
                        score -= 10
                    }
                    
                    
                }, label: {
                    Text("Spin")                    .font(.title).fontWeight(.bold).foregroundColor(Color.white)
                })
                .frame(width: 200.0, height: 50.0).background(Color.red).cornerRadius(15)
               
            }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
