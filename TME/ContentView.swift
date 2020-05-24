//
//  ContentView.swift
//  TME
//
//  Created by Eng. Norii on 5/17/20.
//  Copyright © 2020 EngSrayea. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var sheikhs = ["فهد الكندري","مشاري العفاسي","وديع اليمني","فهد المطيري","أحمد النفيس","هزاع البلوشي"]
    @State var thekr = "لا إله إلا الله وحده لا شريك له ، له الملك و له الحمد و هو على كل شيء قدير"
    var body: some View {
       ZStack {
            Color.white
        Image("BG1").resizable().scaledToFill().edgesIgnoringSafeArea(.all).opacity(0.4)
            VStack{
                Spacer()
                Text("تعوّذ من إبليس 💛").foregroundColor(.black).font(.largeTitle).font(.system(.largeTitle, design: .rounded))//.shadow(radius: 0.9)
                    .shadow(color: .gray, radius: 2, x: -1, y: 2)
                            
                 ScrollView(.horizontal){
                                HStack(spacing: 20){
                            ForEach(sheikhs,id: \.self){sheikh in
                                VStack {
                                    Image(sheikh).resizable().frame(width: 100, height: 90)
                                    Text(sheikh).font(.body).shadow(radius: 0.9)
                                }.onTapGesture {
                                MusicPlayerSheikh.sheikh.startBackgroundMusic()
                                }
                                
                                /*.onTapGesture {
                                    player(sound: sheikh, type : "mp3")
                                    //Player.startBackgroundMusic(sheikh)
                                    
                                    //playsound(sound: sheikh, type: "mp3")
                                }*/
                                
                                
                            }
                                }
                        }.offset(y: 20).padding()
                          
                /*ScrollView(.horizontal){
                    HStack( spacing: 20){
                            ForEach(sheikhs, id: \.self)
                            { sheikh in
                                Button(action: {
                                    playsound(sound: sheikh, type: "mp3")
                                }) {
                                    Image(sheikh).renderingMode(.original).resizable().frame(width: 100, height: 90)
                                        //.resizable()
                                        //.scaledToFill()
                                        //.clipShape(Circle())
                                        //.frame(width: 140,height: 140)
                                        //.overlay(Circle().stroke(Color.black, lineWidth: 6))
                                }

                            }

                    }.padding()

                }*/
                Spacer()
                ZStack {
                    Text(thekr).font(.system(size: 24)).fontWeight(.bold).font(.system(.largeTitle, design: .rounded))
                        .padding().foregroundColor(.white).multilineTextAlignment(.center).lineLimit(nil).truncationMode(.head).lineSpacing(5).shadow(color: .gray, radius: 5, x: -1, y: 1).frame(width:320, height: 420).padding()
                    .background(Color.init( #colorLiteral(red: 0.7719816566, green: 0.8849181533, blue: 0.9878149629, alpha: 1)))
                        .clipShape(RoundedRectangle(cornerRadius: 20)).shadow(color: .gray, radius: 2, y: 1)
                    //.offset(y: -70)
                    
                }.onTapGesture {
                    self.thekr = athkar.randomElement()!
                }
                            Spacer()
                
                
        }
                    }
            }
            
}
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
