package org.chintanpatel.app.repository.dao;

import org.chintanpatel.app.domain.Employee;
import org.chintanpatel.app.repository.EmployeeRepository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.query.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository("employeeRepository")
public class EmployeeDao implements EmployeeRepository {

    private final SessionFactory sessionFactory;

    public EmployeeDao(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
    }

    @Override
    public void addEmployee(Employee employee) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.persist(employee);
    }

    @Override
    public List<Employee> getAllEmployeeList() {
        Session currentSession = sessionFactory.getCurrentSession();
        Query<Employee>query = currentSession.createQuery("from Employee ", Employee.class);
        return query.getResultList();
    }

    @Override
    public Employee findEmployeeById(int employeeId) {
        Session currentSession = sessionFactory.getCurrentSession();
        return currentSession.get(Employee.class,employeeId);
    }

    @Override
    public void editEmployee(Employee employee) {
        Session currentSession = sessionFactory.getCurrentSession();
        currentSession.merge(employee);
    }

    @Override
    public void deleteEmployeeById(int employeeId) {
        Session currentSession = sessionFactory.getCurrentSession();
        Employee employee = currentSession.byId(Employee.class).load(employeeId);
        currentSession.remove(employee);
    }
}
