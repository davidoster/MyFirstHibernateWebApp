/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package entities;

import java.io.Serializable;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

/**
 *
 * @author George.Pasparakis
 */
@Entity
@Table(name="customers")
public class User implements Serializable {
    
    // id, fname, lname, email
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int id;
    
    private String fname;
    private String lname;
    private String email;

    public User() {
    }

    public User(String fname, String lname) {
        this.fname = fname;
        this.lname = lname;
    }

    public String getLname() {
        return lname;
    }

    public void setLname(String lname) {
        this.lname = lname;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getFname() {
        return fname;
    }

    public void setFname(String fname) {
        this.fname = fname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    @Override
    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("User{id=").append(id);
        sb.append(", fname=").append(fname);
        sb.append(", lname=").append(lname);
        sb.append(", email=").append(email);
        sb.append('}');
        return sb.toString();
    }
    
}
