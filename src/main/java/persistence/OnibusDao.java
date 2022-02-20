package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Onibus;

public class OnibusDao implements IOnibusDao{
	
	private GenericDao gDao;
	
	public OnibusDao(GenericDao gDao) {
		this.gDao = gDao;
	}

	@Override
	public Onibus consultaOnibus(int codigo) throws SQLException, ClassNotFoundException {
		Onibus o = new Onibus();
		Connection c = gDao.getConnection();
		String sql = "SELECT * FROM v_descricao_onibus WHERE codigo = ?"; 
		PreparedStatement st = c.prepareStatement(sql);
		st.setInt(1, codigo);
		ResultSet rs = st.executeQuery();
		if (rs.next()) {
			o.setCodigo(rs.getInt("Codigo"));
			o.setMotorista(rs.getString("Nome"));
			o.setPlaca(rs.getString("Placa"));
			o.setMarca(rs.getString("Marca"));
			o.setAno(rs.getInt("Ano"));
			o.setDescricao(rs.getString("Descricao"));
		}
		rs.close();
		st.close();
		c.close();
		
		return o;
	}
}
