package ONS;

	import javax.persistence.Column;
	import javax.persistence.Entity;
	import javax.persistence.Table;
	@Entity
	@Table(name = "transfer")
	public class transfer {
	@Column(name ="idno")
	private int idno;
	@Column(name ="accno")
	private int accno;
	@Column(name ="Tamount")
	private int Tamount;
	@Column(name="fname")
	private String fname;
	@Column(name="lname")
	private String lname;
	@Column(name="password")
	private String password;
	
	public int getIdno() {
		return idno;
	}
	public void setIdno(int idno) {
		this.idno = idno;
	}
	public int getAccno() {
		return accno;
	}
	public void setAccno(int accno) {
		this.accno = accno;
	}
	public int getTamount() {
		return Tamount;
	}
	public void setTamount(int tamount) {
		Tamount = tamount;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getLname() {
		return lname;
	}
	public void setLname(String lname) {
		this.lname = lname;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
	
}
