package ONS;
import javax.persistence.Column;

import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name = "newacc")
public class savings {
@Column(name ="idcard")
private int idcard;
@Column(name="fname")
private String fname;
@Column(name="lname")
private String lname;
@Column(name="acctype")
private String acctype;
@Column(name="password")
private String password;
public int getIdcard() {
	return idcard;
}
public void setIdcard(int idcard) {
	this.idcard = idcard;
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
public String getAcctype() {
	return acctype;
}
public void setAcctype(String acctype) {
	this.acctype = acctype;
}
public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
}