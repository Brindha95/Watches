package com.niit.dao;

import java.util.List;

import com.niit.model.Product;
import com.niit.model.Supplier;
import com.niit.model.Users;

public interface Supplierdao 
{
	public void addSupplier(Supplier supplier);
	public void updateSupplier(Supplier supplier);
	public void deleteSupplier(int sid);
	public Supplier getSupplierBySupplierId(int sid);
	public List<Supplier> displayAll();
}
