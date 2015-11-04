DROP FUNCTION get_day_rows;
DROP TYPE t_day_row;
DROP TYPE t_day_tab;


CREATE TYPE t_day_row AS OBJECT (
    jn_date  NUMBER
,   gn_date  DATE
);

CREATE TYPE t_day_tab IS TABLE OF t_day_row;
/


CREATE OR REPLACE FUNCTION get_day_rows (p_start_year IN NUMBER, p_end_year IN NUMBER) 
RETURN t_day_tab PIPELINED AS
  l_julian_start_day NUMBER(10) :=   to_number(to_char(to_date('01-Jan-'||p_start_year,'dd-mon-yyyy'),'J'));
  l_julian_end_day   NUMBER(10) :=   to_number(to_char(to_date('31-Dec-'||p_end_year  ,'dd-mon-yyyy'),'J'));
BEGIN
  FOR i IN l_julian_start_day..l_julian_end_day
  LOOP
    PIPE ROW(t_day_row(i, to_date(i,'JSP')));
  END LOOP;
  RETURN;
END;
/
