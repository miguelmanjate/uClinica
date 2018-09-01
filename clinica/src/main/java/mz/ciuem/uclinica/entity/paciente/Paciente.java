package mz.ciuem.uclinica.entity.paciente;

import java.util.Date;
import java.util.List;

import javax.persistence.Access;
import javax.persistence.AccessType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import javax.validation.constraints.NotNull;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotBlank;
import org.springframework.format.annotation.DateTimeFormat;

import mz.ciuem.uclinica.entity.GenericEntity;
import mz.ciuem.uclinica.entity.consulta.Consulta;

@Entity
@Table(name = "paciente_paciente")
@Access(AccessType.FIELD)
public class Paciente  extends GenericEntity{
	
	@NotNull(message = "Mandatorio informar o nome")
	@NotBlank(message = "Mandatorio informar o nome")
	@Column(name = "apelido")
	private String apelido;
	
	@NotNull(message = "Mandatorio informar o nome")
	@NotBlank(message = "Mandatorio informar o nome")
	@Column(name = "nome")
	private String nome;
	
	@Column(name = "tipo_documento_identificacao")
	@Enumerated(EnumType.STRING)
	private TipoDocumento tipoDocumento;
	
	@Column(name = "naturalidade")
	private String naturalidade;
	
	@Column(name = "genero")
	@Enumerated(EnumType.STRING)
	private Genero genero;
	
	@Column(name = "estado_civil")
	@Enumerated(EnumType.STRING)
	private EstadoCivil estadoCivil;
	
	@Column(name = "telefone_principal")
	private String telefonePrincipal;
	
	@Column(name = "telefone_alternativo")
	private String telefoneAlternativo;
	
	@NotNull(message = "Campo de endereco Obrigatorio")
	@NotBlank(message = "Campo de endereco Obrigatorio")
	@Column(name = "endereco")
	private String endereco;
	
	@Email(message  = "Email invalido")
	@Column(name = "email")
	private String email;
	
	@Column(name  = "nome_pai")
	private String nomeDoPai;
	
	
	@Column(name = "nome_mae")
	private String nomeDaMae;
	
	@Column(name = "curso")
	private String curso;
	
	@Column(name = "tipo_bolsa")
	private TipoBolsa tipoBolsa;
	
	@Column(name = "profissao")
	private String profissao;
	
	@Column(name = "local_trabalho")
	private String localDeTrabalho;
	
	@Column(name = "numeroDocuemento")
	private String numeroDocumento;
	
	@Column(name = "raca")
	@Enumerated(EnumType.STRING)
	private Raca raca;
	
	@OneToMany(mappedBy = "paciente")
	private List<Consulta> consultas;
	
	
	@Column(name = "sector")
	private String sector;
	
	@Temporal(TemporalType.DATE )
	@DateTimeFormat (pattern="dd/MM/yyyy")
	@Column(name = "data_de_nascimento")
	private Date dataDeNascimento;
	
	public Date getDataDeNascimento() {
		return dataDeNascimento;
	}

	public void setDataDeNascimento(Date dataDeNascimento) {
		this.dataDeNascimento = dataDeNascimento;
	}

	public String getApelido() {
		return apelido;
	}

	public void setApelido(String apelido) {
		this.apelido = apelido;
	}

	public String getNome() {
		return nome;
	}

	public void setNome(String nome) {
		this.nome = nome;
	}

	public TipoDocumento getTipoDocumento() {
		return tipoDocumento;
	}

	public void setTipoDocumento(TipoDocumento tipoDocumento) {
		this.tipoDocumento = tipoDocumento;
	}

	public String getNaturalidade() {
		return naturalidade;
	}

	public void setNaturalidade(String naturalidade) {
		this.naturalidade = naturalidade;
	}

	public Genero getGenero() {
		return genero;
	}

	public void setGenero(Genero genero) {
		this.genero = genero;
	}

	public EstadoCivil getEstadoCivil() {
		return estadoCivil;
	}

	public void setEstadoCivil(EstadoCivil estadoCivil) {
		this.estadoCivil = estadoCivil;
	}

	public String getTelefonePrincipal() {
		return telefonePrincipal;
	}

	public void setTelefonePrincipal(String telefonePrincipal) {
		this.telefonePrincipal = telefonePrincipal;
	}

	public String getTelefoneAlternativo() {
		return telefoneAlternativo;
	}

	public void setTelefoneAlternativo(String telefoneAlternativo) {
		this.telefoneAlternativo = telefoneAlternativo;
	}

	public String getEndereco() {
		return endereco;
	}

	public void setEndereco(String endereco) {
		this.endereco = endereco;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getNomeDoPai() {
		return nomeDoPai;
	}

	public void setNomeDoPai(String nomeDoPai) {
		this.nomeDoPai = nomeDoPai;
	}

	public String getNomeDaMae() {
		return nomeDaMae;
	}

	public void setNomeDaMae(String nomeDaMae) {
		this.nomeDaMae = nomeDaMae;
	}

	public String getCurso() {
		return curso;
	}

	public void setCurso(String curso) {
		this.curso = curso;
	}

	public TipoBolsa getTipoBolsa() {
		return tipoBolsa;
	}

	public void setTipoBolsa(TipoBolsa tipoBolsa) {
		this.tipoBolsa = tipoBolsa;
	}

	public String getProfissao() {
		return profissao;
	}

	public void setProfissao(String profissao) {
		this.profissao = profissao;
	}

	public String getLocalDeTrabalho() {
		return localDeTrabalho;
	}

	public void setLocalDeTrabalho(String localDeTrabalho) {
		this.localDeTrabalho = localDeTrabalho;
	}

	public String getNumeroDocumento() {
		return numeroDocumento;
	}

	public void setNumeroDocumento(String numeroDocumento) {
		this.numeroDocumento = numeroDocumento;
	}

	public Raca getRaca() {
		return raca;
	}

	public void setRaca(Raca raca) {
		this.raca = raca;
	}

	public String getSector() {
		return sector;
	}

	public void setSector(String sector) {
		this.sector = sector;
	}

	public List<Consulta> getConsultas() {
		return consultas;
	}

	public void setConsultas(List<Consulta> consultas) {
		this.consultas = consultas;
	}

	
	
	
	
	

}
