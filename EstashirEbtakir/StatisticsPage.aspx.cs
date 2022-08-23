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
            // عناوين الرسومات
            
            drawCharts();

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

            //Chart2.DataBind(); //must use to override the colors of bar

            // coloring
            //int count = 0;
            //foreach (var p in Chart2.Series["Series1"].Points)
            //{

            //    p.Color = ColorTranslator.FromHtml(c[count]);
            //    count++;

            //    if (count > 3)
            //    {
            //        count = 0;
            //    }
            //}

            //Chart2.ChartAreas["ChartArea1"].AxisX = label;
            //Chart2.ChartAreas["ChartArea1"].AxisY = numbers;
            //Chart2.ChartAreas["ChartArea1"].AxisY.LabelAutoFitStyle = LabelAutoFitStyles.None;
            //Chart2.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
            //Chart2.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;


        }

        protected void getCharts(object sender, EventArgs e)
        {
            drawCharts();

        }

        public void drawCharts()
        {
            Chart2.Titles.Add(new Title());
            Chart3.Titles.Add(new Title());
            Chart4.Titles.Add(new Title());

            Chart5.Titles.Add(new Title());
            Chart6.Titles.Add(new Title());
            Chart7.Titles.Add(new Title());


            if (range1.SelectedIndex == 0) // سنة
            {
                //***************************************************** الأفكار

                Chart2.Titles[0] = (new Title("الأفكار المضافة خلال السنة حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart3.Titles[0] = (new Title("نسبة الأفكار المأخوذة وغير المأخوذة خلال السنة", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart4.Titles[0] = (new Title("الأفكار المضافة خلال اخر ثلاث سنوات", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في الافكار خلال سنة
                SqlDataSource2.SelectCommand = "SELECT COUNT(tec.Idea_ID) AS num, tec.tech_name, tec.y FROM (SELECT Idea_ID, tech_name, YEAR(Date) AS y FROM EEIdea, Technologies WHERE Technologies.type ='I' AND EEIdea.Idea_ID = Technologies.ID AND YEAR(Date) = YEAR(GETDATE()) ) AS tec GROUP BY tec.tech_name, y ORDER BY y DESC";

                // عدد الافكار المأخوذة وغير مأخوذة في آخر سنة
                SqlDataSource3.SelectCommand = "SELECT TOP(2) COUNT(Idea_ID), taken_stat, dates FROM (SELECT Idea_ID, YEAR(Date) AS dates, Is_Taken, CASE WHEN Is_Taken = 0 THEN N'غير مأخوذة' WHEN Is_Taken = 1 THEN N'مأخوذة' END AS taken_stat FROM EEIdea) as ideaT GROUP BY taken_stat, dates ORDER BY dates DESC";
                Chart3.Series[0].XValueMember = "taken_stat";
                Chart3.Series[0].YValueMembers = "dates";
                Chart3.Series[0].Label = "#PERCENT{P0}";
                Chart3.Series[0].LegendText ="#VALX";

                // عدد الافكار في كل سنة
                SqlDataSource4.SelectCommand = "SELECT TOP(3) YEAR(Date) AS year, COUNT(Idea_ID) AS ideas FROM EEIdea GROUP BY YEAR(Date) ORDER BY YEAR(Date) DESC";
                Chart4.Series[0].XValueMember = "year";
                Chart4.Series[0].YValueMembers = "ideas";

                //***************************************************** المشاريع

                Chart5.Titles[0] = (new Title("المشاريع المضافة خلال السنة حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart6.Titles[0] = (new Title("نسبة المشاريع المقبولة وغير المقبولة خلال السنة", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart7.Titles[0] = (new Title("المشاريع المضافة خلال اخر ثلاث سنوات", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في المشاريع خلال سنة
                SqlDataSource5.SelectCommand = "SELECT COUNT(tec.Project_ID) AS num, tec.tech_name, tec.y FROM (SELECT Project_ID, tech_name, YEAR(Date) AS y FROM EEProject, Technologies WHERE Technologies.type ='P' AND EEProject.Project_ID = Technologies.ID AND YEAR(Date) = YEAR(GETDATE()) ) AS tec GROUP BY tec.tech_name, y ORDER BY y DESC";
                Chart5.Series[0].XValueMember = "tech_name";
                Chart5.Series[0].YValueMembers = "num";

                // عدد المشاريع المأخوذة وغير مأخوذة في آخر سنة
                SqlDataSource6.SelectCommand = "SELECT TOP(2) COUNT(Project_ID), state, dates FROM (SELECT Project_ID, YEAR(Date) AS dates, Project_State, CASE WHEN Project_State = 0 THEN N'غير مقبول' WHEN Project_State = 1 THEN N'مقبول' END AS state FROM EEProject) as projectT GROUP BY state, dates ORDER BY dates DESC";
                Chart6.Series[0].XValueMember = "state";
                Chart6.Series[0].YValueMembers = "dates";
                Chart6.Series[0].Label = "#PERCENT{P0}";
                Chart6.Series[0].LegendText ="#VALX";

                // عدد المشاريع في كل سنة
                SqlDataSource7.SelectCommand = "SELECT TOP(3) YEAR(Date) AS year, COUNT(Project_ID) AS projects FROM EEProject GROUP BY YEAR(Date) ORDER BY YEAR(Date) DESC";
                Chart7.Series[0].XValueMember = "year";
                Chart7.Series[0].YValueMembers = "projects";
            }
            else if (range1.SelectedIndex == 1)
            {
                // ستة اشهر
                //***************************************************** الأفكار

                Chart2.Titles[0] = (new Title("الأفكار المضافة خلال اخر ستة اشهر حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart3.Titles[0] = (new Title("نسبة الأفكار المأخوذة وغير المأخوذة خلال اخر ستة اشهر", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart4.Titles[0] = (new Title("الأفكار المضافة خلال اخر ستة اشهر", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في الافكار خلال اخر ستة اشهر
                SqlDataSource2.SelectCommand = "SELECT COUNT(tec.Idea_ID) AS num, tec.tech_name, tec.y, tec.m FROM (SELECT Idea_ID, tech_name, MONTH(Date) AS m, YEAR(Date) AS y FROM EEIdea, Technologies WHERE Technologies.type ='I' AND EEIdea.Idea_ID = Technologies.ID AND YEAR(Date) = YEAR(GETDATE())) AS tec GROUP BY tec.tech_name, y, m ORDER BY y DESC, m DESC";
               
                // عدد الافكار المأخوذة وغير مأخوذة في اخر ستة اشهر
                SqlDataSource3.SelectCommand = "SELECT TOP(6) COUNT(Idea_ID), taken_stat, y, m FROM (SELECT Idea_ID, YEAR(Date) AS y, MONTH(Date) AS m, Is_Taken, CASE WHEN Is_Taken = 0 THEN N'غير مأخوذة' WHEN Is_Taken = 1 THEN N'مأخوذة' END AS taken_stat FROM EEIdea WHERE YEAR(Date) = YEAR(GETDATE())) as ideaT GROUP BY taken_stat, y, m ORDER BY y DESC, m DESC";
                Chart3.Series[0].XValueMember = "taken_stat";
                //Chart3.Series[0].YValueMembers = "dates";
                Chart3.Series[0].Label = "#PERCENT{P0}";
                Chart3.Series[0].LegendText ="#VALX";

                // عدد الافكار في اخر ستة اشهر
                SqlDataSource4.SelectCommand = "SELECT TOP(6) MONTH(Date) AS m, YEAR(Date) AS y, COUNT(Idea_ID) AS ideas FROM EEIdea GROUP BY MONTH(Date), YEAR(Date) ORDER BY y DESC, m DESC";
                Chart4.Series[0].XValueMember = "m";
                Chart4.Series[0].YValueMembers = "ideas";

                //***************************************************** المشاريع

                Chart5.Titles[0] = (new Title("المشاريع المضافة خلال اخر ستة اشهر حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart6.Titles[0] = (new Title("نسبة المشاريع المقبولة وغير المقبولة خلال اخر ستة اشهر", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart7.Titles[0] = (new Title("المشاريع المضافة خلال اخر ستة اشهر", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في المشاريع خلال اخر ستة اشهر
                SqlDataSource5.SelectCommand = "SELECT COUNT(tec.Project_ID) AS num, tec.tech_name, tec.y, tec.m FROM (SELECT Project_ID, tech_name, MONTH(Date) AS m, YEAR(Date) AS y FROM EEProject, Technologies WHERE Technologies.type ='P' AND EEProject.Project_ID = Technologies.ID AND YEAR(Date) = YEAR(GETDATE())) AS tec GROUP BY tec.tech_name, y, m ORDER BY y DESC, m DESC";
                Chart5.Series[0].XValueMember = "tech_name";
                Chart5.Series[0].YValueMembers = "num";

                // عدد المشاريع المأخوذة وغير مأخوذة في اخر ستة اشهر
                SqlDataSource6.SelectCommand = "SELECT TOP(6) COUNT(Project_ID), state, y, m FROM (SELECT Project_ID, YEAR(Date) AS y, MONTH(Date) AS m, Project_State, CASE WHEN Project_State = 0 THEN N'غير مقبول' WHEN Project_State = 1 THEN N'مقبول' END AS state FROM EEProject WHERE YEAR(Date) = YEAR(GETDATE())) as projectT GROUP BY state, y, m ORDER BY y DESC, m DESC";
                Chart6.Series[0].XValueMember = "state";
                //Chart6.Series[0].YValueMembers = "dates";
                Chart6.Series[0].Label = "#PERCENT{P0}";
                Chart6.Series[0].LegendText ="#VALX";

                // عدد المشاريع في اخر ستة اشهر
                SqlDataSource7.SelectCommand = "SELECT TOP(6) MONTH(Date) AS m, YEAR(Date) AS y, COUNT(Project_ID) AS projects FROM EEProject GROUP BY MONTH(Date), YEAR(Date) ORDER BY y DESC, m DESC";
                Chart7.Series[0].XValueMember = "m";
                Chart7.Series[0].YValueMembers = "projects";
            }
            else
            {
                // جميعها 
                //***************************************************** الأفكار

                Chart2.Titles[0] = (new Title("جميع الأفكار المضافة مصنفة حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart3.Titles[0] = (new Title("نسبة جميع الأفكار المأخوذة وغير المأخوذة", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart4.Titles[0] = (new Title("جميع الأفكار المضافة", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في الافكار
                SqlDataSource2.SelectCommand = "SELECT COUNT(tec.Idea_ID) AS num, tec.tech_name FROM (SELECT Idea_ID, tech_name FROM EEIdea, Technologies WHERE Technologies.type ='I' AND EEIdea.Idea_ID = Technologies.ID) AS tec GROUP BY tec.tech_name ORDER BY num";
    

                // عدد الافكار المأخوذة وغير مأخوذة 
                SqlDataSource3.SelectCommand = "SELECT COUNT(Idea_ID), taken_stat FROM (SELECT Idea_ID, Is_Taken, CASE WHEN Is_Taken = 0 THEN N'غير مأخوذة' WHEN Is_Taken = 1 THEN N'مأخوذة' END AS taken_stat FROM EEIdea) as ideaT GROUP BY taken_stat";
                Chart3.Series[0].XValueMember = "taken_stat";
                //Chart3.Series[0].YValueMembers = "dates";
                Chart3.Series[0].Label = "#PERCENT{P0}";
                Chart3.Series[0].LegendText ="#VALX";

                // عدد الافكار المضافة 
                SqlDataSource4.SelectCommand = "SELECT YEAR(Date) AS year, COUNT(Idea_ID) AS ideas FROM EEIdea GROUP BY YEAR(Date) ORDER BY YEAR(Date) DESC";
                Chart4.Series[0].XValueMember = "year";
                Chart4.Series[0].YValueMembers = "ideas";

                //***************************************************** المشاريع

                Chart5.Titles[0] = (new Title("جميع المشاريع المضافة مصنفة حسب التقنيات", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart6.Titles[0] = (new Title("نسبة جميع المشاريع المقبولة وغير المقبولة", Docking.Top, new Font("Calibri", 14f), Color.Black));
                Chart7.Titles[0] = (new Title("جميع المشاريع المضافة", Docking.Top, new Font("Calibri", 14f), Color.Black));

                // التقنيات المستخدمة في المشاريع
                SqlDataSource5.SelectCommand = "SELECT COUNT(tec.Project_ID) AS num, tec.tech_name FROM (SELECT Project_ID, tech_name FROM EEProject, Technologies WHERE Technologies.type ='P' AND EEProject.Project_ID = Technologies.ID) AS tec GROUP BY tec.tech_name ORDER BY num";
                Chart5.Series[0].XValueMember = "tech_name";
                Chart5.Series[0].YValueMembers = "num";

                // عدد المشاريع المأخوذة وغير مأخوذة 
                SqlDataSource6.SelectCommand = "SELECT COUNT(Project_ID), state FROM (SELECT Project_ID, Project_State, CASE WHEN Project_State = 0 THEN N'غير مأخوذة' WHEN Project_State = 1 THEN N'مأخوذة' END AS state FROM EEProject) as ideaT GROUP BY state";
                Chart6.Series[0].XValueMember = "state";
                //Chart3.Series[0].YValueMembers = "dates";
                Chart6.Series[0].Label = "#PERCENT{P0}";
                Chart6.Series[0].LegendText ="#VALX";

                // عدد المشاريع المضافة 
                SqlDataSource7.SelectCommand = "SELECT YEAR(Date) AS year, COUNT(Project_ID) AS projects FROM EEProject GROUP BY YEAR(Date) ORDER BY YEAR(Date) DESC";
                Chart7.Series[0].XValueMember = "year";
                Chart7.Series[0].YValueMembers = "projects";

            }
            Chart2.DataBind();
            Chart3.DataBind();
            Chart4.DataBind();

            Chart5.DataBind();
            Chart6.DataBind();
            Chart7.DataBind();

            var chart = new List<Chart>();
            chart.Add(Chart1);

            // الافكار
            chart.Add(Chart2);
            chart.Add(Chart3);
            chart.Add(Chart4);

            // المشاريع
            chart.Add(Chart5);
            chart.Add(Chart6);
            chart.Add(Chart7);

            // تلوين الرسومات
            coloringChart(chart);
        }

        public void coloringChart(List<Chart> charts)
        {
            var c = new String[] { "#9C7C9E", "#FF7F82", "#596482", "#50D1CD" };
            foreach (var ch in charts)
            {
                ch.DataBind();
                if (ch.Series[0].ChartType.ToString() == "Bar" || ch.Series[0].ChartType.ToString() == "Column")
                {
                    
                    // coloring
                    int count = 0;
                    foreach (var p in ch.Series["Series1"].Points)
                    {

                        p.Color = ColorTranslator.FromHtml(c[count]);
                        count++;

                        if (count > 3)
                        {
                            count = 0;
                        }
                    }
                }
                else
                {

                    ch.Palette = ChartColorPalette.None;
                    ch.PaletteCustomColors = new Color[] {
                ColorTranslator.FromHtml(c[3]),
                ColorTranslator.FromHtml(c[1]),
                ColorTranslator.FromHtml(c[2]),
                ColorTranslator.FromHtml(c[0])
            };
                }



                ch.ChartAreas["ChartArea1"].AxisX = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Calibri", 30f) } };
                ch.ChartAreas["ChartArea1"].AxisY = new Axis { LabelStyle = new LabelStyle() { Font = new Font("Calibri", 20f) } };
                //ch.ChartAreas["ChartArea1"].AxisY.LabelAutoFitStyle = LabelAutoFitStyles.DecreaseFont;
                ch.ChartAreas["ChartArea1"].AxisX.MajorGrid.Enabled = false;
                ch.ChartAreas["ChartArea1"].AxisY.MajorGrid.Enabled = false;
            }
        }

        public string GetConstring()
        {
            string constr = ConfigurationManager.ConnectionStrings["constring"].ConnectionString;
            return constr;

        }
    }
}