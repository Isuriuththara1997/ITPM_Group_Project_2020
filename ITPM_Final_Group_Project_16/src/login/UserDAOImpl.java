package login;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class UserDAOImpl implements UserDAO {

	static Connection con;
	static PreparedStatement ps;
	Config c = new Config();

	@Override
	public User getUser(String username, String paswword) {

		User u = new User();

		try {

			con = c.connect();

			ps = con.prepareStatement("select * from users where uname=? and pass=?");
			ps.setString(1, username);
			ps.setString(2, paswword);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				u.setUsername(rs.getString(1));
				u.setPassword(rs.getString(2));
			}

		} catch (Exception e) {
			System.out.println(e);
		}

		return u;
	}

	@Override
	public int insertUser(User u) {
		int status = 0;
		try {
			con = c.connect();
			ps = con.prepareStatement("insert into users (`uname`,`email`,`pass`) values(?,?,?)");
			ps.setString(1, u.getUsername());
			ps.setString(2, u.getEmail());
			ps.setString(3, u.getPassword());

			status = ps.executeUpdate();

		} catch (Exception e) {
			System.out.println(e);
		}
		return status;
	}

}
