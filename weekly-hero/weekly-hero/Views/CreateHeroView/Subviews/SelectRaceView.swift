//
//  SelectRaceView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct SelectRaceView: View {
    @State var scrolled = 0
    @State var stories = [
        CarouselExtension(id: 0, image: "Dragonborn", offset: 0,title: "Dragonborn"),
        CarouselExtension(id: 1, image: "Dwarf", offset: 0,title: "Dwarf"),
        CarouselExtension(id: 2, image: "Elf", offset: 0,title: "Elf"),
        CarouselExtension(id: 3, image: "Gnome", offset: 0,title: "Gnome"),
        CarouselExtension(id: 4, image: "Half_Elf", offset: 0,title: "Half_Elf"),
        CarouselExtension(id: 5, image: "Half_Orc", offset: 0,title: "Half_Orc"),
        CarouselExtension(id: 6, image: "Halfling", offset: 0,title: "Halfling"),
        CarouselExtension(id: 7, image: "Human", offset: 0,title: "Human"),
        CarouselExtension(id: 8, image: "Tiefling", offset: 0,title: "Tiefling")
    ]
    
    @Binding var races: [HeroRace]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack{
                    ForEach(stories.reversed()) { story in
                        HStack {
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)) {
                                Image(story.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: calculateWidth(), height: (UIScreen.main.bounds.height / 1.8) - CGFloat(story.id - scrolled) * 50)
                                    .cornerRadius(15)
                                
                                VStack(alignment: .leading,spacing: 18) {
                                    HStack{
                                        Text(story.title)
                                            .font(.title)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                        Spacer()
                                    }
                                    
                                    Button(action: {}) {
                                        Text("Read Later")
                                            .font(.caption)
                                            .fontWeight(.bold)
                                            .foregroundColor(.white)
                                            .padding(.vertical,6)
                                            .padding(.horizontal,25)
                                            .background(Color.black)
                                            .clipShape(Capsule())
                                    }
                                }
                                .frame(width: calculateWidth() - 40)
                                .padding(.leading,20)
                                .padding(.bottom,20)
                            }
                            .offset(x: story.id - scrolled <= 2 ? CGFloat(story.id - scrolled) * 30 : 60)
                            
                            Spacer(minLength: 0)
                        }
                        .contentShape(Rectangle())
                        .offset(x: story.offset)
                        .gesture(
                            DragGesture()
                                .onChanged({ (value) in
                            
                            withAnimation{
                                if value.translation.width < 0 && story.id != stories.last!.id {
                                    stories[story.id].offset = value.translation.width
                                } else if story.id > 0 {
                                    stories[story.id - 1].offset = -(calculateWidth() + 60) + value.translation.width
                                }
                            }
                        })
                                .onEnded({ (value) in
                            withAnimation {
                                if value.translation.width < 0{
                                    if -value.translation.width > 180 && story.id != stories.last!.id{
                                        stories[story.id].offset = -(calculateWidth() + 60)
                                        scrolled += 1
                                    } else {
                                        stories[story.id].offset = 0
                                    }
                                } else if story.id > 0 {
                                    if value.translation.width > 180{
                                        stories[story.id - 1].offset = 0
                                        scrolled -= 1
                                    } else {
                                        stories[story.id - 1].offset = -(calculateWidth() + 60)
                                    }
                                }
                            }
                        })
                        )
                        .onTapGesture {
                            debugPrint("Tapped \(story.id) cell")
                        }
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 1.8)
                .padding(.horizontal,25)
                .padding(.top,25)
            }
        }
    }
}

#Preview {
    SelectRaceView(
        races: .constant([HeroRace(
            id: "testRaceID",
            name: "testRace",
            characteristics: nil,
            skills: nil,
            subRaces: nil
        )])
    )
}
