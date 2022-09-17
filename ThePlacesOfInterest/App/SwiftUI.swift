//
//  SwiftUI.swift
//  ThePlacesOfInterest
//
//  Created by MHC Inc on 2022/5/15.
//

import SwiftUI
import AVFoundation

//预先创建一个播放器
var soundPlayer: AVAudioPlayer?
var soundPlayers: Int = 0
func playAudio(forResource: String, ofType: String) {
    
    //定义路径
    guard let path:String = Bundle.main.path(forResource: forResource, ofType: ofType) else { return }
    //定义url
    let url = URL(fileURLWithPath: path)
    
    do {
        //尝试使用预设的声音播放器获取目标文件
        soundPlayer = try AVAudioPlayer(contentsOf: url)
        //播放声音————停止的话使用stop()方法
        soundPlayer?.play()
        soundPlayers += 1
        if soundPlayers == 2 {
            soundPlayer?.stop()
            soundPlayers = 0
        }
    } catch {
        //加载文件失败，这里用于防止应用程序崩溃
        print("音频文件出现问题")
    }
}
