using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class MyTablePage : ContentPage
	{
		string[] emp;
		public MyTablePage()
		{
			InitializeComponent();
			Employee e = new Employee();
			emp=e.getemp();
			var table = new TableView();
			table.Intent = TableIntent.Settings;
			var layout = new StackLayout() { Orientation = StackOrientation.Horizontal };

			layout.Children.Add(new Entry
			{
				Text = emp[0],
				VerticalOptions = LayoutOptions.Center

			});
			layout.Children.Add(new Label()
			{
				Text = emp[1],
				TextColor = Color.FromHex("#f35e20"),
				VerticalOptions = LayoutOptions.Center
			});
			layout.Children.Add(new Label()
			{
				Text = emp[2],
				TextColor = Color.FromHex("#503026"),
				VerticalOptions = LayoutOptions.Center,
				HorizontalOptions = LayoutOptions.EndAndExpand
			});
			table.Root = new TableRoot() {
			new TableSection("Getting Started") {
				new ViewCell() {View = layout}
			}
		   };

			Content = table;
		}
	}
}
