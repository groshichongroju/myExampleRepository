using System;
using System.Collections.Generic;

using Xamarin.Forms;

namespace XFPOC
{
	public class UserData{

		private List <String> storeData = new List<String>();
		private string[] arr = { "123","123"};
		public string[] getData()
		{

			return arr;
	    }
		public void setData( String a, String b)
		{
			int i = 0;
			arr[i] = a;
			i++;
			arr[i] = b;
		}
	}
}

