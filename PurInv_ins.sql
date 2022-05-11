insert into PurInv_items (PID , itm_Qty , Expr_date , Sell_pric)
select P.PID , case when E_date_1 is null then P.qty
				else  floor (P.qty/2) end  as qty, 
				datefromparts(cast (concat (20,left (E_date,2)) as char(10)) ,
					case when len(E_date)=4 then cast (concat(0,trim (right(E_date,1))) as char(10))
					else cast (trim(right(E_date,2)) as char(10)) end, 1) as E_date, 
				U__price from Pitems P
				inner join P_sheet PS
				on P.P_name = PS.name
where P.qty is not null

insert into PurInv_items ( PID , Itm_Qty , Expr_date , Sell_Pric)
select P.PID ,  P.qty - floor (P.qty/2)  as qty , 
	datefromparts(cast (concat (20,left (E_date_1,2)) as char(10)) ,
					case when len(E_date_1)=4 then cast (concat(0,trim (right(E_date_1,1))) as char(10))
					else cast (trim(right(E_date_1,2)) as char(10)) end, 1) as E_date_1, 
				U__price from Pitems P
				inner join P_sheet PS
				on P.P_name = PS.name
where E_date_1 is not null

