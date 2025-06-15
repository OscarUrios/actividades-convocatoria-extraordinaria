CREATE OR REPLACE FUNCTION get_longest_loan_duration (
    p_member_code IN VARCHAR2
)
RETURN NUMBER
AS
    v_max_duration_days NUMBER;
BEGIN
    SELECT
        NVL(MAX(TRUNC(return_date) - TRUNC(loan_date)), 0)
    INTO v_max_duration_days
    FROM loan
    WHERE memberCode = p_member_code;

    RETURN v_max_duration_days;

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        RETURN 0;
END;
/

DECLARE
    v_member_code VARCHAR2(50) := '00000';
    v_longest_duration NUMBER;
BEGIN
    v_longest_duration := get_longest_loan_duration(v_member_code);

    DBMS_OUTPUT.PUT_LINE('Longest loan duration for member ' || v_member_code || ': ' || v_longest_duration || ' days');

EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred in the test block.');
END;
/