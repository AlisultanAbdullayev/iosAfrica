//
//  ExternalWebLinkView.swift
//  Africa
//
//  Created by Alisultan Abdullah on 30.01.2021.
//

import SwiftUI

struct ExternalWeblinkView: View {
    
    let animal:Animal
    
    var body: some View {
        GroupBox {
            HStack {
                Image(systemName: "globe")
                Text("Wikipedia")
                Spacer()
                
                Group {
                    Link(animal.name, destination: (URL(string: animal.link) ?? URL(string: "https:/wikipedia.org"))!)
                    Image(systemName: "arrow.up.right.circle")
                }
                .foregroundColor(.accentColor)
            }
        }
    }
}

struct ExternalWeblinkView_Previews: PreviewProvider {
    static let animals:[Animal] = Bundle.main.decode("animals.json")
    static var previews: some View {
        ExternalWeblinkView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
