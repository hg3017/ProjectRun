package login;

public class LoginDTO {

	private String id;
	private String PW;
	
	public LoginDTO(String id, String PW) {
		super();
		this.id = id;
		this.PW = PW;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPW() {
		return PW;
	}

	public void setPass(String PW) {
		this.PW = PW;
	}
	
}
