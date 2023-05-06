package org.chintanpatel.app.controller;

import jakarta.validation.Valid;
import org.chintanpatel.app.domain.Employee;
import org.chintanpatel.app.service.EmployeeService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("/employees")
public class EmployeeController {

    private final EmployeeService employeeService;

    public EmployeeController(EmployeeService employeeService) {
        this.employeeService = employeeService;
    }

    @GetMapping("/getEmployee")
    public String getEmployee(Model model) {
        model.addAttribute("employeeList",employeeService.getAllEmployeeList());
        return "employee-list";
    }

    @GetMapping("/showEmployee")
    public String showEmployee(Model model) {
        model.addAttribute("employee",new Employee());
        return "employee-details";
    }

    @PostMapping("/saveOrUpdateEmployee")
    public String saveOrUpdateEmployee(@Valid @ModelAttribute("employee")Employee employee, BindingResult result, Model model) {
        if(result.hasErrors()) {
            return "employee-details";
        }
        if (employee.getEmployeeId() != 0) {
            employee.setEmployeeId(employee.getEmployeeId());
            employeeService.editEmployee(employee);
        } else {
            employeeService.addEmployee(employee);
        }
        model.addAttribute("employee",new Employee());
        return "redirect:/employees/getEmployee";
    }

    @GetMapping("/manageEmployee")
    public String manageEmployee(@RequestParam("employeeId")int employeeId, Model model) {
        if (employeeId > 0) {
            model.addAttribute("employee",employeeService.findEmployeeById(employeeId));
        }
        return "employee-details";
    }

    @GetMapping("/deleteEmployee")
    public String deleteEmployee(@RequestParam("employeeId")int employeeId) {
        employeeService.deleteEmployeeById(employeeId);
        return "redirect:/employees/getEmployee";
    }
}
