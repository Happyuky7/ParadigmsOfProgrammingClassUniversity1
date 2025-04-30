# 1.	Escribe una función printgrid que dibuje una cuadrícula como la siguiente:
# +----+----+
# |    |    |
# |    |    |
# |    |    |
# |    |    |
# +----+----+
# |    |    |
# |    |    |
# |    |    |
# |    |    |
# +----+----+

function printgrid()

    str = ""
    for i in 1:30
        if i == 1
            str = "+"
        elseif i == 7
            str = str,"+"
        elseif  i==2||i==3||i==4||i==5||i==8
            str = str,"-"
        end
    end
    for j in str
        replace(str, "("=> "")
        replace(str, " "=> "")
        replace(str, ")"=> "")
    end
    println(str)
end

printgrid()