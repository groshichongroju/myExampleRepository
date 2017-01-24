using System;
namespace CommonCode
{
	public class add
	{
		public static string addMethod(int a)
		{
			if (a > 5)
			{

				return " very big number";
			}
			else if (a <= 5 && a > 0)
			{
				return "medium number";
			}
			else if (a < 0)
			{
				return "very small number";
				}
			else return "default";
		}
		public add()
		{
		}
	}
}
