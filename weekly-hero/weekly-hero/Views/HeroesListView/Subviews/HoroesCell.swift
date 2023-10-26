//
//  HoroesCell.swift
//  weekly-hero
//
//  Created by Artyom Ivanov on 25.10.2023.
//

import SwiftUI

struct HeroesCell: View {
    @State private var isShowButtonAction = false
    
    @Binding var heroTestArray: [String]
    @Binding var isShowCreatHeroView: Bool
    
    // MARK: - Constants value
    private let cellRadius: CGFloat = 20.0
    private let cellHeight: CGFloat = 140
    private let cellHorizontalPadding: CGFloat = 16
    private let cellImageFrame: CGFloat = 50
    
    var body: some View {
        ForEach(Array(heroTestArray.enumerated()), id: \.element) { (offset, element) in
            heroCell(heroIndex: offset)
        }
        addHeroCell()
    }
}

// MARK: - ViewBuilder cell function
extension HeroesCell {
    @ViewBuilder private func addHeroCell() -> some View {
        HStack {
            VStack {
                Image(systemName: "plus.app")
                    .resizable()
                    .frame(
                        width: cellImageFrame,
                        height: cellImageFrame
                    )
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height: cellHeight)
        .background(Color.blue.opacity(0.3))
        .padding(.horizontal, cellHorizontalPadding)
        .onTapGesture {
            withAnimation {
//                heroTestArray.append(contentsOf: ["new_Test_Hero"])
                isShowCreatHeroView = true
            }
        }
    }
    
    @ViewBuilder private func heroCell(heroIndex: Int) -> some View {
        HStack {
            VStack {
                HStack {
                    Spacer()
                    
                    if isShowButtonAction {
                        VStack(spacing: 10) {
                            ForEach(0..<3) { index in
                                let heightImage: CGFloat = 30
                                
                                if index == 0 {
                                    Image(systemName: "person.fill.badge.minus")
                                        .resizable()
                                        .frame(width: heightImage, height: heightImage)
                                        .onTapGesture {
//                                                heroTestArray.remove(at: heroIndex)
                                                heroTestArray.remove(at: heroIndex)
                                        }
                                } else {
                                    Image(systemName: "plus.app")
                                        .resizable()
                                        .frame(
                                            width: heightImage,
                                            height: heightImage
                                        )
                                }
                            }
                        }
                        .padding(.trailing, 16)
                        .background(Color.yellow)
                    }
                }
            }
            .frame(maxWidth: .infinity)
        }
        .frame(height: cellHeight)
        .background(Color.blue.opacity(0.3))
        .padding(.horizontal, cellHorizontalPadding)
        .onTapGesture {
            withAnimation {
                isShowButtonAction.toggle()
            }
        }
    }
}

#Preview {
    HeroesCell(heroTestArray: .constant([""]), isShowCreatHeroView: .constant(true))
}

