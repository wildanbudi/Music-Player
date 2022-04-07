//
//  MusicFeeder.swift
//  Music-Player
//
//  Created by Allicia Viona Sagi on 14/03/22.
//

import Foundation
import UIKit

struct MusicFeeder {
    
    var arrOfMusic : [Music] = []
    
    init() {
        // initialize all the objects
        let music0 = Music(image: UIImage(named: "happy.jpg"), title: "Happy", singer: "Pharrell Williams", lyrics: "Huh (Because I'm happy) Clap along if you feel like a room without a roof (Because I'm happy) Clap along if you feel like happiness is the truth (Because I'm happy) Clap along if you know what happiness is to you", isFavorite: false)
        let music1 = Music(image: UIImage(named: "daydreamer.jpg"), title: "Daydreamer", singer: "AURORA", lyrics: "And we become night time dreamers Street walkers and small talkers When we should be daydreamers And moonwalkers and dream talkers And we become night time dreamers Street walkers, small talkers When we should be daydreamers And moonwalkers and dream talkers In real life", isFavorite: false)
        let music2 = Music(image: UIImage(named: "is-this-love.jpg"), title: "Is This Love", singer: "Aalia", lyrics: "A blue bird in my heart Why do you try to get it out It's sad It's sad to know you Don't take out my blue bird It only knows how to stay dark Don't spoil It shouldn't hurt no more", isFavorite: false)
        let music3 = Music(image: UIImage(named: "auld-lang-syne.jpg"), title: "Auld Lang Syne", singer: "Denmark + Winter", lyrics: "Should auld acquaintance be forgot And never brought to mind? Should auld acquaintance be forgot And days auld lang syne? For auld lang syne, my dear For auld lang syne We'll take a cup of kindness yet For auld lang syne", isFavorite: false)
        let music4 = Music(image: UIImage(named: "10000-hours.jpg"), title: "10.000 Hours", singer: "Dan + Shay & justin Bieber", lyrics: "I'd spend 10, 000 hours and 10, 000 more Oh, if that's what it takes to learn that sweet heart of yours And I might never get there, but I'm gonna try If it's 10, 000 hours or the rest of my life I'm gonna love you (Ooh, ooh-ooh, ooh, ooh) Do you miss the road that you grew up on? Did you get your middle name from your grandma? When you think about your forever now Do you think of me?", isFavorite: false)
        
        arrOfMusic.append(music0)
        arrOfMusic.append(music1)
        arrOfMusic.append(music2)
        arrOfMusic.append(music3)
        arrOfMusic.append(music4)
    }
}
