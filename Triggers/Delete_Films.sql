CREATE TRIGGER [Delete_Films]
	ON [dbo].[Films]
	INSTEAD OF DELETE
	AS
	BEGIN
		UPDATE Films
		SET [IsVisible] = 0
		where Id = (
			select Id FROM deleted
		)
	END
