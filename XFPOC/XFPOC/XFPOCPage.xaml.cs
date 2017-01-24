using System;
using Xamarin.Forms;

namespace XFPOC
{
	public partial class XFPOCPage : ContentPage
	{
		public XFPOCPage()
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20, 10, 10), 0, 10);
		}
		public void signinclickButton(object o, EventArgs e)
		{
			//Navigation.PushModalAsync(new loginPage());
			Navigation.PushModalAsync(new loginPage());
		}
		public void signupclickButton(object o, EventArgs e)
		{
			Navigation.PushModalAsync(new RegistrationPage());
		}

	}
}
