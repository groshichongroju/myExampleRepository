using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class DasboardPage : ContentPage
	{
		//List<string> dataL = new List<string>() { "Apple", "Mango", "Orange", "papaya", "peach", "guava", "banana", "Grapes", "Cucumber" };
		public DasboardPage()
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20, 10, 10), 0, 10);
		}
		public void toBack(object o, EventArgs e) { Navigation.PopModalAsync();}

	}
}
