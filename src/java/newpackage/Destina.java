
package ProjHoli;

/**
 *
 * @author Shivangi
 */
public class Destina {
    int destination_id;
    String name;
    String state;
    String city;
    int pincode;
    String famous_for;

    public Destina() {
    }

    public Destina(int destination_id, String name, String state, String city, int pincode, String famous_for ) {
        super();
        this.destination_id = destination_id;
        this.name = name;
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.famous_for = famous_for;
    }

    public Destina(String name, String state, String city, int pincode, String famous_for ) {
        super();
        this.name = name;
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.famous_for = famous_for;
    }

    public Destina(String state, String city, int pincode, String famous_for) {
        this.state = state;
        this.city = city;
        this.pincode = pincode;
        this.famous_for = famous_for;
    }
    public Destina(String city, int pincode, String famous_for) {
        this.city = city;
        this.pincode = pincode;
        this.famous_for = famous_for;
    }
    public Destina(int pincode, String famous_for) {
        this.pincode = pincode;
        this.famous_for = famous_for;
    }

    public int getId() {
        return destination_id;
    }

    public void setId(int destination_id) {
        this.destination_id = destination_id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }
    
    public int getPincode() {
        return pincode;
    }

    public void setPincode(int pincode) {
        this.pincode = pincode;
    }
    
    public String getFamous() {
        return famous_for;
    }

    public void setFamous(String famous_for) {
        this.famous_for = famous_for;
    }
}
