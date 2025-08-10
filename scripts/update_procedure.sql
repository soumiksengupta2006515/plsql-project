CREATE OR REPLACE PROCEDURE update_employee_salary (
    p_employee_id NUMBER,
    p_new_salary NUMBER
) AS
BEGIN
    UPDATE employees
    SET salary = p_new_salary
    WHERE employee_id = p_employee_id;
END;
/