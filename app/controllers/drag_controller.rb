class DragController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.grayColor

    @thumb04 = UIView.alloc.initWithFrame(CGRectMake(16, 444, 348, 166))
    @thumb04.backgroundColor = UIColor.yellowColor
    self.view.addSubview(@thumb04)


  end

end
