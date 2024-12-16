//
//  ContentView.swift
//  swiftui_tutorials
//
//  Created by Francesco Prisco on 05/12/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationStack{
            List{
                NavigationLink {
                    Section1()
                } label: {
                    HStack{
                        Text("🔴 Variables, constants, strings, and numbers")
                            .font(.title3)
                    }
                }
                
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section2()
                } label: {
                    HStack{
                        Text("🔵 Booleans, string interpolation")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section3()
                } label: {
                    HStack{
                        Text("🟢 Arrays, dictionaries, sets, and enums")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section4()
                } label: {
                    HStack{
                        Text("🟤 Type annotations")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section5()
                } label: {
                    HStack{
                        Text("🟣 If, switch and the ternary operator ")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section6()
                } label: {
                    HStack{
                        Text("🟡 Loops")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section7()
                } label: {
                    HStack{
                        Text("🟠  Functions, parameters, and return values")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section8()
                } label: {
                    HStack{
                        Text("⚫️ Default values, throwing functions")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section9()
                } label: {
                    HStack{
                        Text("🔘 Closures, passing functions into functions")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))
                NavigationLink {
                    Section10()
                } label: {
                    HStack{
                        Text("⭕️ Structs, computed properties, and property observers")
                            .font(.title3)
                    }
                }
                .accessibilityLabel(Text("Variables, constants, strings, and numbers"))

            }
            .toolbar(content: {
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        ///Azione del pulsante
                        
                    } label: {
                        Image(systemName: "info.circle")
                    }

                }
            })
            .navigationTitle(Text("SwiftUI Course"))
        }
        
    }
}

#Preview {
    ContentView()
}
