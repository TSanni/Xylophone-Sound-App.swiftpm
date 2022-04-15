import SwiftUI
import AVFoundation
var player: AVAudioPlayer?

func playSound(soundType: String) {
    guard let path = Bundle.main.path(forResource: soundType, ofType:"wav") else {
        print("no sounds")
        return 
    }
    let url = URL(fileURLWithPath: path)
    
    do {
        player = try AVAudioPlayer(contentsOf: url)
        player?.play()
        
    } catch let error {
        print(error.localizedDescription)
    }
}





struct ButtonView: View {
    var letter: String
    var width: CGFloat
    var height: CGFloat
    var color: Color
    
    var body: some View {
        
        Button { 
            switch letter {
            case "A":
                print("\(letter)")
                playSound(soundType: letter)
            case "B":
                print("\(letter)")
                playSound(soundType: letter)
            case "C":
                print("\(letter)")
                playSound(soundType: letter)
            case "D":
                print("\(letter)")
                playSound(soundType: letter)
            case "E":
                print("\(letter)")
                playSound(soundType: letter)
            case "F":
                print("\(letter)")
                playSound(soundType: letter)
            case "G":
                print("\(letter)")
                playSound(soundType: letter)
            default:
                print("ERROR")
            }
            
        } label: { 
            Text("\(letter)")
                .frame(minWidth: width, minHeight: height)
                .foregroundColor(.white)
                .background(color)
                .cornerRadius(10)
        }
        
        
    }
}
