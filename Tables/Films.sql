CREATE TABLE [dbo].[Films]
(
	[Id] INT NOT NULL IDENTITY, 
	[Title] VARCHAR(50) NOT NULL,
	[ReleaseYear] INT NOT NULL,
    [FK_TypeId] INT NULL ,
    [IsVisible] BIT NOT NULL DEFAULT 1, 
    CONSTRAINT [PK_Films] PRIMARY KEY ([Id]), 
    CONSTRAINT [CK_Films_ReleaseYear] CHECK ([ReleaseYear] > 1950) 
)

