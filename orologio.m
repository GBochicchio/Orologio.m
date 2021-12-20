function [] = orologio(oraInizio, minutiInizio, oraFine, minutiFine)
    for i=1:inf
        clc;
        A=fix(clock);
        disp('ORA ATTUALE')
        stampaOra = strcat(int2str(A(4)),':',int2str(A(5)),':',int2str(A(6)));
        disp(stampaOra);
        disp('TEMPO TRASCORSO');
        if(A(5)-minutiInizio<0)
            stampaOra = strcat(int2str(A(4)-oraInizio),':',int2str(A(5)),':',int2str(A(6)));
        else
            stampaOra = strcat(int2str(A(4)-oraInizio),':',int2str(A(5)),':',int2str(A(6)));
        end
        disp(stampaOra);
        disp('TEMPO RIMANENTE');
        if((oraFine-A(4))<=0)
            if(minutiFine - A(5)<0)
                stampaOra = strcat(int2str(oraFine-A(4)),':',int2str(-A(5)),':',int2str(-A(6)));
            end
        else
            if(minutiFine - A(5)<0)
                stampaOra = strcat(int2str(oraFine-A(4)-1),':',int2str(60-minutiFine-A(5)),':',int2str(60-A(6)));
            else
                stampaOra = strcat(int2str(oraFine-A(4)),':',int2str(60-minutiFine-A(5)),':',int2str(60-A(6)));
            end
        end
        disp(stampaOra);
        pause(1);
    end
end
