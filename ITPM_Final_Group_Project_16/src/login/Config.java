/**
 * SLIIT ID : IT18020236
 * @author : Y.R.S Nadeeshani
 * @version : 1.0
 */

package login;

import java.sql.Connection;
import java.sql.DriverManager;

public class Config {

	public Connection connect() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");

			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/codecomplexitymeasuringtool", "root", "");

			// System.out.println("Connection Successful");

		} catch (Exception e) {
			System.out.println("Connection unsuccessful");
			System.out.println("" + e);
		}

		return con;
	}

}
