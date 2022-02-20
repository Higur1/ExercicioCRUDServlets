package model;

public class Viagem {
	private int codigo;
	private String placa;
	private int motorista;
	private int hora_de_saida;
	private int hora_de_chegada;
	private String partida;
	private String destino;
	
	public int getCodigo() {
		return codigo;
	}
	public void setCodigo(int codigo) {
		this.codigo = codigo;
	}
	public String getPlaca() {
		return placa;
	}
	public void setPlaca(String onibus) {
		this.placa = onibus;
	}
	public int getMotorista() {
		return motorista;
	}
	public void setMotorista(int motorista) {
		this.motorista = motorista;
	}
	public int getHora_de_saida() {
		return hora_de_saida;
	}
	public void setHora_de_saida(int hora_de_saida) {
		this.hora_de_saida = hora_de_saida;
	}
	public int getHora_de_chegada() {
		return hora_de_chegada;
	}
	public void setHora_de_chegada(int hora_de_chegada) {
		this.hora_de_chegada = hora_de_chegada;
	}
	public String getPartida() {
		return partida;
	}
	public void setPartida(String partida) {
		this.partida = partida;
	}
	public String getDestino() {
		return destino;
	}
	public void setDestino(String destino) {
		this.destino = destino;
	}
	@Override
	public String toString() {
		return "Viagem [codigo=" + codigo + ", onibus=" + placa + ", motorista=" + motorista + ", hora_de_saida="
				+ hora_de_saida + ", hora_de_chegada=" + hora_de_chegada + ", partida=" + partida + ", destino="
				+ destino + "]";
	}
}
