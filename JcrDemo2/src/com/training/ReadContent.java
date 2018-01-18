package com.training;

import javax.jcr.Node;
import javax.jcr.Property;
import javax.jcr.PropertyIterator;
import javax.jcr.Repository;
import javax.jcr.RepositoryException;
import javax.jcr.Session;
import javax.jcr.SimpleCredentials;

import org.apache.jackrabbit.commons.JcrUtils;

public class ReadContent {

	public static void main(String[] args) throws RepositoryException {
//		Repository repo = JcrUtils.getRepository("http://10.151.60.215:8083/server");
		Repository repo = JcrUtils.getRepository("http://localhost:8083/server");
		Session sess = repo.login(new SimpleCredentials("admin", "admin".toCharArray()));
		
		Node jumanji=sess.getNode("/film/hollywood/jumanji");
		PropertyIterator it=jumanji.getProperties();
		Property pstr=null;
		while(it.hasNext()){
			pstr=(Property)it.next();
			System.out.println(pstr.getName() +" --> "+pstr.getString() );
		}
		sess.logout();

	}

}
