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
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            var chart = new List<Chart>();
            // Colors
            var c = new String[] { "#9C7C9E", "#FF7F82", "#596482", "#50D1CD" };
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
            if (range.Value == "all")
            {
                SqlDataSource2.SelectCommand = "SELECT COUNT(tec.Idea_ID) AS idea_num, tec.tech_name FROM (SELECT Idea_ID, tech_name From OurIdea, Technologies WHERE Technologies.type ='I' AND OurIdea.Idea_ID = Technologies.ID) AS tec GROUP BY tec.tech_name ORDER BY idea_num";
            }
            
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

            Chart3.Series[0].Label = "#PERCENT{P2}";

            Chart3.Series[0].LegendText ="#VALX";

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

        protected void getCharts(object sender, EventArgs e)
        {
            // الأفكار ---------------------------------- في السنة
            if (range.SelectedIndex == 0)
            {
                // 
                SqlDataSource2.SelectCommand = "SELECT COUNT(tec.Idea_ID) AS idea_num, tec.tech_name FROM (SELECT Idea_ID, tech_name From OurIdea, Technologies WHERE Technologies.type ='I' AND OurIdea.Idea_ID = Technologies.ID) AS tec GROUP BY tec.tech_name ORDER BY idea_num";
                // عدد الافكار المأخوذة وغير مأخوذة في آخر سنة
                SqlDataSource3.SelectCommand = "SELECT TOP(2) COUNT(Idea_ID), taken_stat, y FROM (SELECT Idea_ID, YEAR(Date) AS y, Is_Taken, CASE WHEN Is_Taken = 0 THEN N'غير مأخوذة' WHEN Is_Taken = 1 THEN N'مأخوذة' END AS taken_stat FROM OurIdea) as ideaT GROUP BY taken_stat, y ORDER BY y DESC";
                // عدد الافكار في كل سنة
                SqlDataSource4.SelectCommand = "SELECT YEAR(Date) AS year, COUNT(Idea_ID) AS ideas FROM OurIdea GROUP BY YEAR(Date) ORDER BY YEAR(Date) DESC";
                Chart4.Series[0].XValueMember = "year";
                Chart4.Series[0].YValueMembers = "ideas";

            }

            //Chart2.DataBind(); //must use to override the colors of bar
        }

            public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;

        }
    }
}