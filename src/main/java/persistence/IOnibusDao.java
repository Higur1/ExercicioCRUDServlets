package persistence;

import java.sql.SQLException;
import java.util.List;

import model.Onibus;

public interface IOnibusDao {
	public Onibus consultaOnibus(int o)throws SQLException, ClassNotFoundException ; 
}
