package com.jwt.model;

import java.util.Comparator;

public class Sortvendor implements Comparator<Vendor>{
 
	public int compare(Vendor o1, Vendor o2) {
		// TODO Auto-generated method stub
		return o1.getName().compareTo(o2.getName());
	}

}
