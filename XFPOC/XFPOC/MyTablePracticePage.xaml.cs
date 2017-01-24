using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public partial class MyTablePracticePage : ContentPage
	{
		public MyTablePracticePage()
		{
			InitializeComponent();

		}
		public void Load(object o, EventArgs e)
		{
			var table = new TableView();
			table.Intent = TableIntent.Settings;
			var layout = new StackLayout() { Orientation = StackOrientation.Horizontal };
			layout.Children.Add(new Image() { Source = "bulb.png" });
			layout.Children.Add(new Label()
			{
				Text = "left",
				TextColor = Color.FromHex("#f35e20"),
				VerticalOptions = LayoutOptions.Center
			});
			layout.Children.Add(new Label()
			{
				Text = "right",
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
