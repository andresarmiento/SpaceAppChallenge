-- =============================================
-- Author:		Andres SArmiento
-- Create date: 20/04/2013
-- Description:	SP insert Contact
-- =============================================
CREATE PROCEDURE InsertContact
@Name varchar(50),
@Surname varchar(50),
@Email varchar(50),
@IdContacto int output
AS
BEGIN
	INSERT INTO [TB_CONTACTO]
           ([Nombre]
           ,[Apellido]
           ,[Correo])
     VALUES
           (@Name
           ,@Surname
           ,@Email)
           
select @IdContacto = IdContacto from [TB_CONTACTO] where Nombre =@Name and Apellido = @Surname 
and Correo = @Email 
END
GO
-- =============================================
-- Author:		Andres SArmiento
-- Create date: 20/04/2013
-- Description:	SP insert User
-- =============================================
CREATE PROCEDURE InsertUser
@IdContact varchar(50),
@NameUser varchar(50),
@Password varchar(50)
AS
BEGIN
INSERT INTO [TB_USUARIO]
           ([IdContacto]
           ,[NombreUsuario]
           ,[Clave])
     VALUES
           (@IdContact
           ,@NameUser
           ,@Password)

END
GO
-- =============================================
-- Author:		Andres SArmiento
-- Create date: 20/04/2013
-- Description:	SP insert User
-- =============================================
CREATE PROCEDURE GetUser
@NameUser varchar(50),
@Password varchar(50)
AS
BEGIN
SELECT [IdUsuario]
      ,[IdContacto]
      ,[NombreUsuario]
      ,[Clave]
  FROM [TB_USUARIO]
  where [NombreUsuario] = @NameUser and @Password= [Clave]
END
GO
