package models;

public class Users {
    private String id;
    private String passwd;
    private String role;
    private String contact;
    private String name;
    private String face;
    private String status;

    public Users(){}

    public Users(String id, String passwd, String role, String contact, String name, String face, String status){
        this.id=id;
        this.passwd = passwd;
        this.role = role;
        this.contact = contact;
        this.name = name;
        this.face = face;
        this.status = status;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPasswd() {
        return passwd;
    }

    public void setPasswd(String passwd) {
        this.passwd = passwd;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getContact() {
        return contact;
    }

    public void setContact(String contact) {
        this.contact = contact;
    }

    public String getFace() {
        return face;
    }

    public void setFace(String face) {
        this.passwd = face;
    }

    public String getStatus() {
        return status;
    }

    public void setStatus(String status) {
        this.status = status;
    }
}
