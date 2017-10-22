CREATE PROCEDURE spListarPacientes
AS
	BEGIN
		SELECT P.idPaciente,
				P.nombres,
				P.apPaterno,
				P.apMaterno,
				P.edad,
				P.sexo,
				P.nroDocumento,
				P.direccion
		FROM Paciente P
		WHERE P.estado = 1
	END