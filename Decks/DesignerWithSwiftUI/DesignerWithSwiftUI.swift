//
//  Deck+ViewModifier.swift
//  swiftui-viewmodifier-presentation
//
//  Created by Pascal EDMOND on 09/05/2023.
//

import SwiftUI
import DeckUI

extension Presentations {
    /// Presentation given by @pakko972 at the UX/UI plenary session at V2 on 3023-06-21
    static func designWithSwiftUI(showCamera: Bool = false) -> some View {
        GeometryReader { geo in
            VStack(spacing: 0) {
                Presenter(
                    deck: .designWithSwiftUI,
                    defaultResolution: (geo.size.width/2, geo.size.height/2),
                    showCamera: showCamera
                )
                
                BNPPFooter()
                    .frame(height: geo.size.height / 8)
            }
        }
        .background(.white)
    }
}

extension Deck {
    static var designWithSwiftUI: Deck {
        return Deck(title: "Design With SwiftUI [21/06/2023]", theme: .bnpp) {
            Slide(alignment: .center) {
                Title("Design With SwiftUI")
            }
            
            Slide {
                Title("Qu'est-ce que SwiftUI ?")
                Bullets(style: .bullet) {
                    Words("Langage de programmation Swift")
                    Words("Framework moderne d'UI")
                    Words("Présenté en 2019 (iOS 13+, iOS 15 préférable)")
                    Words("iOS, macOS, watchOS, tvOS & visionOS")
                }
            }
            
            Slide {
                Title("Approche déclarative & réactive")
                
                Bullets(style: .bullet) {
                    Words("Description de ce qu'on veut voir à l'écran plutôt du comment.")
                    Words("Réaction aux changements d'états")
                    Words("Interfaces dynamiques et interactives")
                    Words("Itérations grâce au \"live preview\"")
                }
            }
            
            Slide {
                Title("Exemple UIKit")
                
                Code(.swift, enableHighlight: true) {
                    """
                    class SimpleUIKitView: UIView {
                        lazy var button: ButtonPrimary = {
                            let button = UIButton()
                            button.title = "Primary Button"
                            button.translatesAutoresizingMaskIntoConstraints = false
                            return button
                        }
                        lazy var heading: UILabel = {
                            let label = UILabel()
                            label.text = "Headline"
                            label.textAlignment = .center
                            label.font = UIFont(for: .headline)
                            label.translatesAutoresizingMaskIntoConstraints = false
                            return label
                        }
                        lazy var stackView: UIStackView = {
                            let view = UIStackView()
                            view.axis = .vertical
                            view.spacing = 8
                            view.translatesAutoresizingMaskIntoConstraints = false
                            return view
                        }
                        
                        init() {
                            super.init(frame: .zero)
                            stackView.addArrangedSubview(heading)
                            stackView.addArrangedSubview(button)
                            self.addSubview(stackView)
                            self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .top, relatedBy: .equal, toItem: self, attribute: .top, multiplier: 1.0, constant: 0.0))
                            self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .bottom, relatedBy: .equal, toItem: self, attribute: .bottom, multiplier: 1.0, constant: 0.0))
                            self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .leading, relatedBy: .equal, toItem: self, attribute: .leading, multiplier: 1.0, constant: 0.0))
                            self.addConstraint(NSLayoutConstraint(item: stackView, attribute: .trailing, relatedBy: .equal, toItem: self, attribute: .trailing, multiplier: 1.0, constant: 0.0))
                        }
                    }
                    """
                }
            }
            
            Slide {
                Title("Exemple SwiftUI")
                
                Code(.swift, enableHighlight: true) {
                    """
                    struct SimpleSwiftUIView: View {
                        var body: some View {
                            VStack(alignment: .center, spacing: 8) {
                                Text("This is a title")
                                    .font(.headline)
                                Button("Change Color") { }
                            }
                        }
                    }
                    """
                }
            }
            
            Slide {
                Title("Building Blocks", subtitle: "Simple things should be simple, complex things should be possible")
                
                Media(.bundleImage("blocks"))
            }
            
            Slide {
                Title("Text")
                
                Code(.swift, enableHighlight: true) {
                    """
                    Text("Hello world!")
                    """
                }
                
                Media(.bundleImage("calligraphie"))
            }
            
            Slide {
                Title("Controls")
                
                Code(.swift, enableHighlight: true) {
                    """
                    Button("Tap here!") {
                        // Do something
                    }
                    
                    Toggle("Show Camera", isOn: $active)
                    
                    TextField("Rechercher", text: $text)
                    """
                }
            }
            
            Slide {
                Title("Formes")
                
                Code(.swift, enableHighlight: true) {
                    """
                    Circle()
                    
                    Rectangle()
                    
                    RoundedRectangle(cornerRadius: 10)
                    """
                }
            }
            
            Slide {
                Title("Layout Containers")
                
                Code(.swift, enableHighlight: true) {
                    """
                    HStack { … }
                    
                    VStack { … }
                    
                    ZStack { … }
                    
                    Grid { … }
                    
                    Scrollview { … }
                    """
                }
            }
            
            Slide {
                Title("Navigation Containers")
                Code(.swift, enableHighlight: true) {
                    """
                    TabView { … }
                    
                    NavigationView { … }
                    
                    SplitView { … }
                    """
                }
            }
            
            Slide {
                Title("ViewModifiers")

                Code(.swift, enableHighlight: true) {
                    """
                    Text("Hello world!")
                     👉 .font(.largeTitle)
                     👉 .padding(.vertical, 20)
                    
                    Rectangle()
                     👉 .foregroundColor(.pink)
                     👉 .frame(width: 200, height: 100)
                    """
                }
            }
            
            Slide {
                Title("Default values")
                
                Code(.swift, enableHighlight: true) {
                    """
                    Circle()
                     👉 .padding()
                    
                    
                    Rectangle()
                     👉 .background()
                    """
                }
            }
            
            Slide(alignment: .center) {
                Title("Pourquoi chez Apple, les designers font du SwiftUI ?")
            }
            
            Slide {
                Title("Anticipation des “variantes”")
                Bullets(style: .bullet) {
                    Words("État: loading, actif, inactif, erreur, …")
                    Words("Format: iPhone, iPad, etc…")
                    Words("Accessibilité: DynamicType, Color Invert, etc…")
                }
            }
            
            Slide {
                Title("Experimenter")
                Bullets(style: .bullet) {
                    Words("Animations")
                    Words("Interactions/Gestes")
                }
                
                Media(.bundleImage("designer-tool"))
            }
            
            Slide(alignment: .center) {
                Title("Présenter son travail")
            }
            
            Slide {
                Title("Relation avec les devs")
                Bullets(style: .bullet) {
                    Words("Éléments de langage")
                    Words("Anticipation des besoins en livrable")
                    Words("Anticipation des difficultés")
                    Words("Apréhension de la faisabilité")
                }
            }
            
            Slide {
                Title("Case Study", subtitle: "Mettons les mains dans le cambouis !")
                
                Media(.bundleImage("coding"))
            }
            
            Slide {
                Title("Pour aller plus loin")
                Bullets(style: .bullet) {
                    Words("Cette présentation à été faite en SwiftUI!")
                    Words("Télécharger Swift Playgrounds sur iPad ou mac")
                    Words("Documentation et Tutoriels sur le portail Apple Developer")
                    Words("https://developer.apple.com/wwdc23/10115")
                }
            }
        }
    }
}
