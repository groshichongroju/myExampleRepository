using System;

using UIKit;

namespace shareAppXamarin
{
	public partial class ViewController : UIViewController
	{
		protected ViewController(IntPtr handle) : base(handle)
		{
			// Note: this .ctor should not contain any initialization logic.
		}

		public override void ViewDidLoad()
		{
			base.ViewDidLoad();
			UILabel a = new UILabel
			{
				Text = CommonCode.add.addMethod(-1),
				Frame = new CoreGraphics.CGRect(50, 50, 200, 80)
			};
			View.AddSubview(a);

			// Perform any additional setup after loading the view, typically from a nib.
		}

		public override void DidReceiveMemoryWarning()
		{
			base.DidReceiveMemoryWarning();
			// Release any cached data, images, etc that aren't in use.
		}
	}
}
