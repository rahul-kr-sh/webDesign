package com.training;


import javax.jcr.LoginException;
import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;
import org.apache.jackrabbit.core.TransientRepository;

public class WriteContent {

	public static void main(String[] args) throws LoginException, RepositoryException {
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		Node root=sess.getRootNode();
		Node film=root.addNode("film");
		Node hwood=film.addNode("hollywood");
		Node bwood=film.addNode("bollywood");
		
		Node jumanji=hwood.addNode("jumanji");
		jumanji.setProperty("review by sardar", "Good not bad");
		jumanji.setProperty("review by faizal", "Excellent watch atleast 30 times");
		

		Node n1921=bwood.addNode("1921");
		n1921.setProperty("review by perpendicular", "bakwaas movie hai");
		n1921.setProperty("review by tangent", "not Horror it is comedy");
		
		
		sess.save();
		sess.logout();
		System.out.println("Content published");

	}

}
