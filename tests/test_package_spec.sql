DECLARE
    v_salary NUMBER;
BEGIN
    emp_pkg.add_employee('John', 'Doe', 50000);
    v_salary := emp_pkg.get_employee_salary(1);
    DBMS_OUTPUT.PUT_LINE('Salary: ' || v_salary);
END;
/