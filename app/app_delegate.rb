class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    rootViewController = UIViewController.alloc.init
    rootViewController.title = 'dragTest'
    rootViewController.view.backgroundColor = UIColor.whiteColor

    navigationController = UINavigationController.alloc.initWithRootViewController(rootViewController)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    @window.rootViewController = DragController.new
    @window.makeKeyAndVisible

    # @thumb01 = UIView.alloc.initWithFrame(CGRectMake(16, 80, 166, 166))
    # @thumb01.backgroundColor = UIColor.blueColor
    # @window.addSubview(@thumb01)
    #
    # @thumb02 = UIView.alloc.initWithFrame(CGRectMake(198, 80,166, 166))
    # @thumb02.backgroundColor = UIColor.greenColor
    # @window.addSubview(@thumb02)
    #
    # @thumb03 = UIView.alloc.initWithFrame(CGRectMake(16, 262,166, 166))
    # @thumb03.backgroundColor = UIColor.redColor
    # @window.addSubview(@thumb03)

    true
  end

end
