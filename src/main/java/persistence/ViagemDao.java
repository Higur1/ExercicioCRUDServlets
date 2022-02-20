package persistence;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import model.Viagem;

public class ViagemDao implements IViagemDao{

	private GenericDao gDao;
	
	public ViagemDao(GenericDao gDao) {
		this.gDao = gDao;
	}
	
	@Override
	public Viagem consultaViagem(int codigo) throws SQLException, ClassNotFoundException {
		Connection c = gDao.getConnection();
		
		Viagem v = new Viagem();
		String sql = "SELECT * FROM v_descricao_viagem WHERE codigo = ?"; 
	
		PreparedStatement st = c.prepareStatement(sql);
		st.setInt(1, codigo);
		ResultSet rs = st.executeQuery();
		if (rs.next()) {
			v.setCodigo(rs.getInt("Codigo"));
			v.setPlaca(rs.getString("placa"));
			String [] Hora_da_Saida = rs.getString("Hora_da_Saida").split(":");
			String [] Hora_da_Chegada = rs.getString("Hora_da_Chegada").split(":");
			v.setHora_de_saida(Integer.parseInt(Hora_da_Saida[0]));
			v.setHora_de_chegada(Integer.parseInt(Hora_da_Chegada[0]));
			v.setPartida(rs.getString("Partida"));
			v.setDestino(rs.getString("Destino"));
		}
		rs.close();
		st.close();
		c.close();
		
		return v;
	}
}
