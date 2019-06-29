//
//  StatText.swift
//  NBA Player Fun
//
//  Created by 山崎浩毅 on 2019/06/23.
//  Copyright © 2019 山崎浩毅. All rights reserved.
//

import SwiftUI

struct StatText : View {
    var statName: String
    var statValue: String
    
    var body: some View {
        HStack(alignment: .center) {
            Text(statName).font(.system(size: 45)).fontWeight(.bold).padding(.leading, 30)
            Text(statValue).font(.system(size: 45))
            Spacer()
        }
    }
}

#if DEBUG
struct StatText_Previews : PreviewProvider {
    static var previews: some View {
        Text("fewge")
    }
}
#endif
