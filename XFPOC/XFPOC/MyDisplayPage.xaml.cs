using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class MyDisplayPage : ContentPage
	{
		public MyDisplayPage( string str)
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20, 10, 10),0,0);
			displayText.Text = "This is " + str + " Page details";
		}
		public void goback(object o,EventArgs e) { Navigation.PopModalAsync();}
	}
}
