Dim vit, der, emp, nome, resp, comp, jog

call jokempo
sub jokempo()
vit = 0
der = 0
emp = 0
nome = inputbox("======== JO-KEM-PO ========" + vbnewline &_
				"Insira seu nome:" + vbnewline &_
				"===========================", vbinformation)
resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
			  "Deseja iniciar jogo, " & nome &"?"  + vbnewline &_
			  "========================", vbquestion + vbyesno)
if resp = vbyes then
    call jogar
else
    wscript.quit
end if
end sub

sub jogar()
randomize(second(time))
comp = int(rnd * 3) + 1
jog = int(inputbox("======== JO-KEM-PO ========" + vbnewline &_
				   "JOGADOR(A) " & nome &"" + vbnewline &_
                   "Insira sua jogada:" + vbnewline &_
                   "[1] PEDRA" + vbnewline &_
                   "[2] PAPEL" + vbnewline &_
                   "[3] TESOURA" + vbnewline &_
				   "===========================", vbinformation))
if comp = 1 then
    if jog = 1 then
        emp = emp + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PEDRA" + vbnewline &_
                      nome & " escolheu PEDRA" + vbnewline &_
                      "EMPATE!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 2 then
        vit = vit + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PEDRA" + vbnewline &_
                      nome & " escolheu PAPEL" + vbnewline &_
                      "PARABÉNS! VOCÊ GANHOU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 3 then
        der = der + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PEDRA" + vbnewline &_
                      nome & " escolheu TESOURA" + vbnewline &_
                      "OH NÃO! VOCÊ PERDEU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    else
        msgbox("Opção inválida!") , vbexclamation + vbokonly
        call jogar
    end if
elseif comp = 2 then
    if jog = 1 then
        der = der + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PAPEL" + vbnewline &_
                      nome & " escolheu PEDRA" + vbnewline &_
                      "OH NÃO! VOCÊ PERDEU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 2 then
        emp = emp + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PAPEL" + vbnewline &_
                      nome & " escolheu PAPEL" + vbnewline &_
                      "EMPATE!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 3 then
        vit = vit + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu PAPEL" + vbnewline &_
                      nome & " escolheu TESOURA" + vbnewline &_
                      "PARABÉNS! VOCÊ GANHOU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    else
        msgbox("Opção inválida!") , vbexclamation + vbokonly
        call jogar
    end if
elseif comp = 3 then
    if jog = 1 then
        vit = vit + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu TESOURA" + vbnewline &_
                      nome & " escolheu PEDRA" + vbnewline &_
                      "PARBÉNS! VOCÊ GANHOU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 2 then
        der = der + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu TESOURA" + vbnewline &_
                      nome & " escolheu PAPEL" + vbnewline &_
                      "EMPATE!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    elseif jog = 3 then
        emp = emp + 1
        resp = msgbox("======== JO-KEM-PO ========" + vbnewline &_
					  "Computador escolheu TESOURA" + vbnewline &_
                      nome & " escolheu TESOURA" + vbnewline &_
                      "PARABÉNS! VOCÊ GANHOU!" + vbnewline &_
                      "VITÓRIAS: " & vit &"" + vbnewline &_
                      "DERROTAS: " & der &"" + vbnewline &_
                      "EMPATES: " & emp &"" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "========================", vbquestion + vbyesno)
        if resp = vbyes then
            call jogar
        else
            wscript.quit
        end if
    else
        msgbox("Opção inválida!") , vbexclamation + vbokonly
        call jogar
    end if
end if
end sub