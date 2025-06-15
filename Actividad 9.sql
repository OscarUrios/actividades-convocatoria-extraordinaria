CREATE OR REPLACE TRIGGER update_loan_due_date
BEFORE INSERT ON Loans
FOR EACH ROW
BEGIN
  IF :NEW.returnDate IS NULL THEN
    :NEW.returnDate := :NEW.loanDate + 7;
  END IF;
END;
/

INSERT INTO Loans (copieCode, memberCode, loanDate, returnDate)
VALUES (00101, 00000, SYSDATE, NULL);