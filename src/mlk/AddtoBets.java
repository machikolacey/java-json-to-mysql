package mlk;

import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.SQLException;
import org.json.JSONException;
import org.json.simple.JSONObject;
import org.json.simple.parser.ParseException;
import org.json.simple.JSONArray;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.PreparedStatement;


import org.json.simple.parser.JSONParser;

public class AddtoBets {
	
	public void loadJSON(String fileLocation) throws ClassNotFoundException, SQLException, JSONException {
	    JSONParser parser = new JSONParser();
	    System.out.println("load JSON");
	    try {
	        Object obj = parser.parse(new FileReader(fileLocation));
	        System.out.println("success");
	        JSONObject jsonObject = (JSONObject) obj;
	        System.out.println(obj);
	        if(jsonObject != null) {	
	        	
	        	 Class.forName("com.mysql.jdbc.Driver");
	             Connection con = (Connection) DriverManager.getConnection("jdbc:mysql://localhost:3306/interview", "root", "");
	             PreparedStatement preparedStatement = (PreparedStatement) con.prepareStatement("insert into bets values (?,?,?,?,?,?,?)");
	             JSONArray jsonArray = (JSONArray) jsonObject.get("bets");
	       
	             for(Object object : jsonArray) {
	            	 JSONObject record = (JSONObject) object;
	            	 long id = (long) record.get("id");
	            	 long numbets = (long) record.get("numbets");
	            	 String game = (String) record.get("game");
	            	 double stake = Double.valueOf((Double) record.get("stake"));
	            	 double returns = Double.valueOf((Double) record.get("returns"));
	            	 long clientid = (long) record.get("clientid");
	            	 String dateString = (String) record.get("date");
	            	 long date = Date.valueOf(dateString).getTime();
	            	 
	            	 preparedStatement.setInt(1, (int) id);
	            	 preparedStatement.setInt(2, (int) numbets);
	            	 preparedStatement.setString(3, game);
	            	 preparedStatement.setDouble(4,  (double) stake);
	            	 preparedStatement.setDouble(5,  (double) returns);
	            	 preparedStatement.setInt(6,  (int) clientid);
	            	 preparedStatement.setDate(7, new Date(date));
	            	 preparedStatement.executeUpdate();
	             }
	                          
	        }
	
	    } catch (FileNotFoundException e) {
	        e.printStackTrace();
	    } catch (IOException e) {
	        e.printStackTrace();
	    } catch (ParseException e) {
	        e.printStackTrace();
	    }

}
	

}
