import SwiftUI

struct ContentView: View {
    var character: String = ""
    var thickness: CGFloat = 0
    
    var screenWidth = UIScreen.main.bounds.width
    var screenHeight = UIScreen.main.bounds.height
    var percentageOfHeight: CGFloat = 0.12
    
    var body: some View {
        
        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                ButtonView(letter: character+"C", width: screenWidth*0.95, height: screenHeight*percentageOfHeight, color: .red)
                ButtonView(letter: character+"D", width: screenWidth*0.9, height: screenHeight*percentageOfHeight, color: .orange)
                ButtonView(letter: character+"E", width: screenWidth*0.85, height: screenHeight*percentageOfHeight, color: .yellow)
                ButtonView(letter: character+"F", width: screenWidth*0.8, height: screenHeight*percentageOfHeight, color: .green)
                ButtonView(letter: character+"G", width: screenWidth*0.75, height: screenHeight*percentageOfHeight, color: .indigo)
                ButtonView(letter: character+"A", width: screenWidth*0.7, height: screenHeight*percentageOfHeight, color: .blue)
                ButtonView(letter: character+"B", width: screenWidth*0.65, height: screenHeight*percentageOfHeight, color: .purple)
                
            }
        }
        
        
        
        
        
    }
}
