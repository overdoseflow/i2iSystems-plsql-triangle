SET SERVEROUT ON
DECLARE
  PROCEDURE p_make_triangle (vi_row_number IN NUMBER)
  IS
  BEGIN
    dbms_output.put_line('vi_row_number = '|| vi_row_number ||',  = ' );
    FOR i IN 1..vi_row_number
    LOOP
                dbms_output.put_line(RPAD(' ', vi_row_number - i) || RPAD('*', i * 2 - 1, '*') || RPAD(' ', vi_row_number - i));
  
    END LOOP;
  END p_make_triangle;
BEGIN
  p_make_triangle(vi_row_number => 15);

END;
/