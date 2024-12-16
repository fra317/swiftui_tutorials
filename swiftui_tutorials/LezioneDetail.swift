//
//  LezioneDetail.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct LezioneDetail: View {
    let lezione: Lezione
    var body: some View {
        NavigationStack{
            VStack{
                Text(lezione.description)
                    .padding()
                    .font(.headline)
            }
        }
        .navigationTitle(lezione.name)
    }
}

#Preview {
    LezioneDetail(lezione: Lezione(name: "Titolo", description: "dajdiuawi awd uisopaopsopaskopasopas saui ius dia dsjijin dsaijndijajiodas jiijosad ijoajio dsa", emoji: "☎️"))
}
