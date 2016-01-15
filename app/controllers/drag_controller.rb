class DragController < UIViewController
  def viewDidLoad
    super

    self.view.backgroundColor = UIColor.grayColor

    @thumb04 = UIView.alloc.initWithFrame(CGRectMake(16, 444, 348, 166))
    @thumb04.backgroundColor = UIColor.yellowColor
    self.view.addSubview(@thumb04)

    # drag(label_or_view, :from => location, :to => location, :number_of_points => steps, :points => path, :touches => number_of_fingers, :duration => duration)

  end


# attr_accessor :destinationView

# def initWithFrame(rect)
#   if super
#     addBehaviour
#   end
#   self
# end
#
# private
#
# def addBehaviour
#   @panGesture = UIPanGestureRecognizer.alloc.initWithTarget(self, action:'dragGesture:');
#
#   self.addGestureRecognizer(@panGesture)
#   self.userInteractionEnabled=true
# end
#
# def dragGesture(panGesture)
#     translation = panGesture.translationInView(self.superview)
#
#     case panGesture.state
#     when UIGestureRecognizerStateBegan
#       @originalCenter = self.center
#     when UIGestureRecognizerStateChanged
#       self.center = CGPointMake(self.center.x + translation.x,
#                                      self.center.y + translation.y)
#     when UIGestureRecognizerStateEnded
#       if (@destinationView && CGRectContainsRect(@destinationView.frame, self.frame))
#         self.removeGestureRecognizer(@panGesture)
#       else
#         UIView.animateWithDuration(0.5,
#              animations:lambda {
#                self.center = @originalCenter
#              },
#              completion:lambda {|finished|
#
#              })
#       end
#     end
#
#     panGesture.setTranslation(CGPointZero, inView:self.superview)
#   end

end
