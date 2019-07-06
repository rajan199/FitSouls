package beans;

public class ClientBean {
	private int id, payment;
	private String cname, address, contact, plan_start, plan_end, mealtype,email,bslot,lslot,dslot;
	public String getBslot() {
		return bslot;
	}
	public void setBslot(String bslot) {
		this.bslot = bslot;
	}
	public String getLslot() {
		return lslot;
	}
	public void setLslot(String lslot) {
		this.lslot = lslot;
	}
	public String getDslot() {
		return dslot;
	}
	public void setDslot(String dslot) {
		this.dslot = dslot;
	}
	public int getId() {
		return id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public void setId(int id) {
		this.id = id;
	}
	public int getPayment() {
		return payment;
	}
	public void setPayment(int payment) {
		this.payment = payment;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getContact() {
		return contact;
	}
	public void setContact(String contact) {
		this.contact = contact;
	}
	public String getPlan_start() {
		return plan_start;
	}
	public void setPlan_start(String plan_start) {
		this.plan_start = plan_start;
	}
	public String getPlan_end() {
		return plan_end;
	}
	public void setPlan_end(String plan_end) {
		this.plan_end = plan_end;
	}
	public String getMealtype() {
		return mealtype;
	}
	public void setMealtype(String mealtype) {
		this.mealtype = mealtype;
	}
}
