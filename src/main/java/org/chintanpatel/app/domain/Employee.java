package org.chintanpatel.app.domain;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity
@Table(name = "employee")
public class Employee {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "employeeId", nullable = false)
    private int employeeId;

    @NotEmpty(message = "NotEmpty.employee.firstName")
    @Column(name = "firstName", nullable = false)
    private String firstName;

    @NotEmpty(message = "NotEmpty.employee.middleName")
    @Column(name = "middleName", nullable = false)
    private String middleName;

    @NotEmpty(message = "NotEmpty.employee.lastName")
    @Column(name = "lastName", nullable = false)
    private String lastName;

    @NotEmpty(message = "NotEmpty.employee.address")
    @Column(name = "address", nullable = false)
    private String address;

    @NotEmpty(message = "NotEmpty.employee.city")
    @Column(name = "city", nullable = false)
    private String city;

    @NotEmpty(message = "NotEmpty.employee.postalCode")
    @Column(name = "postalCode", nullable = false)
    private String postalCode;

    @NotEmpty(message = "NotEmpty.employee.gender")
    @Column(name = "gender", nullable = false)
    private String gender;

    @NotEmpty(message = "NotEmpty.employee.programmingSkill")
    @Column(name = "programmingSkill", nullable = false)
    private String[] programmingSkill;

    @NotEmpty(message = "NotEmpty.employee.email")
    @Email(message = "Email.employee.email")
    @Column(name = "email", nullable = false)
    private String email;

    @NotEmpty(message = "NotEmpty.employee.mobile")
    @Column(name = "mobile", nullable = false)
    private String mobile;

    @NotNull(message = "NotNull.employee.birthDate")
    @DateTimeFormat(pattern = "MM/dd/yyyy")
    @Temporal(TemporalType.DATE)
    @Column(name = "birthDate", nullable = false)
    private Date birthDate;

    @NotEmpty(message = "NotEmpty.employee.userName")
    @Column(name = "userName", nullable = false)
    private String userName;

    @NotEmpty(message = "NotEmpty.employee.password")
    @Size(min = 8, max = 16, message = "Size.employee.password")
    @Column(name = "password", nullable = false)
    private String password;

    @NotEmpty(message = "NotEmpty.employee.confirmPassword")
    @Size(min = 8, max = 16, message = "Size.employee.confirmPassword")
    @Column(name = "confirmPassword", nullable = false)
    private String confirmPassword;

    public Employee() {
    }

    public Employee(int employeeId, String firstName, String middleName, String lastName, String address, String city, String postalCode, String gender, String[] programmingSkill, String email, String mobile, Date birthDate, String userName, String password, String confirmPassword) {
        this.employeeId = employeeId;
        this.firstName = firstName;
        this.middleName = middleName;
        this.lastName = lastName;
        this.address = address;
        this.city = city;
        this.postalCode = postalCode;
        this.gender = gender;
        this.programmingSkill = programmingSkill;
        this.email = email;
        this.mobile = mobile;
        this.birthDate = birthDate;
        this.userName = userName;
        this.password = password;
        this.confirmPassword = confirmPassword;
    }

    public int getEmployeeId() {
        return employeeId;
    }

    public void setEmployeeId(int employeeId) {
        this.employeeId = employeeId;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getMiddleName() {
        return middleName;
    }

    public void setMiddleName(String middleName) {
        this.middleName = middleName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getCity() {
        return city;
    }

    public void setCity(String city) {
        this.city = city;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String[] getProgrammingSkill() {
        return programmingSkill;
    }

    public void setProgrammingSkill(String[] programmingSkill) {
        this.programmingSkill = programmingSkill;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getMobile() {
        return mobile;
    }

    public void setMobile(String mobile) {
        this.mobile = mobile;
    }

    public Date getBirthDate() {
        return birthDate;
    }

    public void setBirthDate(Date birthDate) {
        this.birthDate = birthDate;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
    }
}
