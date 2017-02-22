using System;
using System.Drawing;

namespace ZedGraph
{
	/// <summary>
	/// <see cref="XAxis"/> inherits from <see cref="Axis"/>, and defines the
	/// special characteristics of a horizontal axis, specifically located at
	/// the bottom of the <see cref="GraphPane.AxisRect"/> of the <see cref="GraphPane"/>
	/// object
	/// </summary>
	public class XAxis : Axis, ICloneable
	{
		/// <summary>
		/// Default constructor that sets all <see cref="XAxis"/> properties to
		/// default values as defined in the <see cref="Def"/> class, except
		/// for the axis title
		/// </summary>
		/// <param name="title">The <see cref="Axis.Title"/> for this axis</param>
		public XAxis( string title )
		{
			this.Title = title;
			this.IsVisible = Def.XAx.IsVisible;
			this.ScaleFontSpec.Angle = 0F;
		}

		/// <summary>
		/// The Copy Constructor
		/// </summary>
		/// <param name="rhs">The XAxis object from which to copy</param>
		public XAxis( XAxis rhs ) : base( rhs )
		{
		}
		
		/// <summary>
		/// Deep-copy clone routine
		/// </summary>
		/// <returns>A new, independent copy of the XAxis</returns>
		public object Clone()
		{ 
			return new XAxis( this ); 
		}
		
		/// <summary>
		/// Setup the Transform Matrix to handle drawing of this <see cref="XAxis"/>
		/// </summary>
		/// <param name="g">
		/// A graphic device object to be drawn into.  This is normally e.Graphics from the
		/// PaintEventArgs argument to the Paint() method.
		/// </param>
		/// <param name="pane">
		/// A reference to the <see cref="GraphPane"/> object that is the parent or
		/// owner of this object.
		/// </param>
		/// <param name="scaleFactor">
		/// The scaling factor to be used for rendering objects.  This is calculated and
		/// passed down by the parent <see cref="GraphPane"/> object using the
		/// <see cref="GraphPane.CalcScaleFactor"/> method, and is used to proportionally adjust
		/// font sizes, etc. according to the actual size of the graph.
		/// </param>
		override public void SetTransformMatrix( Graphics g, GraphPane pane, double scaleFactor )
		{
			// Move the origin to the BottomLeft of the axisRect, which is the left
			// side of the X axis (facing from the label side)
			g.TranslateTransform( pane.AxisRect.Left, pane.AxisRect.Bottom );
		}
	}
}



