package com.service.tracker;

import java.util.List;

import javax.ejb.EJB;
import javax.ejb.Stateless;
import javax.ws.rs.PathParam;
import javax.ws.rs.FormParam;
import javax.ws.rs.GET;
import javax.ws.rs.POST;
import javax.ws.rs.PUT;
import javax.ws.rs.Path;
import javax.ws.rs.Produces;
import javax.ws.rs.core.MediaType;

import com.server.dao.IVehicule;
import com.server.models.Vehicule;



@Stateless
@Path("/vehicule")
@Produces(MediaType.APPLICATION_JSON)
public class VehiculeService {


	@EJB
	private IVehicule ivehicule;
	
	@POST
	@Path("/add")
	public void addVehicule(Vehicule c) {
		ivehicule.ajouter(c);
	}

	@GET
	@Path("/{id}")
	public Vehicule getVehiculeById(@PathParam(value = "id") int  id) {
		return ivehicule.findById(id);
	}
	
	@GET
	@Path("/all")
	public List<Vehicule> listVehicules() {
		return ivehicule.findAll();
	}

	@PUT
	@Path("update")
	public void vehicule(@FormParam(value = "code") int c1,@FormParam(value = "matricule") String c2, @FormParam(value = "marque") String c3,@FormParam(value = "type") String c4,@FormParam(value = "km") String c5) {
		ivehicule.modifier(new Vehicule(c1,c2, c3, c4,Integer.parseInt(c5)));
	}
	
}
