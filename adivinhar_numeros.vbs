Dim resp, palpite, cont, n, dica

call adivinhar
sub adivinhar()
cont = 5
randomize(second(time))
n = int(rnd * 50) + 1
do while cont >= 1
    palpite = int(inputbox("======== ADIVINHAR NÚMERO ========" + vbnewline &_
						   "Insira seu palpite: " + vbnewline &_ 
                           "Vidas: " & cont &"" + vbnewline &_
						   "===================================", vbinformation))
    if palpite > 0 and palpite <= 50 then 
        if palpite = n then ' se acertar
            resp = msgbox("======== ADIVINHAR NÚMERO ========" + vbnewline &_
						  "Parabéns! Você acertou!" + vbnewline &_ 
                          "O número era " & n &"" + vbnewline &_
                          "Deseja jogar novamente?" + vbnewline &_
						  "==============================", vbquestion + vbyesno)
            if resp = vbyes then
                call adivinhar
            else
                wscript.quit
            end if
        else ' se errar
            if palpite < n then ' se o palpite for menor que o número
                msgbox("Insira um número maior!") , vbinformation + vbokonly
            elseif palpite > n then ' se o palpite for maior que o número
                msgbox("Insira um número menor!") , vbinformation + vbokonly
            end if
            cont = cont - 1
        end if
    else
        msgbox("Número inserido inválido!") , vbexclamation + vbokonly
    end if
loop
if cont = 0 then
    resp = msgbox("======== ADIVINHAR NÚMERO ========" + vbnewline &_
				  "Suas vidas acabaram!" + vbnewline &_ 
                  "O número era: " & n &"" + vbnewline &_ 
                  "Deseja jogar novamente?" + vbnewline &_
				  "==============================", vbquestion + vbyesno)
    if resp = vbyes then
        call adivinhar
    else
        wscript.quit
    end if
end if
end sub