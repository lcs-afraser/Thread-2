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
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Create a turtle that can draw upon the canvas
let t = Tortoise(drawingUpon: canvas)

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

// Move the origin from the bottom-left corner of the canvas to it's centre point
canvas.translate(to: Point(x: 100,
                           y: 100))

// Show a grid
canvas.drawAxes(withScale: true, by: 20, color: .black)

/*:
 ## Add your code
 
 Beginning on line 61, you can add your own code.
  
 [Documentation](http://russellgordon.ca/CanvasGraphics/Documentation/) is available.

 */

// Scale
let scale = 20

// Pen width
t.lineWidth = 2

//Pen colour
t.setPenColor(to: .black)

//Start Design

//Draw Square
func drawSquare() {
    //First side
    t.penDown()
    t.left(by: 30)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)
    t.right(by: 120)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)

    //Second side
    t.left(by: 180)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)
    t.right(by: 120)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)

    //Third side
    t.penUp()
    t.right(by: 120)
    t.forward(steps: 1 * scale)
    t.left(by: 60)
    t.forward(steps: 1 * scale)
    t.penDown()
    t.beginFill()
    t.right(by: 120)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)
    t.right(by: 120)
    t.forward(steps: 1 * scale)
    t.right(by: 60)
    t.forward(steps: 1 * scale)
    t.right(by: 30)
    t.endFill()

}
//Draw Row
func drawEvenRow() {
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
drawSquare()
    
}
func drawOddRow() {
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
    drawSquare()
}
//First Row
t.penUp()
t.left(by: 90)
t.forward(steps: 30)
t.right(by: 90)
drawOddRow()

//Second row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 60)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Third Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 90)
t.right(by: 90)
drawOddRow()

//Fourth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 120)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Fith Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 150)
t.right(by: 90)
drawOddRow()

//Sixth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 180)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Seventh Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 210)
t.right(by: 90)
drawOddRow()

//Eighth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 240)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Ninth Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 270)
t.right(by: 90)
drawOddRow()

//Tenth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 300)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Eleventh Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 330)
t.right(by: 90)
drawOddRow()

//Twelvth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 360)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Thirteenth Row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 390)
t.right(by: 90)
drawOddRow()

//Fourteenth row
t.penUp()
t.goToHome()
t.left(by: 90)
t.forward(steps: 420)
t.right(by: 90)
t.forward(steps: 16)
drawEvenRow()

//Show Turtle
t.drawSelf()
t.currentPosition()
t.currentHeading()
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
