package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Onibus;
import persistence.GenericDao;
import persistence.IOnibusDao;
import persistence.OnibusDao;

@WebServlet("/onibus")
public class onibus extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public onibus() {
        super();
    }
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String botao = request.getParameter("botao");
		String codigo = request.getParameter("codigo");
		
		Onibus o = new Onibus();
		
		GenericDao gDao = new GenericDao();
		IOnibusDao oDao = new OnibusDao(gDao);
	
		try {
			if(botao.equals("Buscar")) {	
				o = valido(codigo, botao);
				o= oDao.consultaOnibus(Integer.parseInt(codigo));
			}
		}catch(SQLException | ClassNotFoundException | IOException e) {
			e.getMessage();
		}finally {
			RequestDispatcher rd = request.getRequestDispatcher("descricaoOnibus.jsp");
			request.setAttribute("onibus", o);
			rd.forward(request, response);
			
		}
	}
	private Onibus valido(String codigo, String botao) throws IOException {
		Onibus o = new Onibus();
		
		if(botao.equals("Buscar")) {
			if(codigo.equals("")) {
				throw new IOException("Preencher o campo codigo");
			}else {
				o.setCodigo(Integer.parseInt(codigo));
			}
		}
		return o;
	}

}
