using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class RegistrationPage : ContentPage
	{
		
		public RegistrationPage()
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20, 10, 10), 0, 10);
		}
		//to access user data available to outside class

		public void saveclickButton(object o, EventArgs e)
		{
			UserData myObject = new UserData();
			if (username.Text == null || password.Text == null || confirmpassword.Text == null)
			{
				DisplayAlert("Alert", " * username and password cannot be empty", "ok");
			}
			else if (emailid.Text == null || mobile.Text == null || name.Text == null || dob.Text == null)
				
			{
				//if (name.Text == null) { name.Text = "null"; }
				//else if (emailid.Text == null) { emailid.Text = "null"; }
				//else if (mobile.Text == null) { mobile.Text = "null"; }
				//else if (dob.Text == null) { dob.Text = "null"; }
				//DisplayAlert("Alert", "proceed without entering other details?", "ok");
			}
			else if(password.Text!=confirmpassword.Text)
			{
				DisplayAlert("Missmatch Password","confirm password is not matching","ok");
			}
				
			else 
			{ //add all user input to list

				myObject.setData(username.Text, password.Text);
				//userDataList.Add(username.Text);
				//userDataList.Add(password.Text);
				//userDataList.Add(confirmpassword.Text);
				//userDataList.Add(name.Text);
				//userDataList.Add(emailid.Text);
				//userDataList.Add(mobile.Text);
				//userDataList.Add(dob.Text);
				//set all input to null
				name.Text = null;
				username.Text = null;
				password.Text = null;
				confirmpassword.Text = null;
				emailid.Text = null;
				mobile.Text = null;
				dob.Text = null;
				//back to previous page
				Navigation.PopModalAsync();
				//Navigation.PushModalAsync(new loginPage());
			}

		}
		public void cancelclickButton(object o, EventArgs e)
		{
			name.Text = null;
			username.Text = null;
			password.Text = null;
			confirmpassword.Text = null;
			emailid.Text = null;
			mobile.Text = null;
			dob.Text = null;
			//back to previous page
			Navigation.PopModalAsync();
		}

	}
}
