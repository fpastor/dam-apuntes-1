-- -----------------------------------------------------------------------------
--  PLANTILLA TRIGGER
-- -----------------------------------------------------------------------------

GO

CREATE OR ALTER TRIGGER TX_TRIGGER ON TABLA
INSTEAD OF INSERT 
-- (AFTER , INSTEAD OF) <-> (INSERT , UPDATE , DELETE)
AS

BEGIN
    BEGIN TRY

        DECLARE @dato1 INT
        DECLARE @dato2 INT

        -- CÓDIGO DEL TRIGGER

    END TRY

    BEGIN CATCH
        PRINT CONCAT('ERROR NUMBER: ', ERROR_NUMBER())
        PRINT CONCAT('LINE: ', ERROR_LINE())
        PRINT CONCAT('MESSAGE: ',  ERROR_MESSAGE())
        PRINT CONCAT('PROCEDURE: ', ERROR_PROCEDURE())
    END CATCH
END

GO