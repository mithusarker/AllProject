package com.spring.springCrudProject.Dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.jdbc.core.namedparam.BeanPropertySqlParameterSource;
import org.springframework.jdbc.core.namedparam.MapSqlParameterSource;
import org.springframework.jdbc.core.namedparam.NamedParameterJdbcTemplate;
import org.springframework.stereotype.Component;

@Component("postDao")
public class PostDao {

	private NamedParameterJdbcTemplate jdbc;

	@Autowired
	public void setDataSource(DataSource jdbc) {
		this.jdbc = new NamedParameterJdbcTemplate(jdbc);
	}

	// data insert query for post
	public boolean create(Post post) {
		BeanPropertySqlParameterSource params = new BeanPropertySqlParameterSource(post);
		return jdbc.update(
				"insert into post(image, title, date, description, username)values (:image, :title, :date, :description, :username)",
				params) == 1;
	}

	// query for show all post data
	public List<Post> getPost() {
		return jdbc.query("select * from post", new RowMapper<Post>() {

			@Override
			public Post mapRow(ResultSet rs, int rowNum) throws SQLException {

				User user = new User();
				user.setUsername(rs.getString("username"));
				/*
				 * user.setFirstname(rs.getString("firstname"));
				 * user.setLastname(rs.getString("lastname"));
				 * user.setEmail(rs.getString("email"));
				 * user.setPassword(rs.getString("password")); user.setEnabled(true);
				 * user.setAuthority(rs.getString("authority"));
				 */

				Post post = new Post();

				post.setId(rs.getInt("id"));
				post.setImage(rs.getString("image"));
				post.setTitle(rs.getString("title"));
				post.setDate(rs.getString("date"));
				post.setDescription(rs.getString("description"));
				post.setUser(user);

				return post;
			}

		});
	}

	// query for show current post data
	public List<Post> getCurrentPost(String username) {
		return jdbc.query(
				"select * from Post, users where post.username=users.username and users.enabled=true and post.username=:username",
				new MapSqlParameterSource("username", username), new RowMapper<Post>() {

					@Override
					public Post mapRow(ResultSet rs, int rowNum) throws SQLException {

						User user = new User();
						user.setUsername(rs.getString("username"));
						/*
						 * user.setFirstname(rs.getString("firstname"));
						 * user.setLastname(rs.getString("lastname"));
						 * user.setEmail(rs.getString("email"));
						 * user.setPassword(rs.getString("password")); user.setEnabled(true);
						 * user.setAuthority(rs.getString("authority"));
						 */

						Post post = new Post();

						post.setId(rs.getInt("id"));
						post.setImage(rs.getString("image"));
						post.setTitle(rs.getString("title"));
						post.setDate(rs.getString("date"));
						post.setDescription(rs.getString("description"));
						post.setUser(user);

						return post;
					}

				});
	}

	// query for delete post
	public boolean detetePost(int id) {
		MapSqlParameterSource params = new MapSqlParameterSource();
		params.addValue("id", id);

		return jdbc.update("delete from post where id = :id", params) == 1;
	}
	
	
	
	
	
//////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

	private JdbcTemplate template;

	@Autowired
	public void setJdbcTemplateDataSource(DataSource template) {
		this.template = new JdbcTemplate(template);
	}

	public int updateAllPost(Post post) {
		String sql = "update post set image='" + post.getImage() + "', title='" + post.getTitle()
				+ "', description='" + post.getDescription() + "' where id='"
				+ post.getId() + "'  ";
		return template.update(sql);
	}

	public Post getUserByPostId(int id) {
		String sql = "select * from post where id=?";
		return template.queryForObject(sql, new Object[] { id }, new BeanPropertyRowMapper<Post>(Post.class));
	}

}
