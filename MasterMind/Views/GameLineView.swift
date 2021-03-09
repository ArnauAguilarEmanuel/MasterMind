import SwiftUI

var circleSize : CGFloat = 27.0
var smallCircleMultipier : CGFloat = 0.5

struct GameLine: View{
    var color1 : Color = Color.gray
    var color2 : Color = Color.gray
    var color3 : Color = Color.gray
    var color4 : Color = Color.gray
    
    var body: some View{
        HStack{
            Circle()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(color1)
            Circle()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(color2)
            Circle()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(color3)
            Circle()
                .frame(width: circleSize, height: circleSize)
                .foregroundColor(color4)
            VStack(alignment: .center){
                HStack(){
                    Circle()
                        .frame(width: circleSize * smallCircleMultipier, height: circleSize * smallCircleMultipier)
                    Circle()
                        .frame(width: circleSize * smallCircleMultipier, height: circleSize * smallCircleMultipier)
                }
                HStack{
                    Circle()
                        .frame(width: circleSize * smallCircleMultipier, height: circleSize * smallCircleMultipier)
                    Circle()
                        .frame(width: circleSize * smallCircleMultipier, height: circleSize * smallCircleMultipier)
                }
                
            }
            
            
        }
    }
}


struct GameLine_Previews: PreviewProvider {
    static var previews: some View {
        GameLine(color1: Color.gray, color2: Color.gray, color3: Color.gray, color4: Color.gray)
            
    }
}

