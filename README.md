# CustomPageIndicator
Custom page indicator in swift to denote page at bottom of screen.

This is a demo version, with hard-coded values for just 6 pages. Need to improve this class to show 'n' number of page indicators and also need to add a few more animation and visual changes to the design. Open for changes and corrections, please do notify of the changes.

Steps to use:

1: Declare the CustomPageControl class using,

         let bottomViews = CustomPageControl(frame:bottomView.bounds)
         //Assign the frame of a view, which is setup at the bottom for now.

2. Select the current page number, for which the indicator is required.

         bottomViews.selectionDelegate(toSelect: 1)
         //Can use for only upto 6 pages.
         
3. Add subview,

         @IBOutlet weak var bottomView: UIView!    //Create a bottom view.

         bottomContainerView.addSubview(bottomViews)     //Add our custom class to that view.
