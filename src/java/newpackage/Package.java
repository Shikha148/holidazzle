/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package newpackage;

/**
 *
 * @author Parmanand.Saumya
 */
public class Package {
    private int package_id;
    private String name;
    private int days_inc;
    private float price;
    private String air_assistance;
    private String city_tour;
    private String welcome_drinks;
    private String daily_buffet;
    private String guide;
    private String special_for;
    
    public Package(int package_id,String name,int days_inc,float price,String air_assistance,String city_tour,String welcome_drinks,String daily_buffet,String guide,String special_for)
    {
    
    }
    public Package(String name,int days_inc,float price,String air_assistance,String city_tour,String welcome_drinks,String daily_buffet,String guide,String special_for)
    {
    
    }
    public int getId()
    {
        return package_id;
    }
    public void setId(int package_id)
    {
        this.package_id=package_id;
    }
    public String getName()
    {
        return name;
    }
    public void setName(String name)
    {
        this.name=name;
    }
    public int getDays()
    {
        return days_inc;
    }
    public void setDays(int days_inc)
    {
        this.days_inc=days_inc;
    }
    public float getPrice()
    {
        return price;
    }
    public void setPrice(float price)
    {
        this.price=price;
    }
    public String getAir_assistance()
    {
        return air_assistance;
    }
    public void setAir_assistance(String air_assistance)
    {
        this.air_assistance=air_assistance;
    }
    public String getCity_tour()
    {
        return city_tour ;
    }
    public void setCity_tour(String city_tour)
    {
        this.city_tour=city_tour;
    }
    public String getWelcome_drinks()
    {
        return welcome_drinks;
    }
    public void setWelcome_drinks(String welcome_drinks )
    {
        this.welcome_drinks=welcome_drinks;
    }
    public String getDaily_buffet()
    {
        return daily_buffet ;
    }
    public void setDaily_buffet(String daily_buffet)
    {
        this.daily_buffet=daily_buffet;
    }
    public String getGuide()
    {
        return guide;
    }
    public void setGuide(String guide)
    {
        this.guide=guide;
    }
    public String getSpecial_for()
    {
        return special_for;
    }
    public void setSpecial_for(String special_for)
    {
        this.special_for=special_for;
    }
    
    
    
    
    
}
