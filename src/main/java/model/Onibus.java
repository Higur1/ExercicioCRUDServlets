package model;

public class Onibus {
	private int codigo;
	private String motorista;
	private String placa;
	private String marca;
	private int ano;
	private String descricao;
	
	public String getMotorista() {
		return motorista;
	}
	public void setMotorista(String motorista) {
		this.motorista = motorista;
	}
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String placa) {
		this.placa = placa;
	}
	public String getMarca() {
		return marca;
	}
	public void setMarca(String marca) {
		this.marca = marca;
	}
	public int getAno() {
		return ano;
	}
	public void setAno(int ano) {
		this.ano = ano;
	}
	public String getDescricao() {
		return descricao;
	}
	public void setDescricao(String descricao) {
		this.descricao = descricao;
	}
	@Override
	public String toString() {
		return "Onibus [placa=" + placa + ", marca=" + marca + ", ano=" + ano + ", descricao=" + descricao + "]";
	}

}
