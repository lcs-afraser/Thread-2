//: [Previous](@previous) / [Next](@next)
/*:
 ## Canvas size
 
 Set the size of your desired canvas by adjusting the constants on lines 7 and 8.
 */
let preferredWidth = 400
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
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let turtle = Tortoise(drawingUpon: canvas)

// Create a pen that can draw upon the canvas
let p = Pen(drawingUpon: canvas)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

/*:
 ## Optional code
 
 Below are two generally helpful configurations.
 
 If you do not wish to work in all four quadrants of the Cartesian plane, comment out the code on line 44.
 
 If you do not wish to see a grid, comment out the code on line 48.
 
 */
canvas.highPerformance = true



/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
 
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.
 
 */

//Background
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawRectangle(at: Point (x: 0, y: 0), width: 400, height: 600)

// Stride
for width in stride(from: -100, through: 800, by: 16) {
    
    //lines
    canvas.defaultLineWidth = 1
    canvas.lineColor = .white
    canvas.drawLine(from: Point (x: width - 200, y: 0), to: Point (x: 200, y: 1500))
}

//Big Cross
canvas.fillColor = .black
canvas.drawShapesWithFill = true
canvas.drawShapesWithBorders = true
canvas.defaultBorderWidth = 10
canvas.borderColor = .red
var bigCross: [Point] = []
bigCross.append(Point (x: 150, y: 150))
bigCross.append(Point (x: 150, y:  400))
bigCross.append(Point (x: 50, y: 400))
bigCross.append(Point (x: 50, y: 500))
bigCross.append(Point (x: 150, y: 500))
bigCross.append(Point (x: 150, y: 595))
bigCross.append(Point (x: 250, y: 595))
bigCross.append(Point (x: 250, y: 500))
bigCross.append(Point (x: 350, y: 500))
bigCross.append(Point (x: 350, y: 400))
bigCross.append(Point (x: 250, y: 400))
bigCross.append(Point (x: 250, y:  150))
canvas.drawCustomShape(with: bigCross)

//Stride
for height in stride(from: 160, through: 590, by: 20) {
    for width in stride(from: 160, through: 250, by: 20) {
        // Bottom Pattern
        if height - width <= 160 {
            canvas.lineColor = .red
        }
        else {
            canvas.lineColor = .white
        }
        canvas.defaultLineWidth = 10
        canvas.drawLine(from: Point (x: width, y: height), to: Point (x: width, y: height))
    }
}
//Stride
for height in stride(from: 410, through: 490, by: 20) {
    for width in stride(from: 60, through: 140, by: 20) {
        // Bottom Pattern
        if height - width <= 160 {
            canvas.lineColor = .red
        }
        else {
            canvas.lineColor = .white
        }
        canvas.defaultLineWidth = 10
        canvas.drawLine(from: Point (x: width, y: height), to: Point (x: width, y: height))
    }
}
//Stride
for height in stride(from: 410, through: 490, by: 20) {
    for width in stride(from: 260, through: 340, by: 20) {
        // Bottom Pattern
        if height - width <= 160 {
            canvas.lineColor = .red
        }
        else {
            canvas.lineColor = .white
        }
        canvas.defaultLineWidth = 10
        canvas.drawLine(from: Point (x: width, y: height), to: Point (x: width, y: height))
    }
}
//Text
canvas.drawShapesWithBorders = false
canvas.drawShapesWithFill = true
canvas.fillColor = .black
canvas.drawRectangle(at: Point (x: 86, y: 15), width: 220, height: 120)
canvas.textColor = .red
canvas.drawText(message: "YEEZUS", at: Point (x: 100, y: 80), size: 50, kerning: 0)
canvas.textColor = .white
canvas.drawText(message: "KANYE WEST", at: Point (x: 100, y: 50), size: 30, kerning: 0)
canvas.textColor = .red
canvas.drawText(message: "Centre Bell, Montreal, Quebec, Canada", at: Point (x: 87, y: 35), size: 12, kerning: 0)
canvas.textColor = .white
canvas.drawText(message: "Feb 17th, 2014", at: Point (x: 160, y: 18), size: 12, kerning: 0)


//Manditory
//canvas.drawAxes(withScale: true, by: 50, color: .white)

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
