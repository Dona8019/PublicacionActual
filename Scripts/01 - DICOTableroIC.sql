SET DATEFIRST 7
SET ANSI_NULLS OFF
SET TRANSACTION ISOLATION LEVEL READ UNCOMMITTED
SET LOCK_TIMEOUT -1
SET QUOTED_IDENTIFIER OFF

go

if not exists (select * from sysobjects where id = object_id('dbo.DICOTableroIC') and type = 'U') 
CREATE TABLE DICOTableroIC(
		Estacion		INT				NULL,
		ID				INT				NULL,
		Empresa			VARCHAR(10)		NULL,
		Sucursal		INT				NULL,
		FechaEmision	DATETIME		NULL,
		FechaContable	DATETIME		NULL,
		Estatus         VARCHAR(15)     NULL,
		Modulo			VARCHAR(5)		NULL,
		OrigenID		VARCHAR(30)		NULL,
		DebeContReg     FLOAT           NULL,
		HaberContReg    FLOAT			NULL,
		DebeCont		FLOAT			NULL,
		HaberCont       FLOAT           NULL,
		DifDebe         FLOAT           NULL,
		DifHaber		FLOAT			NULL,
		Tipo			VARCHAR(25)		NULL
)

EXEC spALTER_COLUMN 'DICOTableroIC','Tipo','VARCHAR(25) NULL'
