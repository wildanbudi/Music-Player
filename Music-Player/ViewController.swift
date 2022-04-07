//
//  ViewController.swift
//  Music-Player
//
//  Created by Allicia Viona Sagi on 02/03/22.
//

import UIKit

class ViewController: UIViewController {
    
    /// Data
    var arrOfMusic: [Music] = []
    
    /// Data Control
    var currMusic = 0
    var currState = false
    
    /// Outlets
    @IBOutlet weak var imageCoverImage: UIImageView!
    @IBOutlet weak var imageBackground: UIImageView!
    
    @IBOutlet weak var lyricsTextView: UITextView!
    
    @IBOutlet weak var musicDurationSlider: UISlider!
    
    @IBOutlet weak var musicTitleLbl: UILabel!
    @IBOutlet weak var musicSingerLbl: UILabel!
    @IBOutlet weak var currTimeLbl: UILabel!
    @IBOutlet weak var timeLeftLbl: UILabel!
    
    @IBOutlet weak var favMusicBtn: UIButton!
    @IBOutlet weak var prevMusicBtn: UIButton!
    @IBOutlet weak var playMusicBtn: UIButton!
    @IBOutlet weak var nextMusicBtn: UIButton!
    @IBOutlet weak var resetFavesBtn: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        // Insert music
        arrOfMusic = MusicFeeder.init().arrOfMusic
        
        // Set up the first music cover
        imageCoverImage.image = arrOfMusic[0].image
        
        // Set up the first music title
        musicTitleLbl.text = arrOfMusic[0].title
        
        // Set up the first music singer
        musicSingerLbl.text = arrOfMusic[0].singer
        
        // Set up lyrics
        lyricsTextView.text = arrOfMusic[0].lyrics
        
        // Set up background
        imageBackground.image = UIImage(named: "happy.jpg")
        
        // Check first music fave status
        if arrOfMusic[0].isFavorite! {
            favMusicBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        }
        
    }
    
    @IBAction func pressNext(_ sender: Any) {
        
        // Validate if it's already on the last page
        if currMusic ==  arrOfMusic.count-1 {
            currMusic = 0
        } else {
            currMusic += 1
        }
        changeMusic()
    }
    
    @IBAction func pressPrev(_ sender: Any) {
        
        // Validate if it's on the very first page
        if currMusic > 0 {
            currMusic -= 1
        } else {
            currMusic = 0
        }
        changeMusic()
    }
    
    @IBAction func pressPlay(_ sender: Any) {
        
        musicDurationSlider.setValue(3, animated: true)
        timeLeftLbl.text = "03.00"
        
        if !currState {
            playMusicBtn.setImage(UIImage(systemName: "pause.fill"), for: .normal)
            currState = true
        } else {
            playMusicBtn.setImage(UIImage(systemName: "play.fill"), for: .normal)
            currState = false
        }
        print(currState)
    }
    
    @IBAction func pressFave(_ sender: Any) {
        arrOfMusic[currMusic].isFavorite = !arrOfMusic[currMusic].isFavorite!
        changeHeartIcon()
        print("Status music number \(currMusic) is \(arrOfMusic[currMusic].isFavorite)")
    }
    
    @IBAction func pressResetFaves(_ sender: Any) {
        for i in 0...arrOfMusic.count-1 {
            arrOfMusic[i].isFavorite = false
        }
        changeHeartIcon()
    }
    
    func changeMusic() {
        imageCoverImage.image = arrOfMusic[currMusic].image
        imageBackground.image = arrOfMusic[currMusic].image
        musicTitleLbl.text = arrOfMusic[currMusic].title
        musicSingerLbl.text = arrOfMusic[currMusic].singer
        lyricsTextView.text = arrOfMusic[currMusic].lyrics
        
        changeHeartIcon()
    }
    
    
    func changeHeartIcon() {
        if arrOfMusic[currMusic].isFavorite! {
            favMusicBtn.setImage(UIImage(systemName: "heart.fill"), for: .normal)
        } else {
            favMusicBtn.setImage(UIImage(systemName: "heart"), for: .normal)
        }
        
    }

}
