//
//  SelectRaceView.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 27.10.2023.
//

import SwiftUI

struct CarouselExtension : Identifiable {
    var id : Int
    var image : String
    var offset : CGFloat
    var title : String
}

struct SelectRaceView: View {
    @State var scrolled = 0
    @State var stories = [
        CarouselExtension(id: 0, image: "img1", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 1, image: "img2", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 2, image: "img3", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 3, image: "img4", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 4, image: "img5", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 5, image: "img6", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 6, image: "img7", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 7, image: "img8", offset: 0,title: "Unknown_Name"),
        CarouselExtension(id: 8, image: "img8", offset: 0,title: "Unknown_Name")
    ]
    
    @Binding var races: [HeroRace]
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false) {
            VStack {
                ZStack{
                    ForEach(stories.reversed()){story in
                        HStack{
                            ZStack(alignment: Alignment(horizontal: .leading, vertical: .bottom)){
                                Image(story.image)
                                    .resizable()
                                    .aspectRatio(contentMode: .fill)
                                    .frame(width: calculateWidth(), height: (UIScreen.main.bounds.height / 1.8) - CGFloat(story.id - scrolled) * 50)
                                    .cornerRadius(15)
                                
                                VStack(alignment: .leading,spacing: 18){
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
                        .gesture(DragGesture().onChanged({ (value) in
                            
                            withAnimation{
                                if value.translation.width < 0 && story.id != stories.last!.id {
                                    stories[story.id].offset = value.translation.width
                                } else if story.id > 0 {
                                    stories[story.id - 1].offset = -(calculateWidth() + 60) + value.translation.width
                                }
                            }
                        }).onEnded({ (value) in
                            withAnimation{
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
                        }))
                    }
                }
                .frame(height: UIScreen.main.bounds.height / 1.8)
                .padding(.horizontal,25)
                .padding(.top,25)
            }
        }
    }
}

extension SelectRaceView {
    func calculateWidth()->CGFloat{
        let screen = UIScreen.main.bounds.width - 50
        let width = screen - (2 * 30)
        return width
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
