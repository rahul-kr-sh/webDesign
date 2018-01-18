package com.trainee;

import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.core.TransientRepository;

public class WriteContent {

	public static void main(String[] args) throws LoginException, RepositoryException {
		Repository repo = new TransientRepository();
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		
		Node root=sess.getRootNode();
		Node courses=root.addNode("courses");
		Node java=courses.addNode("java");
		Node jee=java.addNode("jee");
		Property prop1=java.setProperty("What is java", "Java is OOP language");
		java.setProperty("Features of Java", "Functional programming, streams, nashorn script");
		
		jee.setProperty("lifecycle of servlet", "init() destroy() fires only once and "
				+ "service as per the client requirement");
		java.setProperty("datatypes", "int 4 bytes");
		
		sess.save();
		System.out.println("Content published");
		sess.logout();

	}

}
