using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Drawing.Drawing2D;
using System.Drawing.Imaging;

namespace Varopay
{
    public partial class GenerateCaptcha : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Response.Clear();
            int height = 30;
            int width = 200;
            Bitmap bmp = new Bitmap(width, height);

            RectangleF rectf = new RectangleF(10, 5, 0, 0);
            HatchBrush hBrush = new HatchBrush(HatchStyle.SmallConfetti, Color.LightGray, Color.Black);

            Graphics g = Graphics.FromImage(bmp);
            g.Clear(Color.White);
            g.SmoothingMode = SmoothingMode.HighQuality;
            g.InterpolationMode = InterpolationMode.HighQualityBicubic;
            g.PixelOffsetMode = PixelOffsetMode.HighQuality;
            float x = 10;
            float y = 1;
            PointF pt = new PointF(x,y);
            g.DrawString(Session["captcha"].ToString(), new Font("Thaoma", 20, FontStyle.Italic),hBrush,pt);
            g.DrawRectangle(new Pen(Color.White), 1, 1, width - 2, height - 2);
            g.RotateTransform(-5);
            g.Flush();
            Response.ContentType = "image/jpeg";
            bmp.Save(Response.OutputStream, ImageFormat.Jpeg);
            g.Dispose();
            bmp.Dispose();
        }
    }
}