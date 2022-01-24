//: [Previous](@previous) / [Next](@next)
/*:
## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 600
let preferredHeight = 600
/*:
 ## Required code
 
 Lines 16 to 30 are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Create canvas
let canvas = Canvas(width: 400, height: 600)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas


//Colour
let paleGreen = Color(hue: 107, saturation: 63, brightness: 75, alpha: 100)
let offWhite = Color(hue: 87, saturation: 5, brightness: 88, alpha: 100)
//Background
canvas.fillColor = paleGreen
canvas.drawShapesWithFill = true
canvas.drawRectangle(at: Point (x: -10, y: -10), width: 500, height: 700)
canvas.fillColor = .black
canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 400)
//Circles
for vertical in stride(from: 0, through: 400, by: 40) {
    for horizontal in stride(from: 0, through: 400, by: 40) {
        if horizontal + vertical == 400 {
            canvas.fillColor = offWhite
        }
            else if horizontal + vertical == 360 {
            canvas.fillColor = offWhite
        }
        else if horizontal + vertical == 320 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 280 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 240 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 200 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 160 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 120 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 80 {
        canvas.fillColor = offWhite
    }
        else if horizontal + vertical == 40 {
        canvas.fillColor = offWhite
    }
        else {
            canvas.fillColor = paleGreen
        }
        canvas.drawEllipse(at: Point (x: horizontal, y: vertical), width: 40, height: 40)
        canvas.fillColor = paleGreen
        canvas.drawEllipse(at: Point (x: horizontal, y: 0), width: 40, height: 40)
        canvas.drawEllipse(at: Point (x: 0, y: vertical), width: 40, height: 40)
    }
}
// Show a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)
/*:
 ## Show the Live View
 Don't see any results?
 
 Remember to show the Live View (1 then 2):
 
 ![timeline](timeline.png "Timeline")

 ## Use source control
 To keep your work organized, receive feedback, and earn a high grade in this course, regular use of source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source-control.png "Source Control")
 */
