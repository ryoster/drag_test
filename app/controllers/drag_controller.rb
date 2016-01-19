class DragController < UIViewController

  @myLabel = UIView

  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.grayColor

    @myLabel = UIView.alloc.initWithFrame(CGRectMake(16, 444, 150, 150))
    @myLabel.backgroundColor = UIColor.yellowColor
    self.view.addSubview(@myLabel)

  end

  # Perception touches
  def touchesBegan(touches, withEvent: event)
    puts '=====touchesBegan====='
    UIView.animateWithDuration(0.06, animations: -> {
      @myLabel.transform = CGAffineTransformMakeScale(0.9, 0.9)
    })
  end

  # Perception drag
  def touchesMoved(touches, withEvent: event)
    puts '=====touchesMoved====='

    @TOUCH = touches.first(UITouch: true)
    @LOCATION = @TOUCH.locationInView
    @PREVLOCATION = @TOUCH.previousLocationInView

    @myFrame = alloc.initWithFrame(CGRectMake())

    @DELETE_X.CGFloat(location.x - prevLocation.x)
    @DELETE_Y.CGFloat(location.y - prevLocation.y)

    @myFrame = origin.x += @DELETE_X
    @myFrame = origin.y += @DELETE_Y

    self.view.frame = @myFrame

  end

  def touchesEnded(touches, withEvent: event)
    puts '=====touchesEnd====='
    UIView.animateWithDuration(0.1, animations: -> {
      @myLabel.transform(CGAffineTransformMakeScale(0.4, 0.4))
      @myLabel.transform(CGAffineTransformMakeScale(1.0, 1.0))
    })
  end

  def didReceiveMemoryWarning
    super.didReceiveMemoryWarning
  end


end
