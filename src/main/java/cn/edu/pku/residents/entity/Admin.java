package cn.edu.pku.residents.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 * entity of administrator
 * @author stanley_hwang
 */
@Entity
@Table(name="tlb_admin")
public class Admin {
	
	@Id
	@GeneratedValue
	private int id;
	/** username of administrator */
	private String username;
	/** password of administrator */
	private String password;
	
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	
}
