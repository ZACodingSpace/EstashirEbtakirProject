SET IDENTITY_INSERT [dbo].[EEIdea] ON
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (1, 4, NULL, N'القياس الذكي', N'2022-08-22', N'تطبيق يقيس الملابس بالمحلات التجاريه على الاشخاص بدلا من قياسها ويعتمد على ادخال البيانات ويكون بوضع صوره للشخص ورؤيه الملابس ومناسبتها وقياسها عليه بطريقه افتراضيه', 1, 0, NULL)
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (2, 4, NULL, N'القياس الذكي', N'2022-08-22', N'????? ???? ??????? ???????? ???????? ??? ??????? ???? ?? ?????? ?????? ??? ????? ???????? ????? ???? ???? ????? ????? ??????? ????????? ??????? ???? ?????? ????????', 0, 0, NULL)
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (3, 5, NULL, N'التحكم بالأجهزة الكهربائية', N'2022-08-22', N'تطبيق التحكم عن بعد في اجهزة كهربائية 
طلاب الهندسة', 1, 0, NULL)
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (4, 6, NULL, N'تسويق ', N'2022-08-22', N'فكرة تقديم منتجات جديدة في التسويق عن طريق اشتراك العامة في تحديد شكل المنتج 
فكرة في مجال التعليم تصميم محتوى رقمي لمادة علمية كالتسويق الإلكتروني', -1, 0, NULL)
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (5, 7, NULL, N'سجل الأسرة الرقمي', N'2022-08-22', N'سجل أسرة الأم الرقمي وفق رؤية 2030 للإثبات صلة القرابة بين الأمهات والأولاد', -1, 0, NULL)
INSERT INTO [dbo].[EEIdea] ([Idea_ID], [User_ID], [Admin_ID], [Idea_Name], [Date], [Brief], [Idea_State], [Is_Taken], [Taker_ID]) VALUES (6, 8, NULL, N'مولد الخرائط', N'2022-08-22', N'عمل الخرائط الذهنية الالكترونية لمناهج اللغة العربية من الابتدائي إلى الثانوي', 1, 0, NULL)
SET IDENTITY_INSERT [dbo].[EEIdea] OFF


UPDATE EEIdea SET Brief= N'تطبيق يقيس الملابس بالمحلات التجاريه على الاشخاص بدلا من قياسها ويعتمد على ادخال البيانات ويكون بوضع صوره للشخص ورؤيه الملابس ومناسبتها وقياسها عليه بطريقه افتراضيه' WHERE Idea_ID= 1;