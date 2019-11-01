%functia pentru E3
function [m, v, y]= T1_E3_2_FUNCTIE_BRIAN_ANDREEA(x)
   m=mean(real(x))  %media valorilor reale ale lui x
   for i=1:10  %se parcurge vectorul
       v(i)=x(i)*x(i); %in vectorul v se introduc patratele valorilor lui x
   end
   v %afisam vectorul 
   y=transpose(x)*x  %x se inmulteste cu transpusa lui si se afiseaza rezultatul