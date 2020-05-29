SET SERVEROUTPUT ON;
DECLARE
    vid_irisa VARCHAR(10);
    lengh NUMBER;
    widh Number;
BEGIN
    FOR i IN 1..20
    LOOP
        lengh := 2+i;
        widh := 1 + i;
        DBMS_OUTPUT.PUT_LINE('Добавляем');
        INSERT INTO Sepal(Flower_id,LENGH_CM,WIDTH_CM,SPECIES_ID)
        VALUES (i,lengh,widh,1);
    END LOOP;
END;