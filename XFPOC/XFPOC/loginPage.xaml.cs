using System;
using System.Diagnostics;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class loginPage : ContentPage
	{
		UserData myaccess = new UserData();
		public loginPage()
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20, 10, 10), 0, 10);
			username.Text = "Admin";
			password.Text = "Admin";
		}
		//RegistrationPage RPinstances = new RegistrationPage();
		//List<string> data = null;


		public void loginclickButton(object o, EventArgs e)
		{
			var id = myaccess.getData();
			if (id.Length == 0)
			{
				DisplayActionSheet("not yet register?", "cancel", "destruction", "button");
			}
			else {
				if (username.Text == id[0] && id[1] == password.Text)
				{
					//username.Text = null;
					//password.Text = null;
					Navigation.PushModalAsync(new DasboardPage());
				}
				else
				{
					DisplayAlert("Invalid Credencial", "Retry Again login?", "ok");
				}
				//data = RPinstances.getData();
				//int a = data.Count;
				//username.Text = Convert.ToString(a);
				//foreach (var i in data)
				//{
				//	Debug.WriteLine("i");
				//	System.Diagnostics.Debug.WriteLine("");
				//}

				//if (username.Text=="admin" && "admin"== password.Text)
				//{
				//	username.Text = null;
				//	password.Text = null;
				//	Navigation.PushModalAsync(new DasboardPage());
				//}
				////else if (data[0] != username.Text || data[1] != password.Text)
				////{
				////	DisplayAlert("Wrong credencials", "Either username or Password is wrong", "ok");
				////}
				//else 
				//{
				//	DisplayAlert("No user found!","Please register first","ok");
				//}

			}
		}
		public void cancelclickButton(object o, EventArgs e)
		{
			Navigation.PopModalAsync();
		}

	}
}
