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

canvas.highPerformance = true
//Colour
let brightOrange = Color(hue: 17, saturation: 95, brightness: 95, alpha: 100)
let brightYellow = Color(hue: 49, saturation: 100, brightness: 100, alpha: 100)
let offWhite = Color(hue: 79, saturation: 5, brightness: 88, alpha: 100)
//Background
canvas.fillColor = brightOrange
canvas.drawShapesWithFill = true
canvas.drawRectangle(at: Point (x: -10, y: -10), width: 500, height: 700)
//Stride
for height in stride(from: 244.4444444, through: 600, by: 44.44444444) {
    for width in stride(from: 0, through: 400, by: 44.4444444) {
//Triangles
        canvas.drawShapesWithFill = true
        var Triangle: [Point] = []
        Triangle.append(Point (x: width - 44.4444444, y: height - 44.4444444))
        Triangle.append(Point (x: width - 0, y: height - 44.4444444))
        Triangle.append(Point (x: width - 0, y: height - 0))
        if height - width <= 240 {
            canvas.fillColor = brightYellow
        }
        else {
            canvas.fillColor = offWhite
        }
        canvas.drawCustomShape(with: Triangle)
    }
}
//Text
canvas.textColor = offWhite
canvas.drawText(message: "talking heads", at: Point (x: 20, y: 140), size: 40, kerning: 0)
canvas.drawText(message: "friday, saturday, sunday", at: Point (x: 20, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "september 12, 13, 14, 1975", at: Point (x: 20, y: 20), size: 8, kerning: 0)
canvas.drawText(message: "at cgbd and omfug", at: Point (x: 150, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "135 bowery, new york city", at: Point (x: 150, y: 20), size: 8, kerning: 0)
canvas.drawText(message: "also appearing", at: Point (x: 270, y: 35), size: 8, kerning: 0)
canvas.drawText(message: "from brooklyn, the shirts", at: Point (x: 270, y: 20), size: 8, kerning: 0)
//High performance
canvas.highPerformance = false
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
