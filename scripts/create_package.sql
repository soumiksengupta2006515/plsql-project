CREATE OR REPLACE PACKAGE emp_pkg AS
    PROCEDURE add_employee(p_first_name VARCHAR2, p_last_name VARCHAR2, p_salary NUMBER);
    FUNCTION get_employee_salary(p_employee_id NUMBER) RETURN NUMBER;
END emp_pkg;
/

CREATE OR REPLACE PACKAGE BODY emp_pkg AS
    PROCEDURE add_employee(p_first_name VARCHAR2, p_last_name VARCHAR2, p_salary NUMBER) IS
    BEGIN
        INSERT INTO employees (employee_id, first_name, last_name, hire_date, salary)
        VALUES (employees_seq.NEXTVAL, p_first_name, p_last_name, SYSDATE, p_salary);
    END;

    FUNCTION get_employee_salary(p_employee_id NUMBER) RETURN NUMBER IS
        v_salary NUMBER;
    BEGIN
        SELECT salary INTO v_salary FROM employees WHERE employee_id = p_employee_id;
        RETURN v_salary;
    END;
END emp_pkg;
/