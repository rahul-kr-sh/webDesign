package com.sapient.ws.consumer;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Entity;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;
import javax.ws.rs.core.Form;
import javax.ws.rs.core.MediaType;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class AddProduct {

	public static void main(String[] args) {
		ClientConfig cfg=new ClientConfig().register(new JacksonJsonProvider());
		Client client=ClientBuilder.newClient(cfg);
		
		
		WebTarget target=client.target("http://10.151.60.215:8082/RestWS/rest/add")
				.queryParam("name", "rama");
		
		Invocation.Builder ib=target.request();
		
		Form frm=new Form();
		frm.param("pid","777");
		frm.param("pname","Football");
		frm.param("price","56234.32");
		Entity entity = Entity.entity(frm, MediaType.APPLICATION_FORM_URLENCODED);
		String res = ib.post(entity,String.class);
		System.out.println(res);
//		frm.param("brand", "Lenovo");
//		frm.param("cid","1");

	}

}
