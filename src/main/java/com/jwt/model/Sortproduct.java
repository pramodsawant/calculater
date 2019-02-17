package com.jwt.model;

import java.util.Comparator;

public class Sortproduct implements Comparator<Product>{

	public int compare(Product o1, Product o2) {
		// TODO Auto-generated method stub
		return o1.getVendor_name().compareTo(o2.getVendor_name());
	}

}
