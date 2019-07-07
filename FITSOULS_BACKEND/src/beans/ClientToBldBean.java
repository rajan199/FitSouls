package beans;

import java.util.List;

public class ClientToBldBean {
	private int id,cid;
	private List<String> bldid;

	

	public List<String> getBldid() {
		return bldid;
	}

	public void setBldid(List<String> bldid) {
		this.bldid = bldid;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	
}
