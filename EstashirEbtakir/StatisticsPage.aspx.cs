using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Web.UI.DataVisualization.Charting;
using System.Drawing;

namespace EstashirEbtakir
{
    public partial class WebForm2 : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            var chart = new List<Chart>();
            // Colors
            var c = new String[] {"#9C7C9E", "#FF7F82", "#596482", "#50D1CD"};
            var sectionColor = new String[] { "#", "#", "#", "#" }; // logo colors here

            // Fonts
            Axis label = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Calibri", 30f) } };
            Axis numbers = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Times New Roman", 10f) } };

            // ------------------- Projects -------------------
            Chart1.Palette = ChartColorPalette.None;
            Chart1.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml(c[0]),
                ColorTranslator.FromHtml(c[1]),
                ColorTranslator.FromHtml(c[2]),
                ColorTranslator.FromHtml(c[3])
            };

            // ------------------- Ideas -------------------

            Chart2.DataBind(); //must use to override the colors of bar

            // coloring
            int count = 0;
            foreach (var p in Chart2.Series["Series1"].Points)
            {
                
                p.Color = ColorTranslator.FromHtml(c[count]);
                count++;

                if (count > 3)
                {
                    count = 0;
                }
            }

            //Chart2.ChartAreas["ChartArea1"].AxisX = label;
            //Chart2.ChartAreas["ChartArea1"].AxisY = numbers;
            //Chart2.ChartAreas["ChartArea1"].AxisY.LabelAutoFitStyle = LabelAutoFitStyles.None;
            //Chart2.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            //Chart2.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;

            Chart3.Palette = ChartColorPalette.None;
            Chart3.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml(c[3]),
                ColorTranslator.FromHtml(c[1]),
                ColorTranslator.FromHtml(c[2]),
                ColorTranslator.FromHtml(c[0])
            };

            Chart4.Palette = ChartColorPalette.None;
            Chart4.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml(c[2]),
                ColorTranslator.FromHtml(c[1]),
                ColorTranslator.FromHtml(c[0]),
                ColorTranslator.FromHtml(c[3])
            };


            chart.Add(Chart1);
            chart.Add(Chart2);
            chart.Add(Chart3);
            chart.Add(Chart4);

            foreach (var ch in chart)
            {
                ch.ChartAreas["ChartArea1"].AxisX = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Calibri", 30f) } };
                ch.ChartAreas["ChartArea1"].AxisY = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Calibri", 20f) } };
                //ch.ChartAreas["ChartArea1"].AxisY.LabelAutoFitStyle = LabelAutoFitStyles.DecreaseFont;
                ch.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
                ch.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;
            }
        }

    }
}