package com.lec.ex.service;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.lec.ex.dao.ProductDao;
public class ProductStockService implements Service {
	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) {
		// productStock.do?pname=공책
		String pname = request.getParameter("pname");
		ProductDao pDao = ProductDao.getInstance();
		int pStock = pDao.getProductStock(pname);
		if(pStock == -1){
			request.setAttribute("pStock","없는 제품");
		}else{
			request.setAttribute("pStock", pStock + "개 재고");
		}
	}
}







