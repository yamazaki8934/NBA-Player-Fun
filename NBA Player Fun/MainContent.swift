//
//  MainContent.swift
//  NBA Player Fun
//
//  Created by 山崎浩毅 on 2019/06/23.
//  Copyright © 2019 山崎浩毅. All rights reserved.
//

import SwiftUI

struct MainContent : View {
    
    var player: Player
    
    var body: some View {
        VStack {
            Image(player.team.imageName).resizable().frame(height: 250)
            
            Image(player.imageName).clipShape(Circle()).background(Circle().foregroundColor(.white)).overlay(Circle().stroke(Color.white, lineWidth: 4)).shadow(radius: 15).offset(x: 0, y: -90).padding(.bottom, -90)
            
            Text(player.name).font(.system(size:40)).fontWeight(.bold)
            
            StatText(statName: "Age:", statValue: String(player.age))
            
            Spacer()
            }.edgesIgnoringSafeArea(.top)
    }}

#if DEBUG
struct MainContent_Previews : PreviewProvider {
    static var previews: some View {
        MainContent(player: players[0])
    }
}
#endif
