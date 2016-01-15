class DragAndDropView < NSImageView

  @drag_and_drop = DragAndDropView.alloc.initWithFrame(CGRectZero)
  self.set_drag_and_drop_frame
  @mainWindow.contentView.addSubview(@drag_and_drop)

  def windowDidResize(sender)
    self.set_drag_and_drop_frame
  end

  def set_drag_and_drop_frame
    window_size = @mainWindow.frame.size
    drag_and_drop_size = [200, 200]
    @drag_and_drop.frame = [
      [
        (window_size.width / 2.0) - (drag_and_drop_size[0] / 2.0),
        (window_size.height / 2.0) - (drag_and_drop_size[1] / 2.0)
      ],
      drag_and_drop_size
    ]
  end

end
