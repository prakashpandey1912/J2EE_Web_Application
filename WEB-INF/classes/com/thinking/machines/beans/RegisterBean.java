package com.thinking.machines.beans;
public class RegisterBean
{
private String firstName;
private String lastName;
private String emailId;
private String password;
public RegisterBean()
{
this.firstName=null;
this.lastName=null;
this.emailId=null;
this.password=null;
}
public void setFirstName(String firstName)
{
this.firstName=firstName;
}
public String getFirstName()
{
return this.firstName;
}

public void setLastName(String lastName)
{
this.lastName=lastName;
}
public String getLastName()
{
return this.lastName;
}

public void setEmailId(String emailId)
{
this.emailId=emailId;
}
public String getEmailId()
{
return this.emailId;
}

public void setPassword(String password)
{
this.password=password;
}
public String getPassword()
{
return this.password;
}

  public String toString()
  {
    return "["+firstName+","+lastName+","+emailId+","+password+"]";
  }

}
