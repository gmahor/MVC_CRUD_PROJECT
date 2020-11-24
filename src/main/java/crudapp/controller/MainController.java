package crudapp.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;

import crudapp.dao.ProductDao;
import crudapp.model.Product;

@Controller
public class MainController {

	@Autowired
	private ProductDao productDao;

	@RequestMapping("/")
	public String homepage(Model m) {

		List<Product> products = productDao.getAllProducts();

		m.addAttribute("product", products);
		return "homepage";
	}

	// ADD Product
	@RequestMapping("/addproduct")
	public String addproduct(Model m) {
		m.addAttribute("title", "Add Product");
		return "addproduct";
	}

	@RequestMapping(value = "/handle-product", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		productDao.createProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	// Delete Product
	@RequestMapping("/delete/{productId}")
	public RedirectView deleteProduct(@PathVariable("productId") int productId, HttpServletRequest request) {
		productDao.deleteproduct(productId);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;

	}

	// Edit Product
	@RequestMapping("edit/{productId}")
	public String editProduct(@PathVariable("productId") int productId, Model m) {
		m.addAttribute("title", "Edit Product");
		Product product = this.productDao.getProduct(productId);
		m.addAttribute("p", product);

		return "editproduct";
	}
}
