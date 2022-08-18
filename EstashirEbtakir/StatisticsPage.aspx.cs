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
            Chart1.Palette = ChartColorPalette.None;
            Chart1.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml("#377D71"),
                ColorTranslator.FromHtml("#FBC5C5"),
                ColorTranslator.FromHtml("#FBA1A1"),
                ColorTranslator.FromHtml("#8879B0")
            };
            //Chart1.ChartAreas[0].AxisX.LabelStyle.Font = new System.Drawing.Font("Arial", 14f);
            //Chart1.AntiAliasing = AntiAliasingStyles.All;

            Chart2.Palette = ChartColorPalette.None;
            Chart2.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml("#377D71"),
                ColorTranslator.FromHtml("#FBC5C5"),
                ColorTranslator.FromHtml("#FBA1A1"),
                ColorTranslator.FromHtml("#8879B0")
            };

            Chart3.Palette = ChartColorPalette.None;
            Chart3.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml("#FBA1A1"),
                ColorTranslator.FromHtml("#FBC5C5"),
                ColorTranslator.FromHtml("#377D71"),
                ColorTranslator.FromHtml("#8879B0")
            };
        }

    }
}