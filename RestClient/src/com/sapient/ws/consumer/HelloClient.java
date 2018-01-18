package com.sapient.ws.consumer;

import javax.ws.rs.client.Client;
import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.Invocation;
import javax.ws.rs.client.WebTarget;

import org.codehaus.jackson.jaxrs.JacksonJsonProvider;
import org.glassfish.jersey.client.ClientConfig;

public class HelloClient {
	public static void main(String[] args){
		ClientConfig cfg=new ClientConfig().register(new JacksonJsonProvider());
		Client client=ClientBuilder.newClient(cfg);
		
		
		WebTarget target=client.target("http://localhost:8082/RestWS/rest/helloplain")
				.queryParam("name", "rama");
		
		Invocation.Builder ib=target.request();
		String res= ib.get(String.class);
		System.out.println(res);
		
		System.out.println("-------------------------------------------------------------");
		target=client.target("http://localhost:8082/RestWS/rest/hellojson").path("rama");
		
		 ib=target.request();
		 res= ib.get(String.class);
		System.out.println(res);
		
	}
}
