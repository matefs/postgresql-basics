-- source: https://www.youtube.com/watch?v=iFmL8Ys46Z0&ab_channel=DesCOMPlica%2COliba%21

create table CONTA(
 nro_conta int primary key,
 nome_titular varchar(30) not null,
 saldo real default 0
);

insert into conta(nro_conta, nome_titular, saldo) 
 values(1, 'Marta', 25400.00);
insert into conta(nro_conta, nome_titular, saldo) 
 values(2, 'Lucas', 1281.34); 

select * From conta order by nro_conta;

begin; 
    update conta set saldo = saldo - 100 where nro_conta = 1 ; -- only this line will work

    savepoint debitoEmConta;
    update conta set saldo = saldo - 100 where nro_conta = 2;

    rollback to debitoEmConta;

commit;


select * From conta order by nro_conta;




