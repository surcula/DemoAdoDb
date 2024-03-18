CREATE VIEW [dbo].[Views_films]
	AS SELECT * 
		FROM [Films] 
		WHERE [IsVisible] = 1
