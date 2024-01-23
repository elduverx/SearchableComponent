//
//  ContentView.swift
//  SearchableComponent
//
//  Created by duverney muriel on 20/11/23.
//

import SwiftUI
import ki

struct ContentView: View {
    
    enum Names{
        case enrique
        case Duver
        case Ramon
        case Angie
    }
    
    let enrique = Names.enrique
    
    @State var search: String = ""
    var names = ["enrique", "Duver", "Ramon", "Vicente", "Esteban", "ezequiel", "duver", "Angie", "angie", "enrique", "Duver", "Ramon", "Vicente", "Esteban", "ezequiel", "duver", "Angie", "angie"]
    
    var body: some View {
        NavigationStack{
            ScrollView(showsIndicators: false) {
                ForEach(names.filter({self.search.isEmpty ? true: $0.localizedCaseInsensitiveContains(self.search)}), id: \.self){ name in
                    HStack{
                        Text(name).font(.title2.bold())
                        Spacer()
                    }.padding()
                    Divider()
                }
            }.searchable(text: self.$search)
                
                .navigationTitle("la Lista")
        }
    }
}

#Preview {
    ContentView()
}
