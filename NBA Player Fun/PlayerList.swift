//
//  PlayerList.swift
//  NBA Player Fun
//
//  Created by 山崎浩毅 on 2019/06/23.
//  Copyright © 2019 山崎浩毅. All rights reserved.
//

import SwiftUI

struct PlayerList : View {
    var body: some View {
        NavigationView {
            List(players) {
                player in
                NavigationButton(destination: MainContent(player: player)) {
                PlayerRow(player: player)
            }.navigationBarTitle(Text("NBA Players"), displayMode: .large)
            }
        }
    }
}

#if DEBUG
struct PlayerList_Previews : PreviewProvider {
    static var previews: some View {
        PlayerList()
    }
}
#endif
