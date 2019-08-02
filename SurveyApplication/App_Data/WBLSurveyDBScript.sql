USE [WLBSurvey]
GO
/****** Object:  Table [dbo].[mstOptions]    Script Date: 8/2/2019 8:00:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mstOptions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[OptionCode] [nvarchar](50) NULL,
	[OptionName] [nvarchar](100) NULL,
	[Score] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_mstOptions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mstQuestions]    Script Date: 8/2/2019 8:00:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mstQuestions](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Question] [text] NULL,
	[AnswerOptionId] [int] NULL,
	[DisplayOrder] [int] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[UpdatedBy] [nvarchar](50) NULL,
	[UpdatedDate] [datetime] NULL,
 CONSTRAINT [PK_mstQuestions] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[mstUsers]    Script Date: 8/2/2019 8:00:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[mstUsers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](100) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[DeptName] [nvarchar](100) NULL,
	[Division] [nvarchar](100) NULL,
	[DesigCode] [nvarchar](50) NULL,
	[DesigName] [nvarchar](100) NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[CreatedDate] [nvarchar](100) NULL,
 CONSTRAINT [PK_mstUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SurveyDetails]    Script Date: 8/2/2019 8:00:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyDetails](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[ServeyHeaderId] [int] NULL,
	[QuestionId] [int] NULL,
	[Question] [text] NULL,
	[SelectedOptionId] [int] NULL,
	[SelectedOptionName] [nvarchar](50) NULL,
	[Score] [int] NULL,
 CONSTRAINT [PK_SurveyDetails] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[SurveyHeader]    Script Date: 8/2/2019 8:00:07 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SurveyHeader](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[EmployeeId] [nvarchar](50) NULL,
	[Firstname] [nvarchar](50) NULL,
	[Lastname] [nvarchar](100) NULL,
	[DeptCode] [nvarchar](50) NULL,
	[DeptName] [nvarchar](100) NULL,
	[Division] [nvarchar](100) NULL,
	[DesigCode] [nvarchar](50) NULL,
	[DesigName] [nvarchar](100) NULL,
	[ServeyScore] [nvarchar](50) NULL,
	[CreatedDate] [datetime] NULL,
	[CreatedBy] [nvarchar](50) NULL,
	[Suggetions] [text] NULL,
 CONSTRAINT [PK_mstSurveyHeader] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[mstOptions] ON 

GO
INSERT [dbo].[mstOptions] ([Id], [OptionCode], [OptionName], [Score], [CreatedBy], [CreatedDate]) VALUES (1, N'SDA', N'Strongly Disagree', -10, NULL, NULL)
GO
INSERT [dbo].[mstOptions] ([Id], [OptionCode], [OptionName], [Score], [CreatedBy], [CreatedDate]) VALUES (2, N'DA', N'Disagree', -5, NULL, NULL)
GO
INSERT [dbo].[mstOptions] ([Id], [OptionCode], [OptionName], [Score], [CreatedBy], [CreatedDate]) VALUES (3, N'UD', N'Neutral', 0, NULL, NULL)
GO
INSERT [dbo].[mstOptions] ([Id], [OptionCode], [OptionName], [Score], [CreatedBy], [CreatedDate]) VALUES (4, N'A', N'Agree', 5, NULL, NULL)
GO
INSERT [dbo].[mstOptions] ([Id], [OptionCode], [OptionName], [Score], [CreatedBy], [CreatedDate]) VALUES (5, N'SA', N'Strongly Agree', 10, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[mstOptions] OFF
GO
SET IDENTITY_INSERT [dbo].[mstQuestions] ON 

GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (1, N'I feel proud to be having associated with KBL group?', 1, 1, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (2, N'The mission/purpose of my company make me feel my job is important?', 1, 2, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (3, N'I see strong evidence of effective leadership from senior leaders', 1, 3, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (4, N'We have good communication and transparent work environment in the Company?', 1, 4, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (5, N'Senior leadership is appropriately visible and accessible to employees?', 1, 5, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (6, N'My manager keeps me informed about how well I’m meeting my goals/ objectives/ KRAs?', 1, 6, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (7, N'We have teamwork culture within my department?', 1, 7, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (8, N'My manager cares about me as a person?', 1, 8, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (9, N'My manager provides the support I need to succeed?', 1, 9, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (10, N'My seniors recognize or praise for doing good work?', 1, 10, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (11, N'I know what is expected from me at work?', 1, 11, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (12, N'I have enough opportunities to learn and grow in the organization?', 1, 12, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (13, N'At work place, our opinions seem to count?', 1, 13, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (14, N'We have enough opportunities for Innovations and are encouraged for implementing new ideas at our workplace?', 1, 14, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (15, N'I have the adequate materials and equipment to perform my work, right?', 1, 15, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (16, N'My colleagues / associates (fellow employees) committed to doing quality work?', 1, 16, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (17, N'I have best friend at work?', 1, 17, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (18, N'I am satisfied with the various benefits & facilities provided by the Company?', 1, 18, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (19, N'My work permits me to have Work Life Balance?', 1, 19, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (20, N'I seek a clear link in my work and goals of my organization', 1, 20, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (21, N'My training and expertise are fully utilized in my present job ', 1, 21, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (22, N'I would like to take on more responsibilities than I am handling at present ', 1, 22, NULL, NULL, NULL, NULL)
GO
INSERT [dbo].[mstQuestions] ([Id], [Question], [AnswerOptionId], [DisplayOrder], [CreatedBy], [CreatedDate], [UpdatedBy], [UpdatedDate]) VALUES (23, N'I feel free to talk openly and honestly to my Manager', 1, 23, NULL, NULL, NULL, NULL)
GO
SET IDENTITY_INSERT [dbo].[mstQuestions] OFF
GO
ALTER TABLE [dbo].[SurveyDetails]  WITH CHECK ADD  CONSTRAINT [FK_SurveyDetails_SurveyHeader] FOREIGN KEY([ServeyHeaderId])
REFERENCES [dbo].[SurveyHeader] ([Id])
GO
ALTER TABLE [dbo].[SurveyDetails] CHECK CONSTRAINT [FK_SurveyDetails_SurveyHeader]
GO
USE [master]
GO
ALTER DATABASE [WLBSurvey] SET  READ_WRITE 
GO
Use [WLBSurvey]
Insert into mstUsers(UserId,Password,Firstname,Lastname,DeptCode, DeptName,Division,DesigCode,DesigName,CreatedBy,CreatedDate)
Select user_id, password,e.firstname,e.surname, e.dept_code, d.dept_name,unit.unit_name ,desig.desg_code, desig.designation_name, 'Admin', GETDATE() 
from [HrPayroll_New].[dbo].[mst_user] u 
Inner join [HrPayroll_New].[dbo].[mstEmployee] e on e.emp_id =u.emp_id
Inner join [HrPayroll_New].[dbo].[mst_dept] d on d.dept_code =e.dept_code
Inner join [HrPayroll_New].[dbo].[mst_designation] desig on desig.desg_code =e.desg_code
Inner Join [HrPayroll_New].[dbo].[mst_unit] unit on unit.unit_code = e.unit_code 
GO
