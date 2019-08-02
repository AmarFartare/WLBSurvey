USE [WLBSurvey]
GO
/****** Object:  Table [dbo].[mstOptions]    Script Date: 8/2/2019 6:32:35 PM ******/
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
/****** Object:  Table [dbo].[mstQuestions]    Script Date: 8/2/2019 6:32:35 PM ******/
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
/****** Object:  Table [dbo].[mstUsers]    Script Date: 8/2/2019 6:32:35 PM ******/
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
/****** Object:  Table [dbo].[SurveyDetails]    Script Date: 8/2/2019 6:32:35 PM ******/
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
/****** Object:  Table [dbo].[SurveyHeader]    Script Date: 8/2/2019 6:32:35 PM ******/
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
SET IDENTITY_INSERT [dbo].[mstUsers] ON 

GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (1, N'52127', N'ajitsingh', N'Ajit', N'Singh', N'DC-00038', N'Projects', N'Project Division', N'DS-00057', N'ENGINEER QA MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (2, N'52146', N'lpandey', N'Lallan', N'Pandey', N'DC-00006', N'Production', N'Project Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (3, N'52139', N'mangesh1', N'Ujwala', N'Kate', N'DC-00033', N'MD''s Office', N'Project Division', N'DS-00045', N'SECRETARY ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (4, N'52116', N'9829725421', N'Jayakumar', N'Nair', N'DC-00042', N'P & M ', N'Project Division', N'DS-00050', N'Executive P & M Kondhapuri', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (5, N'52117', N'p52117', N'Sunil', N'Patil', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00036', N'ACCOUNTANT MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (6, N'52129', N'abhishekji', N'Abhishekk', N'Mishra', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00054', N'ASST MANAGER MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (7, N'52132', N'nilesh20', N'Nilesh', N'Chavan', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00064', N'JR EXECUTIVE ACCOUNTS', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (8, N'52135', N'password', N'Aditya', N'Sharma', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00052', N'DGM DELHI', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (9, N'60032', N'amitjha', N'Amit', N'Jha', N'DC-00038', N'Projects', N'Project Division', N'DS-00042', N'JUNIOR EXECUTIVE ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (10, N'60029', N's60029', N'Anant', N'Sathe', N'DC-00033', N'MD''s Office', N'Project Division', N'DS-00001', N'Managing Director', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (11, N'60027', N'showkkath', N'Shoukath', N'Ali', N'DC-00040', N'PROJECT - DINDIGUL', N'Project Division', N'DS-00066', N'ASST. ENGINEER DINDIGUL', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (12, N'60028', N'senthil', N'Senthil', N'Periyasamy', N'DC-00040', N'PROJECT - DINDIGUL', N'Project Division', N'DS-00067', N'SUPERVISOR DINDIGUL', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (13, N'52134', N'hrishi6800', N'Mahesh', N'Abhyankar', N'DC-00041', N'PROJECT COORDINATION', N'Project Division', N'DS-00059', N'SR. MANAGER PUNE ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (14, N'52133', N'01012014', N'Parikshit', N'Mandavgane', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00058', N'DY. MANAGER ACCOUNTS ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (15, N'52118', N'7552081', N'Chandrakant', N'Patel', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00051', N'ACCOUNTANT PUNE', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (16, N'52121', N'Password123', N'Praveen', N'Kumpatla', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00037', N'EXECUTIVE SAP', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (17, N'52122', N'savaram', N'Raghu', N'Savaram', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00038', N'EXECUTIVE INVENTORY', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (18, N'52125', N'kcelaban', N'Sandeep', N'Singh', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (19, N'52128', N'vvk215', N'Vijaykumar', N'Kulkarni', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00053', N'DGM PUNE ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (20, N'52119', N'biswa1973', N'Sanjeev', N'Biswa', N'DC-00009', N'Stores', N'Project Division', N'DS-00054', N'ASST MANAGER MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (21, N'60032', N'amitjha', N'Amit', N'Jha', N'DC-00038', N'Projects', N'Project Division', N'DS-00042', N'JUNIOR EXECUTIVE ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (22, N'52138', N'rairajbali', N'Rajbali', N'Rai', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00054', N'ASST MANAGER MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (23, N'52140', N'aswins', N'Sasikumar', N'Velayudhan', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00049', N'ASST. ENGINEER ELECTRICAL', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (24, N'52126', N'sumanp', N'Suman', N'Panja', N'DC-00040', N'PROJECT - DINDIGUL', N'Project Division', N'DS-00060', N'ADMIN OFFICER DINDIGUL', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (25, N'52120', N'ankitsingh', N'BijendraSingh', N'Choudhary', N'DC-00038', N'Projects', N'Project Division', N'DS-00063', N'FOREMAN MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (26, N'52123', N'sudhapm', N'Sudhakar', N'Joseph', N'DC-00038', N'Projects', N'Project Division', N'DS-00055', N'SITE INCHARGE DINDIGUL', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (27, N'52147', N'p52147', N'Kalpesh', N'Potdar', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (28, N'52147', N'p52147', N'Kalpesh', N'Potdar', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (29, N'52147', N'p52147', N'Kalpesh', N'Potdar', N'DC-00004', N'Finance & Accounts', N'Project Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (30, N'52124', N'rajeshbonde', N'Rajesh', N'Bonde', N'DC-00038', N'Projects', N'Project Division', N'DS-00056', N'MANAGER PROJECT MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (31, N'52130', N'rahulsharma', N'Rahul', N'Sharma', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00054', N'ASST MANAGER MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (32, N'52131', N'ajay1234', N'Ajay', N'Singh', N'DC-00039', N'PROJECT - MORADABAD', N'Project Division', N'DS-00061', N'ADMIN OFFICER MORADABAD', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (33, N'admin', N'raj9702', N'BHALCHANDRA', N'ATHALYE', N'DC-00034', N'Corporate IT', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (34, N'52062', N'vpg91savita', N'VIJENDRA', N'GURAV', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (35, N'52010', N'sskadam', N'BALASAHEB', N'KADAM', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (36, N'52087', N'140668', N'SUJIT', N'CHIKURDEKAR', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (37, N'52051', N'narayan', N'JYOTI', N'MANE', N'DC-00043', N'Corporate MR', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (38, N'52076', N'sachin1102', N'SHRIKANT', N'GORE', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (39, N'52149', N'rupab', N'Rupa ', N'Bhattacharjee', N'DC-00001', N'Human Resources', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (40, N'52151', N'm52151', N'Farhin', N'Mujawar', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (41, N'52148', N'Vishal1', N'Vishwas', N'Vijapure', N'DC-00001', N'Human Resources', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (42, N'60030', N's60030', N'Suraj', N'Desai', N'DC-00002', N'Sales & Marketing', N'Motor Division', N'DS-00033', N'Trainee', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (43, N'60018', N'dhananjay', N'DHANANJAY', N'GIJARE', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (44, N'53017', N'abcde12', N'Mohan', N'Mali', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00003', N'Worker', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (45, N'60003', N'dreamzz', N'DHANASHREE', N'SOHANI', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (46, N'52141', N'dasgupta', N'DIPAK', N'DASGUPTA', N'DC-00037', N'Corporate Sales & Marketing', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (47, N'HRAdmin', N'HRAdmin', N'DIPAK', N'DASGUPTA', N'DC-00037', N'Corporate Sales & Marketing', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (48, N'Finance', N'Finance', N'DIPAK', N'DASGUPTA', N'DC-00037', N'Corporate Sales & Marketing', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (49, N'HRMaster', N'HRMaster', N'Ankit', N'Malik', N'DC-00001', N'Human Resources', N'Motor Division', N'DS-00033', N'Trainee', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (50, N'60012', N'ashutosh', N'Ashutosh', N'Ratnaparkhi', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (51, N'52099', N'MAHABHARAT', N'NIKHIL', N'NAIK', N'DC-00034', N'Corporate IT', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (52, N'52025', N'kulman!68', N'MANDAR', N'KULKARNI', N'DC-00034', N'Corporate IT', N'Motor Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (53, N'52092', N'nsjadhav', N'NAVANATH', N'JADHAV', N'DC-00016', N' Production ', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (54, N'52034', N'sayaji', N'SAYAJIRAO', N'PAWAR', N'DC-00008', N'Materials', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (55, N'52102', N'madhav', N'Madhav', N'Kale', N'DC-00024', N' Administration ', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (56, N'52142', N'Mmn@333', N'MURALIDHARAN', N'NAMBIAR', N'DC-00016', N' Production ', N'Motor Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (57, N'52143', N'Hematic1', N'PUNDALIK', N'CHAVAN', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (58, N'52115', N'umeshpote', N'Umesh', N'Pote', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (59, N'52031', N'mate123', N'BHASKAR', N'MATE', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (60, N'52013', N'milind4677', N'MILIND', N'UMARANI', N'DC-00043', N'Corporate MR', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (61, N'52011', N'05081960', N'GOPINATH', N'KULKARNI', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (62, N'52033', N'dadasos', N'DADASO', N'SURVE', N'DC-00024', N' Administration ', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (63, N'52073', N'atulbhise', N'YASHAWANT', N'BHISE', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (64, N'52111', N'syskat@14', N'RAVINDRA', N'SAMANT', N'DC-00033', N'MD''s Office', N'Motor Division', N'DS-00001', N'Managing Director', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (65, N'52112', N'MANMIT', N'Manmit', N'Patil', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (66, N'52110', N'hematic@1', N'Anubhav', N'Bhale', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (67, N'superuser', N'powermanager', N'PRAKASH', N'AMBIKE', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (68, N'52145', N'Eurogold@1', N'ROHIT', N'BONGALE', N'DC-00033', N'MD''s Office', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (69, N'52002', N'bkp52002', N'BABAN', N'PAWAR', N'DC-00006', N'Production', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (70, N'52027', N'prakash', N'PRAKASH', N'DISOUZA', N'DC-00018', N'Maintainance De', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (71, N'52043', N'j52043', N'CHANDRAKANT', N'JANGAM', N'DC-00008', N'Materials', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (72, N'52052', N'sangita', N'SHRIKANT', N'NIMBALKAR', N'DC-00008', N'Materials', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (73, N'52071', N'a52071', N'ANIL', N'BORATE', N'DC-00006', N'Production', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (74, N'52001', N'password', N'PRAKASH', N'AMBIKE', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (75, N'52101', N'jayashree', N'Ramesh', N'Kakade', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00028', N'Sr. Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (76, N'52022', N'sdk24362', N'SUNIL', N'KANCHAN', N'DC-00037', N'Corporate Sales & Marketing', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (77, N'52083', N'9785kpml', N'AMEY', N'SHENDE', N'DC-00016', N' Production ', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (78, N'52026', N'mh6427', N'FAROOQUE', N'MUJAWAR', N'DC-00006', N'Production', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (79, N'52096', N'sandip', N'SANDIP', N'SAWANT', N'DC-00036', N'Corporate HRM&C', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (80, N'52038', N'raj9702', N'BHALCHANDRA', N'ATHALYE', N'DC-00034', N'Corporate IT', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (81, N'52054', N'abhaya', N'ABHAY', N'APHALE', N'DC-00008', N'Materials', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (82, N'52041', N'vsb8700', N'VIJAY', N'BHAGWAT', N'DC-00037', N'Corporate Sales & Marketing', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (83, N'52053', N'qualityengg', N'AMIT', N'DESHPANDE', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (84, N'52084', N'rajendra', N'RAJENDRA', N'KULKARNI', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (85, N'52100', N'n52100', N'Nitin', N'Modak', N'DC-00006', N'Production', N'Motor Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (86, N'52093', N'nanaspot', N'SANDEEP', N'YADAV', N'DC-00016', N' Production ', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (87, N'52069', N'shourya#1', N'NILESH', N'BABAR', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (88, N'52056', N'supriya', N'SUPRIYA', N'KHAIRMODE', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (89, N'52055', N'jaywant', N'JAYAWANT', N'BABAR', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (90, N'52047', N'kshitija', N'VRUNDA', N'REPAL', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (91, N'52018', N'vaj4866', N'VASANT', N'JADHAV', N'DC-00008', N'Materials', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (92, N'52024', N'A9890316510', N'ARUN', N'INAMDAR', N'DC-00016', N' Production ', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (93, N'52021', N'arpatil722', N'APPASAHEB', N'PATIL', N'DC-00035', N'Corporate Finance', N'Motor Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (94, N'52091', N'karekar', N'VISHAL', N'KAREKAR', N'DC-00016', N' Production ', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (95, N'52040', N'anilpawar', N'Anil', N'Pawar', N'DC-00006', N'Production', N'Motor Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (96, N'52080', N'vishalt', N'VISHAL', N'THORAT', N'DC-00007', N'Quality Control', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (97, N'52078', N'ajay123', N'AJAY', N'JAMDADE', N'DC-00003', N'Engineering', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (98, N'52086', N'arvind', N'ARVIND', N'NANGARE', N'DC-00006', N'Production', N'Motor Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (99, N'52077', N'megha@123', N'HARIBHAV', N'PAWAR', N'DC-00034', N'Corporate IT', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (100, N'52057', N'14sampursu', N'Sameer', N'Thakar ', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (101, N'52081', N'9970282805', N'RAHUL', N'PATIL', N'DC-00006', N'Production', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (102, N'52066', N'pkkatdare', N'Pramod', N'Katdare', N'DC-00024', N' Administration ', N'Stamping Division', N'DS-00028', N'Sr. Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (103, N'52060', N'vvs123', N'VAIBHAV', N'SHAHA', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (104, N'52049', N'ajit12345', N'AJIT', N'KUMBHAR', N'DC-00008', N'Materials', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (105, N'60009', N'shreeganeshji', N'RAMESH', N'JADHAV', N'DC-00031', N'Production-Stampings', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (106, N'TimeOffice', N'TimeOffice', N'Jaydeep', N'Katkar', N'DC-00001', N'Human Resources', N'Stamping Division', N'DS-00033', N'Trainee', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (107, N'TimeOffice', N'TimeOffice', N'Jaydeep', N'Katkar', N'DC-00001', N'Human Resources', N'Stamping Division', N'DS-00033', N'Trainee', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (108, N'52009', N'standard', N'Vadiraj', N'Chavate ', N'DC-00027', N'Tool Design', N'Stamping Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (109, N'52005', N'anantjadhav', N'ANANT', N'JADHAV', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (110, N'60013', N'rohanmane', N'ROHAN', N'MANE', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (111, N'60004', N'amit3147', N'AMIT', N'JADHAV', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (112, N'60005', N'mechanical', N'Sagar', N'Pujari', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (113, N'60006', N'thelastdon', N'Aditya', N'Kulkarni', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (114, N'60010', N'9766341557', N'PRAKASH', N'JEDHE', N'DC-00003', N'Engineering', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (115, N'52070', N'8888832179', N'SUBHASH', N'SHELAKE', N'DC-00006', N'Production', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (116, N'52023', N'a1b2c3', N'HEMANT', N'RAMDASI', N'DC-00027', N'Tool Design', N'Stamping Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (117, N'52044', N'hdfc4618', N'GANESH', N'URUNKAR', N'DC-00027', N'Tool Design', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (118, N'52048', N'adhikp123', N'ADHIK', N'PATIL', N'DC-00027', N'Tool Design', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (119, N'52075', N'jaywantp', N'JAYWANT', N'PAWAR', N'DC-00020', N' Tool Maintenance ', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (120, N'52007', N'rajbhosale', N'SUBHASH', N'BHOSALE', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (121, N'52006', N'rohitarunj', N'ARUN', N'JADHAV', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (122, N'52030', N'sakshipawar', N'DHANAJI', N'PAWAR', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (123, N'52046', N'shriram', N'YOGESH', N'KUSURKAR', N'DC-00020', N' Tool Maintenance ', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (124, N'52003', N'g52003', N'Gopal', N'Ramdurgkar', N'DC-00033', N'MD''s Office', N'Stamping Division', N'DS-00001', N'Managing Director', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (125, N'52089', N'maharaj', N'Girish', N'Kakade ', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (126, N'52065', N'13131313', N'SAMEER', N'LELE', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (127, N'52098', N'y52b098p', N'Yuvraj', N'Pisal', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (128, N'52144', N'raj290668', N'MAHESH', N'PATIL', N'DC-00036', N'Corporate HRM&C', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (129, N'52113', N'vishal', N'SANJEEV', N'TYAGI', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (130, N'52114', N'aanshu', N'ANANDRAO', N'PATIL', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (131, N'52029', N'sandipj', N'SANDEEP', N'JOSHI', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (132, N'SalaryProc', N'SalaryProc', N'Sumit', N'Rakshe', N'DC-00001', N'Human Resources', N'Stamping Division', N'DS-00033', N'Trainee', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (133, N'52097', N'vikas9922', N'Vikas', N'Suryavanshi', N'DC-00001', N'Human Resources', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (134, N'52045', N'abhijitk', N'ABHIJIT', N'KULKARNI', N'DC-00008', N'Materials', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (135, N'52064', N'sandeep', N'SANDEEP', N'BARVE', N'DC-00009', N'Stores', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (136, N'52074', N'appa123', N'APPASAHEB', N'THORAT', N'DC-00008', N'Materials', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (137, N'52028', N's9850844636', N'SURESH', N'JADHAV', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (138, N'52042', N'venkatesh', N'VENKATESH', N'KULKARNI', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (139, N'52105', N'jadhavp', N'PRAMOD', N'JADHAV', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (140, N'52106', N'surajp', N'SURAJ', N'KAMBLE', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (141, N'52106', N'surajp', N'SURAJ', N'KAMBLE', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (142, N'52004', N'dinkark', N'DINKAR', N'KATKAR', N'DC-00008', N'Materials', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (143, N'52058', N'pakya123', N'Suyog', N'Kirpekar', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (144, N'52015', N'j222619', N'PRAVEEN', N'JOSHI', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (145, N'52036', N'jyotiba99', N'SANJAY', N'KOPARDE', N'DC-00006', N'Production', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (146, N'52094', N'9764885005', N'ZUNZARRAO', N'MOHITE', N'DC-00037', N'Corporate Sales & Marketing', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (147, N'52059', N'8888832180', N'VIKAS', N'SHELAKE', N'DC-00018', N'Maintainance De', N'Stamping Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (148, N'52012', N'vpd52012', N'VASANT', N'DANGE', N'DC-00006', N'Production', N'Stamping Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (149, N'52104', N'pari300613', N'RUPALI', N'PATIL', N'DC-00007', N'Quality Control', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (150, N'52103', N'ajit2841', N'AJITKUMAR', N'NALAWADE', N'DC-00003', N'Engineering', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (151, N'52063', N'mh50a1269', N'PREETAM', N'DESAI', N'DC-00008', N'Materials', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (152, N'52067', N'sakshi', N'SUNIL', N'PATIL', N'DC-00037', N'Corporate Sales & Marketing', N'Stamping Division', N'DS-00019', N'Associate Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (153, N'52088', N'8888832183', N'UMESH', N'THORAT', N'DC-00006', N'Production', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (154, N'52068', N'raghini', N'RAGHAVENDRA', N'KHARADE', N'DC-00031', N'Production-Stampings', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (155, N'52061', N'r13476', N'SUHAS', N'GRAMOPADHYE', N'DC-00037', N'Corporate Sales & Marketing', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (156, N'52090', N'140491', N'GAJANAN', N'KAMBLE', N'DC-00016', N' Production ', N'Stamping Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (157, N'52017', N'gcss62', N'GULABRAO', N'SABALE', N'DC-00009', N'Stores', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (158, N'52014', N'a52014', N'SAYYAD', N'ATTAR', N'DC-00006', N'Production', N'Component Division', N'DS-00016', N'Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (159, N'52039', N'r52039', N'ROHAN', N'PANDIT', N'DC-00008', N'Materials', N'Component Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (160, N'52020', N'g52020', N'RAMESH', N'GOSAVI', N'DC-00009', N'Stores', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (161, N'52016', N'k52016', N'VIJAY', N'KHUPERKAR', N'DC-00002', N'Sales & Marketing', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (162, N'52037', N'd52037', N'RAMCHANDRA', N'DISALE', N'DC-00016', N' Production ', N'Component Division', N'DS-00032', N'Executive ', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (163, N'53064', N'password', N'Vishnu', N'Yedage', N'DC-00025', N' MACHINE-SHOP ', N'Component Division', N'DS-00003', N'Worker', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (164, N'52008', N'p52008', N'Shrikrishna', N'Pendharkar', N'DC-00024', N' Administration ', N'Component Division', N'DS-00012', N'Associate Vice President', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (165, N'52072', N'sandeep', N'SANDIP', N'PATIL', N'DC-00006', N'Production', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (166, N'52032', N'v52032', N'ABHAY', N'VANJARI', N'DC-00007', N'Quality Control', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (167, N'52035', N'p52035', N'ADHIKRAO', N'PATIL', N'DC-00016', N' Production ', N'Component Division', N'DS-00013', N'Assistant Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (168, N'52019', N'snk52019', N'SHRIDHAR', N'KULKARNI', N'DC-00016', N' Production ', N'Component Division', N'DS-00029', N'Divisional Manager', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (169, N'53050', N'mh50a0996', N'Dhondiram', N'Shinde', N'DC-00015', N'General Dept', N'Component Division', N'DS-00003', N'Worker', N'Admin', N'Aug  2 2019  3:02PM')
GO
INSERT [dbo].[mstUsers] ([Id], [UserId], [Password], [Firstname], [Lastname], [DeptCode], [DeptName], [Division], [DesigCode], [DesigName], [CreatedBy], [CreatedDate]) VALUES (170, N'53038', N'p52038', N'Vilas', N'Palkar', N'DC-00025', N' MACHINE-SHOP ', N'Component Division', N'DS-00003', N'Worker', N'Admin', N'Aug  2 2019  3:02PM')
GO
SET IDENTITY_INSERT [dbo].[mstUsers] OFF
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
