package ONS;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Table;
@Entity
@Table(name = "deposittable")
public class deposit {
@Column(name ="idcard")
private int idcard;
@Column(name ="depamount")
private int depamount;
@Column(name ="totalamount")
private int totalamount;
@Column(name="fname")
private String fname;
@Column(name="lname")
private String lname;
@Column(name="acctype")
private String acctype;
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


public int getDepamount() {
	return depamount;
}
public void setDepamount(int depamount) {
	this.depamount = depamount;
}

public int getTotalamount() {
	return totalamount;
}
public void setTotalamount(int totalamount) {
	this.totalamount = totalamount;
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
public String getRepassword() {
	return repassword;
}
public void setRepassword(String repassword) {
	this.repassword = repassword;
} 

}
