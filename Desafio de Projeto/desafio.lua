-- Habilitar UTF-8 no terminal
os.execute("chcp 65001")

-- Criatura
local monsterName = "Enderman"
local description = "Uma misteriosa criatura humanoid com pele escura e olhos brilhantes."
local emoji = "🧿"
local sound = "Shhhaaaahh"
local favoriteTime = "Noturno"
local item = "Pérola do Ender"

-- Atributos
local attackAttribute = 8
local defenseAttribute = 6
local lifeAttribute = 7
local speedAttribute = 9
local inteligenceAttribute = 8

-- função que recebe um atributo e nos retorna uma barra de progresso em string / texto
local function getProgressBar(attribute)
    local fullChar = "⬛"
    local emptyChar = "⬜"

    local result = ""
    for i = 1, 10, 1 do
        if i <= attribute then
            result = result .. fullChar
        else
            result = result .. emptyChar
        end
    end

    return result
end

-- Cartão
print("==============================================")
print("| ")
print("| Nome: " .. monsterName)
print("| Descrição: " .. description)
print("| ")
print("| Item: " .. item)
print("| Som: " .. sound)
print("| Emoji: " .. emoji)
print("| Período Favorito: " .. favoriteTime)
print("| ")
print("| Atributos")
print("|    Ataque:       " .. getProgressBar(attackAttribute))
print("|    Defesa:       " .. getProgressBar(defenseAttribute))
print("|    Vida:         " .. getProgressBar(lifeAttribute))
print("|    Velocidade:   " .. getProgressBar(speedAttribute))
print("|    Inteligência: " .. getProgressBar(inteligenceAttribute))
print("| ")
print("==============================================")