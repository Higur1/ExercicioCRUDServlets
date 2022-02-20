package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Viagem;
import persistence.GenericDao;
import persistence.IViagemDao;
import persistence.ViagemDao;

@WebServlet("/viagem")
public class viagem extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public viagem() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String botao = request.getParameter("botao");
		String codigo = request.getParameter("codigo");
		
		Viagem v = new Viagem();
		
		GenericDao gDao = new GenericDao();
		IViagemDao vDao = new ViagemDao(gDao);
		try {
			if(botao.equals("Buscar")) {	
				v = valido(codigo, botao);
				v = vDao.consultaViagem(Integer.parseInt(codigo));
				
			}
		}catch(SQLException | ClassNotFoundException | IOException e) {
			e.getMessage();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("descricaoViagem.jsp");
			request.setAttribute("viagem", v);
			rd.forward(request, response);
		}
	}
	private Viagem valido(String codigo, String botao) throws IOException {
		Viagem v = new Viagem();
		
		if(botao.equals("Buscar")) {
			if(codigo.equals("")) {
				throw new IOException("Preencher o campo codigo");
			}else {
				v.setCodigo(Integer.parseInt(codigo));
			}
		}
		return v;
	}
}

