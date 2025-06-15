CREATE OR REPLACE PROCEDURE register_loan (
    p_item_code     IN VARCHAR2,
    p_member_code   IN VARCHAR2,
    p_loan_date     IN TIMESTAMP
)
AS

v_item_available NUMBER;

BEGIN
SELECT COUNT(copieCode)
    INTO v_item_available
    FROM loan
    WHERE item_code = p_item_code
      AND return_date IS NULL;
    
    IF v_item_available > 0 THEN
        THROW new_application_error(-20001, 'Item not available.');
    END IF;

    INSERT INTO loans (copieCode, memberCode, loanDate, returnDate) VALUES (p_item_code,p_member_code,TO_TIMESTAMP(p_loan_date,'DD/MM/YYYY HH24:MI:SS.FF'),NULL);
    COMMIT;

    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred.');
        ROLLBACK;

END;
/


DECLARE

    v_item_code     VARCHAR2(50) := '00033';
    v_member_code   VARCHAR2(50) := '00004';
    v_loan_date     TIMESTAMP := CURRENT_TIMESTAMP;
BEGIN

    register_loan(v_item_code, v_member_code, v_loan_date);

    DBMS_OUTPUT.PUT_LINE('Procedure completed successfully.');

    EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred in the test block.');
END;
/