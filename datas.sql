/*
Modèle de script de post-déploiement							
--------------------------------------------------------------------------------------
 Ce fichier contient des instructions SQL qui seront ajoutées au script de compilation.		
 Utilisez la syntaxe SQLCMD pour inclure un fichier dans le script de post-déploiement.			
 Exemple :      :r .\monfichier.sql								
 Utilisez la syntaxe SQLCMD pour référencer une variable dans le script de post-déploiement.		
 Exemple :      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

INSERT INTO [Types]([Label]) VALUES('Sciences-fiction'),('Action'),('Horreur'),('Aventure');

INSERT INTO [Films]([Title],[ReleaseYear],[FK_TypeId])
VALUES
('Star-Wars : IV', 1977, 1) ,
('L"exorciste', 1973, 4),
('Indiana Jones', 1981, 5),
('Stargate', 1994, 4)