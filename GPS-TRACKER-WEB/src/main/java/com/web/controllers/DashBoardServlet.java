package com.web.controllers;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.ejb.EJB;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.google.gson.Gson;
import com.server.dao.IVehicule;
import com.server.models.Vehicule;

/**
 * Servlet implementation class DashBoardServlet
 */
@WebServlet(name =  "gestionVehicule", urlPatterns = {"/gestionVehicule" })
public class DashBoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	@EJB
	private IVehicule iVehicule;
	
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DashBoardServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		List<Vehicule> vehiculeList = iVehicule.findAll();
		request.setAttribute("vehicules",vehiculeList);
		request.getRequestDispatcher("/forms.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
	
	public String getVehiculesListByKm(List<Vehicule> vehiculeList) {
		
		Gson gsonObj = new Gson();
		Map<Object, Object> map = new HashMap<Object, Object>();
		List<Map<Object, Object>> list = new ArrayList<Map<Object, Object>>();
		
		
		for (int i = 0; i < vehiculeList.size(); i++) {
			map.put("y",vehiculeList.get(i).getKm());
			map.put("x",vehiculeList.get(i).getMatricule());
			list.add(map);
		}
	
		return gsonObj.toJson(list);
	}
	
}
