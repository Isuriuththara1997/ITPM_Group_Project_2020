package login;

public interface UserDAO {

	public User getUser(String username, String paswword);

	public int insertUser(User u);

}
