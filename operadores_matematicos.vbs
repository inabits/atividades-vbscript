Dim x, y, result, oper, valor

call jogo

sub jogo()
randomize(second(time))
x = int(rnd * 50) + 1
randomize(second(time))
y = int(rnd * 50) + 1
randomize(second(time))
oper = int(rnd * 3) + 1
if oper = 1 then
    result = int(inputbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
						  "Digite a resposta da operação: " + vbnewline &_
                          x & "+" & y & "=" + vbnewline &_
						  "=====================================", vbquestion))
    valor = x + y
    if result = valor then
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "PARABÉNS! Você acertou!" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    else
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "OH NÃO! Você errou!" + vbnewline &_
					  "A resposta era " & valor & "" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    end if
elseif oper = 2 then
    result = int(inputbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
						  "Digite a resposta da operação: " + vbnewline &_
                          x & "-" & y & "=" + vbnewline &_
						  "=====================================", vbquestion))
    valor = x - y
    if result = valor then
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "PARABÉNS! Você acertou!" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    else
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "OH NÃO! Você errou!" + vbnewline &_
					  "A resposta era " & valor & "" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    end if
elseif oper = 3 then
    result = int(inputbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
						  "Digite a resposta da operação: " + vbnewline &_
                          x & "x" & y & "=" + vbnewline &_
						  "=====================================", vbquestion))
    valor = x * y
    if result = valor then
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "PARABÉNS! Você acertou!" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    else
        resp = msgbox("===== OPERADORES MATEMÁTICOS =====" + vbnewline &_
					  "OH NÃO! Você errou!" + vbnewline &_
					  "A resposta era " & valor & "" + vbnewline &_
                      "Deseja jogar novamente?" + vbnewline &_
					  "==============================", vbinformation + vbyesno)
        if resp = vbyes then
            call jogo
        else
            wscript.quit
        end if
    end if
end if
end sub