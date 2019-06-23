create or replace procedure UpdateWrongRow is
cursor t_tickets is
select *
from tickets
for update;

rec_tickets tickets%rowtype;
update_line tickets.ticketline%type;

begin
  open t_tickets;
  loop
       fetch t_tickets into rec_tickets;
       exit when t_tickets%notfound;
       update_line := 0;
       if(rec_tickets.ticketline > 25)then
           update tickets t
           set t.ticketline = 25
           where current of t_tickets;
       end if;
       end loop;
       close t_tickets;
end UpdateWrongRow;
/
