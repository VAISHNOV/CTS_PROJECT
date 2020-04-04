package com.cts.springmvc.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.cts.springmvc.dao.impl.ProductDAOImpl;
import com.cts.springmvc.entity.Product;

//SERVICE IS THE MIDDLE LAYER
@Service//get from @repository and connects to @controller
@Transactional//database transaction
public class ProductServiceImpl {
    @Autowired
    private ProductDAOImpl productDAO1;
    
    public void createProduct(Product product) 
    {
    
        
        productDAO1.createProduct(product);
            
    
        
    }
    
    @Transactional
    public List<Product> getemps() 
    {
        
        return productDAO1.getProduct();
    }
    @Transactional
    public void deleteemps(long theId)
    {
        productDAO1.deleteEmp(theId);
    }
    //call controller
    public boolean checkLogin(String userName, String userPassword){
        System.out.println("In Service class...Check Login");
        return productDAO1.checkLogin(userName, userPassword);
 }
/*
    @Override
    public Employee getEmployee(Employee employee) {
        //
        //
        //
        return employeeDAO1.getEmployee(employee);
    }
    
    */
    
    
}