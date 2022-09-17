//
//  ContentViewList.swift
//  ThePlacesOfInterest
//
//  Created by Monkey hammer on 2022/5/15.
//

import SwiftUI
import AVFAudio


struct ContentViewlist: View {
    @State private var lists: [String] = ["fortist","Faded"]
    @State private var ints = Int.random(in: 0...1)
    @State private var labels = "开始场景"
    @State private var Icons = "play.rectangle.on.rectangle.circle.fill"
    func bodyViews() {
        switch labels {
        case "开始场景":
            labels = "正在播放\(lists[ints])"
            Icons = "livephoto.play"
        default:
            labels = "开始场景"
            Icons = "play.rectangle.on.rectangle.circle.fill"
        }
    }
    var body: some View {
        Button(action: {
            playAudio(forResource: lists[ints], ofType: "flac")
            bodyViews()
            ints = Int.random(in: 0...1)
        }, label: {
            Label(labels,systemImage: Icons)
                .font(.largeTitle)
        })
        .colorMultiply(.accentColor)
    }
}
