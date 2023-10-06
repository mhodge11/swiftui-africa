//
//  AnimalDetailView.swift
//  Africa
//
//  Created by Micah Hodge on 7/14/23.
//

import SwiftUI

struct AnimalDetailView: View {
    // MARK: - PROPERTIES
    
    let animal: Animal
    
    // MARK: - BODY
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack(alignment: .center, spacing: 20) {
                // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(
                        headingImage: "photo.on.rectangle.angled",
                        headingText: "Wilderness in Pictures"
                    )
                    
                    InsetGalleryView(animal: animal)
                } //: Group
                .padding(.horizontal)
                
                // FACTS
                Group {
                    HeadingView(
                        headingImage: "questionmark.circle",
                        headingText: "Did you know?"
                    )
                    
                    InsetFactView(animal: animal)
                } //: Group
                .padding(.horizontal)
                
                // DESCRIPTION
                Group {
                    HeadingView(
                        headingImage: "info.circle",
                        headingText: "All about the \(animal.name)"
                    )
                    
                    Text(animal.description)
                        .multilineTextAlignment(.leading)
                        .layoutPriority(1)
                } //: Group
                .padding(.horizontal)
                
                // MAP
                Group {
                    HeadingView(
                        headingImage: "map",
                        headingText: "National Parks"
                    )
                    
                    InsetMapView()
                } //: Group
                .padding(.horizontal)
                
                // LINK
                Group {
                    HeadingView(
                        headingImage: "books.vertical",
                        headingText: "Learn More"
                    )
                    
                    ExternalWeblinkView(animal: animal)
                } //: Group
                .padding(.horizontal)
                
            } //: VStack
            .navigationTitle("Learn about the \(animal.name)")
            .navigationBarTitleDisplayMode(.inline)
        } //: ScrollView
    }
}

// MARK: - PREVIEW

struct AnimalDetailView_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode("animals.json")
    
    static var previews: some View {
        NavigationStack {
            AnimalDetailView(animal: animals[0])
        }
    }
}
