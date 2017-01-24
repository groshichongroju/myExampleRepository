using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class ListViewPage : ContentPage
	{
		List<string> dataL = new List<string>() { "Apple", "Mango", "Orange", "papaya", "peach", "guava", "banana", "Grapes", "Cucumber" };
		public ListViewPage()
		{
			InitializeComponent();
			this.Padding = new Thickness(0, Device.OnPlatform(20,10,10), 0, 10);
			mylist.ItemsSource = dataL;
		}
		void OnSelection(object sender, SelectedItemChangedEventArgs e)
		{
			if (e.SelectedItem == null)
			{
				return; //ItemSelected is called on deselection, which results in SelectedItem being set to null
			}
			string str = (string)e.SelectedItem;
			Navigation.PushModalAsync(new MyDisplayPage(str));
			DisplayAlert("Item Selected", e.SelectedItem.ToString(), "Ok");
			//((ListView)sender).SelectedItem = null; //uncomment line if you want to disable the visual selection state.
		}
		public void OnMore(object sender, EventArgs e)
		{
			var mi = ((MenuItem)sender);
			DisplayAlert("More Context Action", mi.CommandParameter + " more context action", "OK");
		}

		public void OnDelete(object sender, EventArgs e)
		{
			var mi = ((MenuItem)sender);
			DisplayAlert("Delete Context Action", mi.CommandParameter + " delete context action", "OK");
		}
		public void goback(object o, EventArgs e) { Navigation.PopModalAsync(); }
	}
}
