import Cocoa
import PlaygroundSupport
import CanvasGraphics

// Set canvas size
let preferredWidth = 400
let preferredHeight = 400

// Create canvas
let canvas = Canvas(width: preferredWidth, height: preferredHeight)

// Show the canvas in the playground's live view
PlaygroundPage.current.liveView = canvas

//Draw a grid
canvas.drawAxes(withScale: true, by: 50, color: .black)

//Loop for pattern
for someValue in stride(from: 0, through: 400, by: 50) {
    someValue
    //Draw lines
    canvas.defaultLineWidth = 2
    canvas.lineColor = .blue
    canvas.drawLine(from: Point (x: someValue, y: 0), to: Point (x: 400, y: someValue))
    canvas.lineColor = .red
    canvas.drawLine(from: Point (x: 0, y: someValue), to: Point (x: someValue, y: 400))
    canvas.lineColor = .purple
    canvas.drawLine(from: Point (x: someValue, y: 0), to: Point (x: 0, y: 400 - someValue))
    canvas.lineColor = .green
    canvas.drawLine(from: Point (x: someValue, y: 400), to: Point (x: 400, y: 400 - someValue))
}
        
