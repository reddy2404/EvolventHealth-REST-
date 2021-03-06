USE [demo]
GO
/****** Object:  Table [dbo].[EvolentHealth]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[EvolentHealth](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Email] [varchar](50) NULL,
	[PhoneNumber] [varchar](13) NULL,
	[Status] [bit] NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[DeleteData]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[DeleteData]
    
   @id int  
AS   

   DELETE  FROM dbo.EvolentHealth WHERE ID= @id;
  


GO
/****** Object:  StoredProcedure [dbo].[GetPeopleByLast]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetPeopleByLast] 
    --@LastName nvarchar(50),   
    --@FirstName nvarchar(50)   
AS   

   SELECT 
   FirstName,
  LastName
FROM Employees ;

GO
/****** Object:  StoredProcedure [dbo].[GetResultList]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[GetResultList]
    --@LastName nvarchar(50),   
    --@FirstName nvarchar(50)   
AS   

   SELECT  *  FROM dbo.EvolentHealth ;
  


GO
/****** Object:  StoredProcedure [dbo].[InsertData]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[InsertData]
    
   @FirstName varchar(50),
   @LastName varchar(50),
   @Email varchar(50),
   @PhoneNumber varchar(50),
   @Status bit
 

AS   

   INSERT INTO dbo.EvolentHealth (FirstName,LastName,Email,PhoneNumber,[Status])
VALUES (@FirstName,@LastName,@Email,@PhoneNumber,@Status);
   
    
  


GO
/****** Object:  StoredProcedure [dbo].[UpdateData]    Script Date: 4/23/2017 6:52:37 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[UpdateData]
    
   @id int ,
   @FirstName varchar(50) = null,
   @LastName varchar(50) = null,
   @Email varchar(50) = null,
   @PhoneNumber varchar(50) = null,
   @Status bit
 

AS   

   UPDATE dbo.EvolentHealth
   SET 
  FirstName= @FirstName,LastName=@LastName,Email=@Email,PhoneNumber=@PhoneNumber,[Status]=@Status
   
    WHERE ID= @id;
  


GO
