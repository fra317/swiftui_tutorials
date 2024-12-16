//
//  Section1.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct Section7: View {
    
    let lezioni: [Lezione] = [
        Lezione(name: "Lezione 1", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 2", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 3", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 4", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 5", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 6", description: "Contenuto", emoji: "☎️"),
        Lezione(name: "Lezione 7", description: "Contenuto", emoji: "☎️")
    ]
    
    var body: some View {
        NavigationStack {
            ScrollView{
                VStack(spacing: 20){
                    ForEach(lezioni.indices, id: \.self) {   index in
                        let lezione = lezioni[index]
                        NavigationLink {
                            LezioneDetail(lezione: lezione)
                        } label: {
                            HStack{
                                if index % 2 == 0{
                                    Spacer()
                                }
                                ZStack {
                                    Circle()
                                        .fill(.orange.opacity(0.5))
                                        
                                    Text(lezione.emoji)
                                }
                                
                                .frame(width: 80, height: 80)
                                if index % 2 != 0{
                                    Spacer()
                                }
                            }
                            .padding(.horizontal, 100)
                        }
                    }
                }
                .padding(.top, 50)
            }
        }
    }
}

#Preview {
    Section7()
}
