function [] = orologio(oraInizio, minutiInizio, oraFine, minutiFine)
    for i=1:inf % Warning: Too many FOR loop iterations. 
        clc;
        A=fix(clock);
        disp('ORA ATTUALE')
        stampaOra = strcat(int2str(A(4)),':',int2str(A(5)),':',int2str(A(6)));
        disp(stampaOra);
        disp('TEMPO TRASCORSO');
        stampaOra = strcat(int2str(A(4)-oraInizio),':',int2str(A(5)-minutiInizio),':',int2str(A(6)));
        disp(stampaOra);
        disp('TEMPO RIMANENTE');
        stampaOra = strcat(int2str(oraFine-A(4)-1),':',int2str(60 - A(5)+minutiFine),':',int2str(60-A(6)));
        disp(stampaOra);
        pause(1);
    end
end
