/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.helper;

import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

/**
 *
 * @author NIKHIL
 */
public class FactoryProvider {
    public static SessionFactory factory;
    public static SessionFactory getSessionFctory()
    {
        if(factory==null)
        {
        factory=new Configuration().configure("hibernate.cfg.xml").buildSessionFactory();
        }
    return factory;
    }
    
    public void closeFactory()
    {
    if(factory.isOpen())
    {
    factory.close();
    }
    }
}
