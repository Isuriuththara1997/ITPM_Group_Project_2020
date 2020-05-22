/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 1.0
 */

package login;

public interface UserDAO {

	public User getUser(String username, String paswword);

	public int insertUser(User u);

}
