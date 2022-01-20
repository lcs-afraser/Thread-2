//: [Previous](@previous) / [Next](@next)
//: # Introduction
//:
//: This is a playground that will let you draw shapes and other graphics easily.
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 10 and 11.
 */
let preferredWidth = 400
let preferredHeight = 400
/*:
 ## Required code
 
 Lines 19 to 27 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas
/*:
 ## Add your code
 
 Beginning on line 38, write a meaningful comment.
 
 You can remove the code on line 39 and begin writing your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 */

// Draw the grid
canvas.drawAxes(withScale: true, by: 25, color: .black)

//Turn on borders
canvas.drawShapesWithBorders = true

//Stride
//for y in stride(from: 100, through: 500, by: 50) {
    //Set y values for refrence
    // y
    //Draw lines
    //canvas.drawLine(from: Point (x: 100, y: y), to: Point (x: 200, y: y + 50))
//}

//Background Gradient
for value in stride(from: 0, through: 100, by: 1) {
let currentColor = Color(hue: 160 + value, saturation: 100, brightness: 80, alpha: 100)
canvas.lineColor = currentColor
    let scaledY = map(value: Double(value), fromLower: 0, fromUpper: 100, toLower: 0, toUpper: 400)
    canvas.defaultLineWidth = 4
    canvas.drawLine(from: Point (x: 0, y: scaledY), to: Point (x: 400, y: scaledY))
}

//Draw right ear
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point(x: 240, y: 245), width: 35, height: 35)

//Draw left ear
canvas.drawEllipse(at: Point (x: 160, y: 245), width: 35, height: 35)

//Draw the head
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point (x: 200, y: 200), width: 100, height: 100)

//Draw left eye
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point (x: 180, y: 210), width: 15, height: 25)

//Draw right eye
canvas.drawEllipse(at: Point (x: 220, y: 210), width: 15, height: 25)

//Draw right pupil
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.borderColor = Color (hue: 0, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point (x: 220, y: 205), width: 7, height: 7)

//Draw left pupil
canvas.drawEllipse(at: Point (x: 180, y: 205), width: 7, height: 7)

//Draw mouth
canvas.lineColor = .black
canvas.defaultLineWidth = 2
canvas.drawCurve(from: Point (x: 200, y: 185), to: Point (x: 200, y: 170), control1: Point (x: 200, y: 170), control2: Point (x: 170, y: 170))
canvas.drawCurve(from: Point (x: 200, y: 185), to: Point (x: 200, y: 170), control1: Point (x: 200, y: 170), control2: Point (x: 230, y: 170))
canvas.fillColor = Color (hue: 0, saturation: 100, brightness: 50, alpha: 100)
canvas.drawEllipse(at: Point (x: 200, y: 170), width: 40, height: 10)
//Draw nose
canvas.drawShapesWithBorders = true
canvas.borderColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point (x: 200, y: 190), width: 30, height: 15)
canvas.fillColor = Color (hue: 0, saturation: 0, brightness: 0, alpha: 100)
canvas.drawEllipse(at: Point (x: 200, y: 190), width: 25, height: 10)
//Draw left nostril
canvas.borderColor = Color (hue: 0, saturation: 0, brightness: 100, alpha: 100)
canvas.drawEllipse(at: Point (x: 190, y: 190), width: 5, height: 5)
//Draw right nostril
canvas.drawEllipse(at: Point (x: 210, y: 190), width: 5, height: 5)




canvas.highPerformance = false
/*:
 ## Show the Assistant Editor
 Don't see any results?
 
 Remember to show the Assistant Editor (1), and then switch to Live View (2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
