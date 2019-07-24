package com.spring.springCrudProject.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;




@Component("UserDao")
public class UserDao {
	
	private JdbcTemplate template;
	
	
	@Autowired
	public void setJdbcTemplateDataSource(DataSource template) {
		this.template = new JdbcTemplate(template);
	}
	/*
	@Transactional
	public boolean saveUser(User user) {
		template.update("insert into users (username, firstname, lastname, email, password, enabled) values ('" + user.getUsername() + "','" + user.getFirstname() + "','" + user.getLastname() + "','" + user.getEmail() + "','" + user.getPassword() + "','" + user.isEnabled() + "')"); 
		return template.update("insert into authorities (username, authority) values('" + user.getUsername() + "','" + user.getAuthority() + "')" ) == 1;
	}*/
	
	
	public int updateUser(User user) {
		String sql = "update users set firstname='"+user.getFirstname()+"', lastname='"+user.getLastname()+"', email='"+user.getEmail()+"', password='"+user.getPassword()+"' where username='"+user.getUsername()+"'  ";
		return template.update(sql);
	}

	public User getUserByUsername(String username) {
		String sql = "select * from users where username=?";
		return template.queryForObject(sql, new Object[] { username }, new BeanPropertyRowMapper<User>(User.class));
	}
	
	
	
	
	
	
////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////
	
	
	
	
	
	
	
	
	
	
	
	private NamedParameterJdbcTemplate jdbc;
	
	@Autowired
	private PasswordEncoder passwordEncoder;

		
	@Autowired
	public void setNamedParameterJdbcTemplateDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}
	
	//query for insert data
	@Transactional
	public boolean saveUser(User user) {
		
		MapSqlParameterSource params = new MapSqlParameterSource();
		
		params.addValue("username", user.getUsername());
		params.addValue("password", passwordEncoder.encode(user.getPassword()));
		params.addValue("firstname", user.getFirstname());
		params.addValue("lastname", user.getLastname());
		params.addValue("email", user.getEmail());
		params.addValue("enabled", user.isEnabled());
		params.addValue("authority", user.getAuthority());
		
		jdbc.update("insert into users (firstname, lastname, username, password, email, enabled) values (:firstname, :lastname, :username, :password, :email, :enabled)", params);
		return jdbc.update("insert into authorities (username, authority) values (:username, :authority)", params) == 1;
		
	}

	// query for Duplicate username
	public boolean exists(String username) {
		return jdbc.queryForObject("select count(*) from users where username=:username", new MapSqlParameterSource("username", username), Integer.class) > 0;
	}
	
	
	
	//query for show data
	public List<User> getUser(){
		return jdbc.query("select * from users", new RowMapper<User>() {
			
			@Override
			public User mapRow(ResultSet rs, int rowNum) throws SQLException {
				User user = new User();
				
				user.setUsername(rs.getString("username"));
				user.setFirstname(rs.getString("firstname"));
				user.setLastname(rs.getString("lastname"));
				user.setEmail(rs.getString("email"));
				user.setPassword(rs.getString("password"));
				/*user.setEnabled(rs.getBoolean("enabled"));*/
				/*user.setAuthority(rs.getString("authority"));*/
				
				return user;
			}
			
		});
	}
	
	
	public boolean deteteUser(String username) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("username", username);

		return jdbc.update("delete from users where username = :username", params) == 1;
	}
	
	/*// update query
	public boolean updateUser(User user) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(user);
		return jdbc.update("update users set username = :username, firstname = :firstname, lastname = :lastname, email = :email, password = :password where username = :username", params) == 1;
	}*/

	

	
}