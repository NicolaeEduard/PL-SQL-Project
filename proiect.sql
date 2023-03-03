create table reprezentanta_NCE(
    id_reprezentanta VARCHAR(255) primary key,
    nume_reprezentanta VARCHAR(255)
);

insert into reprezentanta_NCE
values ('R1', 'Grupul Volkswagen');

insert into reprezentanta_NCE
values ('R2', 'Grupul Renault');

insert into reprezentanta_NCE
values ('R3', 'Grupul Mercedes');

insert into reprezentanta_NCE
values ('R4', 'Grupul BMW');

insert into reprezentanta_NCE
values ('R5', 'Grupul America');

select * from reprezentanta_NCE;

create table agent_NCE(
    id_agent VARCHAR(255) primary key,
    nume_agent VARCHAR(255),
    prenume_agent VARCHAR(255),
    numar_masini NUMBER(8),
    id_reprezentanta VARCHAR(255), 
    constraint fk_agent foreign key (id_reprezentanta) references reprezentanta_NCE (id_reprezentanta)
);

insert into agent_NCE
values ('A1', 'Popescu', 'Ion', 2, 'R1');

insert into agent_NCE
values ('A2', 'Ionescu', 'Adrian', 2, 'R2');

insert into agent_NCE
values ('A3', 'Dumitru', 'Mihai', 2, 'R3');

insert into agent_NCE
values ('A4', 'Nicolae', 'Elena', 2, 'R4');

insert into agent_NCE
values ('A5', 'Cretu', 'Alexandra', 2, 'R5');

insert into agent_NCE
values ('A6', 'Stamate', 'Nicoleta', 2, 'R1');

insert into agent_NCE
values ('A7', 'Rusu', 'Alina', 2, 'R2');

insert into agent_NCE
values ('A8', 'Coman', 'Aurora', 2, 'R3');

insert into agent_NCE
values ('A9', 'Dinca', 'Rares', 2, 'R5');

insert into agent_NCE
values ('A10', 'Dumitru', 'Marius', 2, 'R4');

select * from agent_NCE;

--45
--45
create table client_NCE(
    id_client VARCHAR(255) primary key,
    nume_client VARCHAR(255),
    prenume_client VARCHAR(255),
    numar_masini NUMBER(8)
);

insert into client_NCE
values ('C1', 'Nicolae', 'Eduard', 1);

insert into client_NCE
values ('C2', 'Popescu', 'Alin', 1);

insert into client_NCE
values ('C3', 'Udriste', 'Mihai', 1);

insert into client_NCE
values ('C4', 'Voican', 'Cosmina', 1);

insert into client_NCE
values ('C5', 'Cretu', 'Bogdan', 1);

insert into client_NCE
values ('C6', 'Nicolae', 'Laurentiu', 1);

insert into client_NCE
values ('C7', 'Arghira', 'Darius', 1);

insert into client_NCE
values ('C8', 'Stoica', 'Alexandru', 1);

insert into client_NCE
values ('C9', 'Manolescu', 'Mihnea', 1);

insert into client_NCE
values ('C10', 'Grigore', 'Vlad', 1);

insert into client_NCE
values ('C11', 'Grigorescu', 'Andrei', 1);

insert into client_NCE
values ('C12', 'Patru', 'Adrian', 1);

insert into client_NCE
values ('C13', 'Mitrea', 'Andrei', 1);

insert into client_NCE
values ('C14', 'Dragomir', 'Ionut', 1);

insert into client_NCE
values ('C15', 'Dumitrascu', 'Mihai', 1);

insert into client_NCE
values ('C16', 'Dumitrascu', 'Andrei', 1);

insert into client_NCE
values ('C17', 'Coman', 'Razvan', 1);

insert into client_NCE
values ('C18', 'Ana', 'Elena', 0);

insert into client_NCE
values ('C19', 'Bodirlau', 'Alexandra', 1);

insert into client_NCE
values ('C20', 'Mitu', 'Cristina', 2);

select * from client_NCE;

create table vanzare_NCE(
    id_vanzare VARCHAR(255) primary key,
    id_agent VARCHAR(255),
    constraint fk_agent_vanzare foreign key (id_agent) references agent_NCE (id_agent),
    id_client VARCHAR(255),
    constraint fk_client_vanzare foreign key (id_client) references client_NCE (id_client),
    id_masina VARCHAR(255),
    constraint fk_masina_vanzare foreign key (id_masina) references masina_NCE (id_masina)
);


insert into vanzare_NCE
values ('V1', 'A1', 'C1', 'MA1');

insert into vanzare_NCE
values ('V2', 'A1', 'C2', 'MA11');

insert into vanzare_NCE
values ('V3', 'A2', 'C3', 'MA2');

insert into vanzare_NCE
values ('V4', 'A2', 'C4', 'MA12');

insert into vanzare_NCE
values ('V5', 'A3', 'C5', 'MA3');

insert into vanzare_NCE
values ('V6', 'A3', 'C6', 'MA13');

insert into vanzare_NCE
values ('V7', 'A4', 'C7', 'MA4');

insert into vanzare_NCE
values ('V8', 'A4', 'C8', 'MA14');

insert into vanzare_NCE
values ('V9', 'A5', 'C9', 'MA5');

insert into vanzare_NCE
values ('V10', 'A5', 'C10', 'MA15');

insert into vanzare_NCE
values ('V11', 'A6', 'C11', 'MA6');

insert into vanzare_NCE
values ('V12', 'A6', 'C12', 'MA16');

insert into vanzare_NCE
values ('V13', 'A7', 'C13', 'MA7');

insert into vanzare_NCE
values ('V14', 'A7', 'C14', 'MA17');

insert into vanzare_NCE
values ('V15', 'A8', 'C15', 'MA8');

insert into vanzare_NCE
values ('V16', 'A8', 'C16', 'MA18');

insert into vanzare_NCE
values ('V17', 'A9', 'C17', 'MA9');

insert into vanzare_NCE
values ('V18', 'A9', 'C20', 'MA19');

insert into vanzare_NCE
values ('V19', 'A10', 'C19', 'MA10');

insert into vanzare_NCE
values ('V20', 'A10', 'C20', 'MA20');

select * from vanzare_NCE;

create table motorizare_NCE(
    id_motorizare VARCHAR(255) primary key,
    capacitate_cilindrica NUMBER(8),
    impozit_motorizare NUMBER(8)
);

insert into motorizare_NCE
values ('M1', 900, 100);

insert into motorizare_NCE
values ('M2', 1000, 100);

insert into motorizare_NCE
values ('M3', 1200, 100);

insert into motorizare_NCE
values ('M4', 1400, 100);

insert into motorizare_NCE
values ('M5', 1500, 150);

insert into motorizare_NCE
values ('M6', 1600, 150);

insert into motorizare_NCE
values ('M7', 1700, 150);

insert into motorizare_NCE
values ('M8', 1800, 150);

insert into motorizare_NCE
values ('M9', 1900, 150);

insert into motorizare_NCE
values ('M10', 2000, 200);

insert into motorizare_NCE
values ('M11', 2200, 200);

insert into motorizare_NCE
values ('M12', 2500, 200);

insert into motorizare_NCE
values ('M13', 3000, 500);

insert into motorizare_NCE
values ('M14', 3500, 600);

insert into motorizare_NCE
values ('M15', 5000, 1000);

select * from motorizare_NCE;

create table brand_NCE(
    id_brand VARCHAR(255) primary key,
    nume_brand VARCHAR(255),
    tara_origine_brand VARCHAR(255)
);

insert into brand_NCE
values ('B1', 'Volkswagen', 'Germania');

insert into brand_NCE
values ('B2', 'Audi', 'Germania');

insert into brand_NCE
values ('B3', 'BMW', 'Germania');

insert into brand_NCE
values ('B4', 'Mercedes-Benz', 'Germania');

insert into brand_NCE
values ('B5', 'Ford', 'SUA');

insert into brand_NCE
values ('B6', 'Renault', 'Franta');

insert into brand_NCE
values ('B7', 'Opel', 'Germania');

insert into brand_NCE
values ('B8', 'Dacia', 'Romania');

insert into brand_NCE
values ('B9', 'Bentley', 'Anglia');

insert into brand_NCE
values ('B10', 'Rolls-Royce', 'Anglia');

insert into brand_NCE
values ('B11', 'Chevrolet', 'SUA');

insert into brand_NCE
values ('B12', 'Volvo', 'Suedia');

insert into brand_NCE
values ('B13', 'Porsche', 'Germania');

insert into brand_NCE
values ('B14', 'Citroen', 'Franta');

insert into brand_NCE
values ('B15', 'Nissan', 'Japonia');

insert into brand_NCE
values ('B16', 'Toyota', 'Japonia');

insert into brand_NCE
values ('B17', 'Subaru', 'Japonia');

insert into brand_NCE
values ('B18', 'Hyundai', 'Japonia');

insert into brand_NCE
values ('B19', 'Dodge', 'SUA');

insert into brand_NCE
values ('B20', 'Skoda', 'Cehia');

select * from brand_NCE;

create table masina_NCE(
    id_masina VARCHAR(255) primary key,
    id_reprezentanta VARCHAR(255),
    constraint fk_reprezentanta foreign key (id_reprezentanta) references reprezentanta_NCE (id_reprezentanta),
    id_agent_de_vanzari VARCHAR(255),
    constraint fk_agent_de_vanzari foreign key (id_agent_de_vanzari) references agent_NCE (id_agent),
    id_client VARCHAR(255),
    constraint fk_id_client_masina foreign key (id_client) references client_NCE (id_client),
    id_brand VARCHAR(255),
    constraint fk_id_brand foreign key (id_brand) references brand_NCE (id_brand),
    model_masina VARCHAR(255),
    id_motorizare VARCHAR(255),
    constraint fk_id_motorizare foreign key (id_motorizare) references motorizare_NCE (id_motorizare),
    combustibil_masina VARCHAR(255),
    numar_kilometri_masina NUMBER(8),
    pret_masina NUMBER(8)
);

select * from masina_NCE;

insert into masina_NCE
values ('MA1', 'R1', 'A1', 'C1', 'B1', 'Passat', 'M1', 'GPL', 200000, 8000);

insert into masina_NCE
values ('MA2', 'R2', 'A2', 'C3', 'B2', 'A4', 'M2', 'Benzina', 150000, 10000);

insert into masina_NCE
values ('MA3', 'R3', 'A3', 'C5', 'B3', 'X5', 'M3', 'Diesel', 250000, 12000);

insert into masina_NCE
values ('MA4', 'R4', 'A4', 'C7', 'B4', 'EQS', 'M4', 'Electric', 50000, 45000);

insert into masina_NCE
values ('MA5', 'R5', 'A5', 'C9', 'B5', 'Mustang', 'M5', 'Hybrid', 130000, 25000);

insert into masina_NCE
values ('MA6', 'R1', 'A6', 'C11', 'B6', 'Kadjar', 'M6', 'GPL', 180000, 9000);

insert into masina_NCE
values ('MA7', 'R2', 'A7', 'C13', 'B7', 'Astra', 'M7', 'Benzina', 280000, 3000);

insert into masina_NCE
values ('MA8', 'R3', 'A8', 'C15', 'B8', 'Duster', 'M8', 'Diesel', 75000, 14000);

insert into masina_NCE
values ('MA9', 'R4', 'A9', 'C17', 'B9', 'Bentayga', 'M9', 'Hybrid', 30000, 150000);

insert into masina_NCE
values ('MA10', 'R5', 'A10','C19', 'B10', 'Phantom', 'M10', 'Electric', 15000, 450000);

insert into masina_NCE
values ('MA11', 'R1', 'A1', 'C2', 'B11', 'Camaro', 'M10', 'Benzina', 65000, 35000);

insert into masina_NCE
values ('MA12', 'R2', 'A2', 'C4', 'B12', 'XC90', 'M9', 'Diesel', 120000, 38000);

insert into masina_NCE
values ('MA13', 'R3', 'A3', 'C6', 'B13', 'Panamera', 'M8', 'Hybrid', 100000, 40000);

insert into masina_NCE
values ('MA14', 'R4', 'A4', 'C8', 'B14', 'C-5', 'M7', 'GPL', 250000, 4000);

insert into masina_NCE
values ('MA15', 'R5', 'A5', 'C10', 'B15', 'GT-R', 'M6', 'Benzina', 8000, 75000);

insert into masina_NCE
values ('MA16', 'R1', 'A6', 'C12', 'B1', 'Golf', 'M5', 'Diesel', 220000, 6500);

insert into masina_NCE
values ('MA17', 'R2', 'A7', 'C14', 'B2', 'Q7', 'M4', 'Electric', 130000, 60000);

insert into masina_NCE
values ('MA18', 'R3', 'A8', 'C16', 'B3', '750', 'M3', 'Benzina', 170000, 35000);

insert into masina_NCE
values ('MA19', 'R4', 'A9', 'C20', 'B4', 'G-Class', 'M2', 'Hybrid', 50000, 100000);

insert into masina_NCE
values ('MA20', 'R5', 'A10', 'C20', 'B5', 'Raptor', 'M1', 'Diesel', 130000, 40000);


--Exercitiul 6
--Sa se creeze o procedura in care sa se afiseze toti clientii, impreuna cu toate masinile 
--achizitionate de catre acestia.

--DBMS_OUTPUT.PUT_line(v1(i) || ' ');

create or replace procedure exercitiul_6_NCE 

is
    type clienti is table of VARCHAR(255) index by PLS_INTEGER;
    v1 clienti;
    auxiliar VARCHAR(255);
    type masini is record
        (v_client_id masina_NCE.id_client%type,
         v_masina_id masina_NCE.id_masina%type,
         v_nume_masina masina_NCE.id_brand%type,
         v_model_masina masina_NCE.model_masina%type);
    type masiniiii is VARRAY(100) of masini;
    v2 masiniiii;
begin
    select id_client bulk collect into v1 from client_NCE;
    select id_client, id_masina, id_brand, model_masina bulk collect into v2 
    from masina_NCE;
    for i in v1.first..v1.last loop
        for j in v2.first..v2.last loop
            if v2(j).v_client_id=v1(i) then
                DBMS_OUTPUT.PUT_line(v2(j).v_masina_id || ' ' || v2(j).v_nume_masina || ' ' || 
                                     v2(j).v_model_masina || ' ' || v2(j).v_client_id);
            end if;
        end loop;
    end loop;
end;
/

select * from masina_nce;

begin
    exercitiul_6_NCE;
end;
/


--Exercitiul 7
--Sa se creeze o procedura in care sa se afiseze toti agentii de vanzari, impreuna cu toate 
--masinile vandute de catre acestia.

create or replace procedure exercitiul_7_NCE

is
    cursor c is
        select id_agent agent_vanzari, nume_agent nume, prenume_agent prenume
        from agent_NCE
        order by nume_agent;
    cursor c1 (agent_de_vanzari agent_NCE.id_agent%type) is 
        select id_masina masina, id_brand brand, model_masina car_model
        from masina_NCE
        where id_agent_de_vanzari=agent_de_vanzari
        order by brand;
begin
    for i in c loop
        for j in c1(i.agent_vanzari) loop
            DBMS_OUTPUT.PUT_line(i.nume || ' ' || i.prenume || ' ' || 
                                j.masina || ' ' || j.brand || ' ' || j.car_model);
        end loop;
    end loop;
        
end;
/

begin
    exercitiul_7_NCE;
end;
/



--Exercitiul 8
--Sa se afiseze, pentru masina din baza de date, al carei id este dat de la tastatura, numele si prenumele clientului
--care a achizitionat-o si numele si prenumele agentului de vanzari care a intermediat vanzarea.

insert into masina_NCE
values ('MA21', 'R5', 'A10', 'C20', 'B5', 'Raptor', 'M1', 'Diesel', 140000, 50000);

create or replace function exercitiul_8_NCE (v_id_masina vanzare_NCE.id_masina%type)

return varchar2 is
    id_masina_aux VARCHAR(255);
    nume_agent VARCHAR(255);
    prenume_agent VARCHAR(255);
    nume_client VARCHAR(255);
    prenume_client VARCHAR(255);
    variabila NUMBER(8);
    variabila2 NUMBER(8);
    exceptie_masina_nevanduta exception;
    exceptie_masina_inexistenta exception;
begin
    select count(*) into variabila
    from masina_NCE
    where v_id_masina=masina_NCE.id_masina;
    select count(*) into variabila2
    from vanzare_NCE
    where v_id_masina=vanzare_NCE.id_masina;
    if variabila=0 then
        raise exceptie_masina_inexistenta;
    elsif variabila2=0 then
            raise exceptie_masina_nevanduta;
    else
        select vanzare_NCE.id_masina, agent_NCE.nume_agent, 
               agent_NCE.prenume_agent, client_NCE.nume_client,
               client_NCE.prenume_client
        into id_masina_aux, nume_agent, prenume_agent, nume_client, prenume_client
        from vanzare_NCE
        join agent_NCE on agent_NCE.id_agent=vanzare_NCE.id_agent
        join client_NCE on client_NCE.id_client=vanzare_NCE.id_client
        where vanzare_NCE.id_masina=v_id_masina;
        return id_masina_aux || ' ' || nume_agent || ' ' || prenume_agent || ' ' || nume_client || ' ' || prenume_client;
    end if;
    exception
    when exceptie_masina_nevanduta then
        DBMS_OUTPUT.PUT_line('Masina al carui ID a fost dat ca parametru nu a fost inca vanduta');
        return null;
    when exceptie_masina_inexistenta then
        DBMS_OUTPUT.PUT_line('ID-ul dat de dumneavoastra este unul gresit');
        return null;
end;
/

begin
    DBMS_OUTPUT.PUT_line(exercitiul_8_NCE('MA100'));
    DBMS_OUTPUT.PUT_line(exercitiul_8_NCE('MA21'));
    DBMS_OUTPUT.PUT_line(exercitiul_8_NCE('MA5'));
end;
/


--Exercitiul 9
--Sa se afiseze, pentru masina din baza de date, al carei model este dat de la tastatura, id-ul masinii, numele si prenumele clientului
--care a achizitionat-o, numele si prenumele agentului de vanzari care a intermediat vanzarea, brand-ul masinii si motorizarea acesteia.
--

create or replace procedure exercitiul_9_NCE(v_model_masina masina_NCE.model_masina%type)

is
    v_id_masina masina_NCE.id_masina%type;
    v_nume_client client_NCE.nume_client%type;
    v_prenume_client client_NCE.prenume_client%type;
    v_nume_agent agent_NCE.nume_agent%type;
    v_prenume_agent agent_NCE.prenume_agent%type;
    v_brand brand_NCE.nume_brand%type;
    v_motorizare motorizare_NCE.capacitate_cilindrica%type;
    
    
begin
    select masina_NCE.id_masina, client_NCE.nume_client, client_NCE.prenume_client,
           agent_NCE.nume_agent, agent_NCE.prenume_agent, brand_NCE.nume_brand,
           motorizare_NCE.capacitate_cilindrica
    into v_id_masina, v_nume_client, v_prenume_client, v_nume_agent, v_prenume_agent,
        v_brand, v_motorizare
    from masina_NCE
    join client_NCE on client_NCE.id_client=masina_NCE.id_client
    join agent_NCE on agent_NCE.id_agent=masina_NCE.id_agent_de_vanzari
    join brand_NCE on brand_NCE.id_brand=masina_NCE.id_brand
    join motorizare_NCE on motorizare_NCE.id_motorizare=masina_NCE.id_motorizare
    where v_model_masina=masina_NCE.model_masina;
    DBMS_OUTPUT.PUT_line(v_id_masina || ' ' ||  v_nume_client || ' ' ||  v_prenume_client ||
                         ' ' || v_nume_agent || ' ' || v_prenume_agent || ' ' ||
                         v_brand || ' ' || v_motorizare);
    exception
    when NO_DATA_FOUND then
        DBMS_OUTPUT.PUT_line('Nu exista modelul dat de dumneavoastra');
    when TOO_MANY_ROWS then
        DBMS_OUTPUT.PUT_line('Exsita mai multe masini cu acelasi model');
end;
/

begin
    exercitiul_9_NCE('Logan');
    exercitiul_9_NCE('Raptor');
    exercitiul_9_NCE('Passat');
end;
/

--Exercitiul 10
--Sa se defineasca un trigger LMD cu ajutorul caruia sa nu se permita modificari asupra tabelelor brand si
--motorizare decat de catre un user de tipul ADMIN_AUTO



CREATE OR REPLACE TRIGGER exercitiul_10_brand_NCE
    BEFORE UPDATE ON brand_NCE
BEGIN
    IF USER <> UPPER('ADMIN_AUTO') THEN
        RAISE_APPLICATION_ERROR(-20900,'Nu ai voie sa modifici datele!');
    END IF;
END;
/

update brand_NCE
set id_brand='x'
where id_brand='B1';

DROP TRIGGER exercitiul_10_brand_NCE;


CREATE OR REPLACE TRIGGER exercitiul_10_motorizare_NCE
    BEFORE UPDATE ON motorizare_NCE
BEGIN
    IF USER <> UPPER('ADMIN_AUTO') THEN
        RAISE_APPLICATION_ERROR(-20900,'Nu ai voie sa modifici datele!');
    END IF;
END;
/

update motorizare_NCE
set id_motorizare='x'
where id_motorizare='M1';

DROP TRIGGER exercitiul_10_motorizare_NCE;




--Exercitiul 11
--Sa se defineasca un trigger LMD cu ajutorul caruia sa se modifice numarul de masini vandute de catre un 
--agent de vanzari si numarul de masini cumparate de catre un client, de fiecare data cand acestia iau parte
--la o vanzare de masina.

create or replace trigger exercitiul_11_agent_NCE
    after insert on vanzare_NCE
    for each row
begin
    update agent_NCE
    set numar_masini=numar_masini+1
    where id_agent=:new.id_agent;
end;
/

insert into vanzare_NCE
values ('V21', 'A10', 'C20', 'MA20');

drop trigger exercitiul_11_agent_NCE;

create or replace trigger exercitiul_11_client_NCE
    after insert on vanzare_NCE
    for each row
begin
    update client_NCE
    set numar_masini=numar_masini+1
    where id_client=:new.id_client;
end;
/

drop trigger exercitiul_11_client_NCE;

select * from client_NCE;

--Exercitiul 12
--Sa se definesaca un trigger de tip LDD care va introduce in tabela INTRETINERE_SISTEM_NCE, cu campurile
--id_utilizator, nume_baza_de_date, eveniment, nume_obiect si data, date de fiecare data cand utilizatorul
--va efectua o comanda LDD.

create table intretinere_sistem_NCE(
    id_utilizator VARCHAR(255),
    nume_baza_de_date VARCHAR(255),
    eveniment VARCHAR(255),
    nume_obiect VARCHAR(255),
    data DATE
);

create or replace trigger exercitiul_12_NCE
    after create or drop or alter on schema
begin
    insert into intretinere_sistem_NCE
    values (SYS.LOGIN_USER, SYS.DATABASE_NAME, SYS.SYSEVENT, SYS.DICTIONARY_OBJ_NAME, SYSDATE);
end;
/

create table test_12(
    variabila NUMBER(8)
);

drop trigger exercitiul_12_NCE;


--Exercitiul 13


create or replace package exercitiul_13_NCE as 
    procedure exercitiul_6_NCE;
    procedure exercitiul_7_NCE;
    function exercitiul_8_NCE (v_id_masina vanzare_NCE.id_masina%type) return VARCHAR2;
    procedure exercitiul_9_NCE(v_model_masina masina_NCE.model_masina%type);
end exercitiul_13_NCE;
/

create or replace package body exercitiul_13_NCE as
    procedure exercitiul_6_NCE 

    is
        type clienti is table of VARCHAR(255) index by PLS_INTEGER;
        v1 clienti;
        auxiliar VARCHAR(255);
        type masini is record
            (v_client_id masina_NCE.id_client%type,
            v_masina_id masina_NCE.id_masina%type,
            v_nume_masina masina_NCE.id_brand%type,
            v_model_masina masina_NCE.model_masina%type);
        type masiniiii is VARRAY(100) of masini;
        v2 masiniiii;
    begin
        select id_client bulk collect into v1 from client_NCE;
        select id_client, id_masina, id_brand, model_masina bulk collect into v2 
        from masina_NCE;
        for i in v1.first..v1.last loop
            for j in v2.first..v2.last loop
                if v2(j).v_client_id=v1(i) then
                    DBMS_OUTPUT.PUT_line(v2(j).v_masina_id || ' ' || v2(j).v_nume_masina || ' ' || 
                                         v2(j).v_model_masina || ' ' || v2(j).v_client_id);
                end if;
            end loop;
        end loop;
    end;
    
    
    procedure exercitiul_7_NCE

    is
        cursor c is
            select id_agent agent_vanzari, nume_agent nume, prenume_agent prenume
            from agent_NCE
            order by nume_agent;
        cursor c1 (agent_de_vanzari agent_NCE.id_agent%type) is 
            select id_masina masina, id_brand brand, model_masina car_model
            from masina_NCE
            where id_agent_de_vanzari=agent_de_vanzari
            order by brand;
    begin
        for i in c loop
            for j in c1(i.agent_vanzari) loop
                DBMS_OUTPUT.PUT_line(i.nume || ' ' || i.prenume || ' ' || 
                                     j.masina || ' ' || j.brand || ' ' || j.car_model);
            end loop;
        end loop;
        
    end;
    
    
    function exercitiul_8_NCE (v_id_masina vanzare_NCE.id_masina%type)

    return varchar2 is
        id_masina_aux VARCHAR(255);
        nume_agent VARCHAR(255);
        prenume_agent VARCHAR(255);
        nume_client VARCHAR(255);
        prenume_client VARCHAR(255);
        variabila NUMBER(8);
        variabila2 NUMBER(8);
        exceptie_masina_nevanduta exception;
        exceptie_masina_inexistenta exception;
    begin
        select count(*) into variabila
        from masina_NCE
        where v_id_masina=masina_NCE.id_masina;
        select count(*) into variabila2
        from vanzare_NCE
        where v_id_masina=vanzare_NCE.id_masina;
        if variabila=0 then
            raise exceptie_masina_inexistenta;
        elsif variabila2=0 then
                raise exceptie_masina_nevanduta;
        else
            select vanzare_NCE.id_masina, agent_NCE.nume_agent, 
                   agent_NCE.prenume_agent, client_NCE.nume_client,
                   client_NCE.prenume_client
            into id_masina_aux, nume_agent, prenume_agent, nume_client, prenume_client
            from vanzare_NCE
            join agent_NCE on agent_NCE.id_agent=vanzare_NCE.id_agent
            join client_NCE on client_NCE.id_client=vanzare_NCE.id_client
            where vanzare_NCE.id_masina=v_id_masina;
            return id_masina_aux || ' ' || nume_agent || ' ' || prenume_agent || ' ' || nume_client || ' ' || prenume_client;
        end if;
        exception
        when exceptie_masina_nevanduta then
            DBMS_OUTPUT.PUT_line('Masina al carui ID a fost dat ca parametru nu a fost inca vanduta');
            return null;
        when exceptie_masina_inexistenta then
            DBMS_OUTPUT.PUT_line('ID-ul dat de dumneavoastra este unul gresit');
            return null;
    end;
    
    
    procedure exercitiul_9_NCE(v_model_masina masina_NCE.model_masina%type)

    is
        v_id_masina masina_NCE.id_masina%type;
        v_nume_client client_NCE.nume_client%type;
        v_prenume_client client_NCE.prenume_client%type;
        v_nume_agent agent_NCE.nume_agent%type;
        v_prenume_agent agent_NCE.prenume_agent%type;
        v_brand brand_NCE.nume_brand%type;
        v_motorizare motorizare_NCE.capacitate_cilindrica%type;
        
        
    begin
        select masina_NCE.id_masina, client_NCE.nume_client, client_NCE.prenume_client,
               agent_NCE.nume_agent, agent_NCE.prenume_agent, brand_NCE.nume_brand,
               motorizare_NCE.capacitate_cilindrica
        into v_id_masina, v_nume_client, v_prenume_client, v_nume_agent, v_prenume_agent,
            v_brand, v_motorizare
        from masina_NCE
        join client_NCE on client_NCE.id_client=masina_NCE.id_client
        join agent_NCE on agent_NCE.id_agent=masina_NCE.id_agent_de_vanzari
        join brand_NCE on brand_NCE.id_brand=masina_NCE.id_brand
        join motorizare_NCE on motorizare_NCE.id_motorizare=masina_NCE.id_motorizare
        where v_model_masina=masina_NCE.model_masina;
        DBMS_OUTPUT.PUT_line(v_id_masina || ' ' ||  v_nume_client || ' ' ||  v_prenume_client ||
                             ' ' || v_nume_agent || ' ' || v_prenume_agent || ' ' ||
                             v_brand || ' ' || v_motorizare);
        exception
        when NO_DATA_FOUND then
            DBMS_OUTPUT.PUT_line('Nu exista modelul dat de dumneavoastra');
        when TOO_MANY_ROWS then
            DBMS_OUTPUT.PUT_line('Exsita mai multe masini cu acelasi model');
    end;
    

end exercitiul_13_NCE;
/

begin
    exercitiul_13_NCE.exercitiul_6_NCE;
    DBMS_OUTPUT.PUT_line('');
    exercitiul_13_NCE.exercitiul_7_NCE;
    DBMS_OUTPUT.PUT_line('');
    DBMS_OUTPUT.PUT_line(exercitiul_13_NCE.exercitiul_8_NCE('MA5'));
    DBMS_OUTPUT.PUT_line('');
    exercitiul_13_NCE.exercitiul_9_NCE('Passat');
end;
/