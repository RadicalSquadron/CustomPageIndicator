//
//  CustomPageControl.swift
//  CustomPageControl
//
//  Created by iOS Developer on 04/08/17.
//  Copyright © 2017 iOS Developer. All rights reserved.
//

import UIKit

class CustomPageControl: UIView {
    var selectIndexVal = Int()
    
    var radiusValue = CGFloat()
    var radiusValueTwo = CGFloat()
    var lineWidthValue = CGFloat()

    var circle1PositionValue = CGFloat()
    var circle2PositionValue = CGFloat()
    var circle3PositionValue = CGFloat()
    var circle4PositionValue = CGFloat()
    var circle5PositionValue = CGFloat()
    var linePositionValue = CGFloat()

    var locationValue = CGFloat()
    
//    override func awakeFromNib() {
//     selectionDelegate(toSelect: 4)
//    }
//    switch UIDevice.current.userInterfaceIdiom {
//    case .phone:
//    storyBoardName = "Main"
//    break
//    // It's an iPhone
//    case .pad:
//    storyBoardName = "MainiPad"
//    
//    break
//    // It's an iPad
//    case .unspecified:
//    
//    break
//    
//    default:
//    
//    break
//    // Uh, oh! What could it be?
//    }

    override init (frame : CGRect) {
        super.init(frame : frame)
        
        
        
        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
            if UIDevice().type == .iPhone4S || UIDevice().type == .iPhone4 || UIScreen.main.bounds.width <= 320{
                //should be shrunk
                //print(UIScreen.main.bounds.width)
                
                locationValue = 58
            }
            else if UIDevice().type == .iPhone5 || UIDevice().type == .iPhone5C || UIDevice().type == .iPhone5S || UIDevice().type == .iPhoneSE || UIScreen.main.bounds.width <= 320 {
                //should be shrunk
                //print(UIScreen.main.bounds.width)
                
                locationValue = 58
            }
            else if UIDevice().type == .iPhone6  || UIDevice().type == .iPhone6S || UIDevice().type == .iPhone7 || UIScreen.main.bounds.width <= 375 {
                //no change
                //print(UIScreen.main.bounds.width)
                
                locationValue = 67
            }
            else if UIDevice().type == .iPhone7plus || UIDevice().type == .iPhone6plus || UIDevice().type == .iPhone6Splus || UIScreen.main.bounds.width <= 414.0 {
                //needs to be stretched
                //print(UIScreen.main.bounds.width)
                
                locationValue = 74
            }
            else {
                //print(UIScreen.main.bounds.width)
                
                //print("Wow! Running on a \(UIDevice().type.rawValue)")
            }
            radiusValue = 15
            radiusValueTwo = 13
            circle1PositionValue = UIScreen.main.bounds.width/7
            circle2PositionValue = UIScreen.main.bounds.width/7+locationValue
            circle3PositionValue = UIScreen.main.bounds.width/7+locationValue*2
            circle4PositionValue = UIScreen.main.bounds.width/7+locationValue*3
            circle5PositionValue = UIScreen.main.bounds.width/7+locationValue*4
            linePositionValue = 64.0
            lineWidthValue = 18
            break
        case .pad:
            radiusValue = 25
            radiusValueTwo = 23
            lineWidthValue = 24
            if UIScreen.main.bounds.width >= 834 {
                if UIScreen.main.bounds.width >= 1000 {
                    locationValue = 155

                }
                else{
                    locationValue = 126

                }
                circle1PositionValue = UIScreen.main.bounds.width/5
                circle2PositionValue = UIScreen.main.bounds.width/5+locationValue
                circle3PositionValue = UIScreen.main.bounds.width/5+locationValue*2
                circle4PositionValue = UIScreen.main.bounds.width/5+locationValue*3
                circle5PositionValue = UIScreen.main.bounds.width/5+locationValue*4
                linePositionValue = 134.0
            } else {
                locationValue = 128
                circle1PositionValue = UIScreen.main.bounds.width/6
                circle2PositionValue = UIScreen.main.bounds.width/6+locationValue
                circle3PositionValue = UIScreen.main.bounds.width/6+locationValue*2
                circle4PositionValue = UIScreen.main.bounds.width/6+locationValue*3
                circle5PositionValue = UIScreen.main.bounds.width/6+locationValue*4
                linePositionValue = 104.0
            }
            break
        default:
            break
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    func selectionDelegate(toSelect : Int) {
        switch toSelect {
        case 1:
            fifthCircle(setStatus: false, completionTag:false)
            fourthCircle(setStatus: false, completionTag:false)
            thirdCircle(setStatus: false, completionTag:false)
            secondCircle(setStatus: false, completionTag:false)
            firstCircle(setStatus: true, completionTag:true)
            break
        case 2:
            fifthCircle(setStatus: false, completionTag:false)
            fourthCircle(setStatus: false, completionTag:false)
            thirdCircle(setStatus: false, completionTag:false)
            secondCircle(setStatus: true, completionTag:true)
            firstCircle(setStatus: false, completionTag:true)
            break
        case 3:
            fifthCircle(setStatus: false, completionTag:false)
            fourthCircle(setStatus: false, completionTag:false)
            thirdCircle(setStatus: true, completionTag:true)
            secondCircle(setStatus: false, completionTag:true)
            firstCircle(setStatus: false, completionTag:true)
            break
        case 4:
            fifthCircle(setStatus: false, completionTag:false)
            fourthCircle(setStatus: true, completionTag:true)
            thirdCircle(setStatus: false, completionTag:true)
            secondCircle(setStatus: false, completionTag:true)
            firstCircle(setStatus: false, completionTag:true)
            break
        case 5:
            fifthCircle(setStatus: false, completionTag:true)
            fourthCircle(setStatus: false, completionTag:true)
            thirdCircle(setStatus: false, completionTag:true)
            secondCircle(setStatus: false, completionTag:true)
            firstCircle(setStatus: false, completionTag:true)
            break
        case 6:
            fifthCircle(setStatus: true, completionTag:true)
            fourthCircle(setStatus: false, completionTag:true)
            thirdCircle(setStatus: false, completionTag:true)
            secondCircle(setStatus: false, completionTag:true)
            firstCircle(setStatus: false, completionTag:true)
            break
        default:
            fifthCircle(setStatus: false, completionTag:true)
            fourthCircle(setStatus: false, completionTag:true)
            thirdCircle(setStatus: false, completionTag:true)
            secondCircle(setStatus: false, completionTag:true)
            firstCircle(setStatus: true, completionTag:true)
            break
        }
    }
    
    func firstCircle(setStatus: Bool, completionTag: Bool) {
        addCirlceIn(innerView: self, x: circle1PositionValue, numberStr: "1", setSelected:setStatus, setCompletion:completionTag)
    }
    
    func secondCircle(setStatus: Bool, completionTag:Bool) {
        addLengthyLineIn(innerView: self, x: circle1PositionValue, setSelected:completionTag)
        addCirlceIn(innerView: self, x: circle2PositionValue, numberStr: "2", setSelected:setStatus, setCompletion:completionTag)
    }
    
    func thirdCircle(setStatus: Bool, completionTag:Bool) {
        addLengthyLineIn(innerView: self, x: circle2PositionValue, setSelected:completionTag)
        addCirlceIn(innerView: self, x: circle3PositionValue, numberStr: "3", setSelected:setStatus, setCompletion:completionTag)
    }
    
    func fourthCircle(setStatus: Bool, completionTag:Bool) {
        addLengthyLineIn(innerView: self, x: circle3PositionValue, setSelected:completionTag)
        addCirlceIn(innerView: self, x: circle4PositionValue, numberStr: "4", setSelected:setStatus, setCompletion:completionTag)
    }
    
    func fifthCircle(setStatus: Bool, completionTag:Bool) {
        addLengthyLineIn(innerView: self, x: circle4PositionValue, setSelected:completionTag)
        addCirlceIn(innerView: self, x: circle5PositionValue, numberStr: "5", setSelected:setStatus, setCompletion:completionTag)
    }
    
    
    
    
    
    func addLengthyLineIn(innerView: UIView, x:CGFloat, setSelected:Bool)
    {
        
        let furtherTo : CGFloat = x + linePositionValue
        let pathIs = UIBezierPath()
        pathIs.move(to: CGPoint(x: x, y: self.frame.height/2.2))
        pathIs.addLine(to: CGPoint(x: furtherTo, y: self.frame.height/2.2))
        pathIs.close()
        
        
        var shapeLayers = CAShapeLayer()
        shapeLayers.path = pathIs.cgPath
        if setSelected {
            shapeLayers.strokeColor = UIColor(red: 56/255, green: 192/255, blue: 201/255, alpha: 1.0).cgColor
            
        } else {
            shapeLayers.strokeColor = UIColor(red: 15/255, green: 15/255, blue: 15/255, alpha: 1.0).cgColor
            
        }
        shapeLayers.lineWidth = lineWidthValue
        self.layer.addSublayer(shapeLayers)
        
    }
    
    func addCirlceIn(innerView: UIView, x:CGFloat, numberStr: String, setSelected:Bool,setCompletion:Bool)
    {
        let pathIs = UIBezierPath()
        
        pathIs.addArc(withCenter: CGPoint(x:x, y:self.frame.height/2.2), radius: radiusValue, startAngle: CGFloat(0), endAngle: CGFloat(M_PI * 2), clockwise: true)
        
        var shapeLayers = CAShapeLayer()
        shapeLayers.path = pathIs.cgPath
        shapeLayers.strokeColor = UIColor(red: 26.0/255, green: 26.0/255, blue: 26.0/255, alpha: 1.0).cgColor
        shapeLayers.lineWidth = 4
        self.layer.addSublayer(shapeLayers)
        
        var ypositionForText = CGFloat()
        var fontSizeIs = CGFloat()
        var imageYPosition = CGFloat()
        var imageXPosition = CGFloat()
        var imageWidthValue = CGFloat()
        var imageHeightValue = CGFloat()

        switch UIDevice.current.userInterfaceIdiom {
        case .phone:
           ypositionForText = shapeLayers.frame.origin.y+17
           fontSizeIs = 14
           imageYPosition = shapeLayers.frame.origin.y+10
           imageXPosition = x-18
           imageWidthValue = 35
           imageHeightValue = 35
           break
        case .pad:
           ypositionForText = shapeLayers.frame.origin.y+38
           fontSizeIs = 24
           imageYPosition = shapeLayers.frame.origin.y+30
           imageXPosition = x-23
           imageWidthValue = 46
           imageHeightValue = 46
           break
        default:
            
            break
        }
        
        let myTextLayer = CATextLayer()
        myTextLayer.string = numberStr
        myTextLayer.font = UIFont(name:"Futura-Medium", size:fontSizeIs)
        myTextLayer.fontSize = fontSizeIs
        myTextLayer.alignmentMode = kCAAlignmentCenter
        myTextLayer.frame = CGRect(x: x-17, y: ypositionForText, width: 35, height: 35)
        
        if setSelected {
            
            let pathIss = UIBezierPath()
            pathIss.addArc(withCenter: CGPoint(x:x, y:self.frame.height/2.2), radius: radiusValueTwo, startAngle: CGFloat(0), endAngle: CGFloat(M_PI * 2), clockwise: true)
            
            var shapeLayerss = CAShapeLayer()
            
            shapeLayerss.masksToBounds = false
            shapeLayerss.shadowColor = UIColor(red: 26.0/255, green: 26.0/255, blue: 26.0/255, alpha: 1.0).cgColor
            shapeLayerss.shadowOpacity = 1
            shapeLayerss.shadowOffset = CGSize(width: -1, height: 1)
            shapeLayerss.shadowRadius = 10
            
            
            shapeLayerss.path = pathIss.cgPath
            shapeLayerss.strokeColor = UIColor(red: 56/255, green: 192/255, blue: 201/255, alpha: 1.0).cgColor
            shapeLayerss.lineWidth = 1
            shapeLayers.addSublayer(shapeLayerss)
            
            myTextLayer.foregroundColor = UIColor.white.cgColor

            
            shapeLayers.addSublayer(myTextLayer)
            
        }
        else{
            //print(numberStr)
            if setCompletion {
                

                if numberStr == "1"{
                    
    
                    //print("oneoneoneoneone")


                    let myLayer = CALayer()
                    let myImage = UIImage(named: "teamComplete")?.cgImage
                    myLayer.frame = CGRect(x:imageXPosition, y:imageYPosition, width:imageWidthValue, height:imageHeightValue)
                    myLayer.contents = myImage
                    shapeLayers.addSublayer(myLayer)
                }
                else if numberStr == "2"
                {
                    //print("twotwotwotwotwotwotwo")
                    
                    
                    let myLayer = CALayer()
                    let myImage = UIImage(named: "idolsComplete")?.cgImage
                    myLayer.frame = CGRect(x:imageXPosition, y:imageYPosition, width:imageWidthValue, height:imageHeightValue)
                    myLayer.contents = myImage
                    shapeLayers.addSublayer(myLayer)
                    
                }
                else if numberStr == "3"
                {
                    //print("threethreethreethree")
                    let myLayer = CALayer()
                    let myImage = UIImage(named: "competitionsComplete")?.cgImage
                    myLayer.frame = CGRect(x:imageXPosition, y:imageYPosition, width:imageWidthValue, height:imageHeightValue)
                    myLayer.contents = myImage
                    shapeLayers.addSublayer(myLayer)
                }
                else if numberStr == "4"
                {
                    //print("fourfourfourfourfour")
                    let myLayer = CALayer()
                    let myImage = UIImage(named: "newsComplete")?.cgImage
                    myLayer.frame = CGRect(x:imageXPosition, y:imageYPosition, width:imageWidthValue, height:imageHeightValue)
                    myLayer.contents = myImage
                    shapeLayers.addSublayer(myLayer)
                }
                else if numberStr == "5"
                {
                    //print("fivefivefivefivefive")
                    let myLayer = CALayer()
                    let myImage = UIImage(named: "brandsCofmplete")?.cgImage
                    myLayer.frame = CGRect(x:imageXPosition, y:imageYPosition, width:imageWidthValue, height:imageHeightValue)
                    myLayer.contents = myImage
                    shapeLayers.addSublayer(myLayer)
                }
                else{
                    
                }
            }
            else{
                myTextLayer.foregroundColor = UIColor(red: 150/255, green: 150/255, blue: 150/255, alpha: 1.0).cgColor
                shapeLayers.addSublayer(myTextLayer)
                
            }
            
        }
        
        
        
        
    }
    

    
    func addConstraintsForView(bottomView: UIView) {
        NSLayoutConstraint(item: bottomView, attribute: NSLayoutAttribute.leading, relatedBy: NSLayoutRelation.equal, toItem:self, attribute: NSLayoutAttribute.leadingMargin, multiplier:1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: bottomView, attribute: NSLayoutAttribute.trailing, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.trailingMargin, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: bottomView, attribute: NSLayoutAttribute.top, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.topMargin, multiplier: 1.0, constant: 0).isActive = true
        NSLayoutConstraint(item: bottomView, attribute: NSLayoutAttribute.bottom, relatedBy: NSLayoutRelation.equal, toItem: self, attribute: NSLayoutAttribute.bottomMargin, multiplier: 1.0, constant: 0).isActive = true
    }
    
    
    
    
    
    
    
    
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }\
     
     
     
     */
    
}
