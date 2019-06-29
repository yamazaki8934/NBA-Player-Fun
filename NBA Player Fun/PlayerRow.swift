//
//  PlayerRow.swift
//  NBA Player Fun
//
//  Created by 山崎浩毅 on 2019/06/23.
//  Copyright © 2019 山崎浩毅. All rights reserved.
//

import SwiftUI

struct PlayerRow : View {
    
    var player: Player
    
    var body: some View {
        HStack {
            Image(player.imageName).resizable().scaledToFit().clipShape(Circle())
            Text(player.name)
            Spacer()
        }
    }
}

#if DEBUG
struct PlayerRow_Previews : PreviewProvider {
    static var previews: some View {
        VStack {
            PlayerRow(player: players[0]).previewLayout(.fixed(width: 500, height: 100))
        }
    }
}
#endif
