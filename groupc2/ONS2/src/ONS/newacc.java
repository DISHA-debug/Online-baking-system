package ONS;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name = "newacc")
public class newacc {
@Column(name ="idcard")
private int idcard;
@Column(name ="amount")
private int amount;
@Column(name ="phone")
private String phone;
@Column(name ="salary")
private int salary;
@Column(name="fname")
private String fname;
@Column(name="lname")
private String lname;
@Column(name="gender")
private String gender;
@Column(name="acctype")
private String acctype;
@Column(name="nation")
private String nation;
@Column(name="birthday")
private String birthday;
@Column(name="accopen")
private String accopen;
@Column(name="address")
private String address;
@Column(name="password")
private String password;
@Column(name="repassword")
private String repassword;
	public int getIdcard() {
		return idcard;
	}
	public void setIdcard(int idcard) {
		this.idcard = idcard;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
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
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	public String getAcctype() {
		return acctype;
	}
	public void setAcctype(String acctype) {
		this.acctype = acctype;
	}
	public String getNation() {
		return nation;
	}
	public void setNation(String nation) {
		this.nation = nation;
	}
	public String getBirthday() {
		return birthday;
	}
	public void setBirthday(String birthday) {
		this.birthday = birthday;
	}
	public String getAccopen() {
		return accopen;
	}
	public void setAccopen(String accopen) {
		this.accopen = accopen;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getRepassword() {
		return repassword;
	}
	public void setRepassword(String repassword) {
		this.repassword = repassword;
	}
}
