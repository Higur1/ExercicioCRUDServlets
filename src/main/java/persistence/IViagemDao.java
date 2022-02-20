package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Viagem;

public interface IViagemDao {
	public Viagem consultaViagem(int codigo)throws SQLException, ClassNotFoundException ; 
}
