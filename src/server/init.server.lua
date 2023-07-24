
local board = game.Workspace.Board

local token = game:GetService("ServerStorage").Token

local SPACING = 8

local columns = {

    board.Position - 3 * SPACING,
    board.Position - 2 * SPACING,
    board.Position - SPACING,
    board.Position,
    board.Position + SPACING,
    board.Position + 2 * SPACING,
    board.Position + 3 * SPACING,

}

local colors = {"Red", "Yellow"}

local function cloneToken(parity)

    local clone = token:Clone()

    clone.BrickColor = BrickColor.new(colors[parity + 1])

    local random = math.random(1, 7)

    clone.Position = columns[random]

    return clone
end

for i = 0, 42 do

    local clone = cloneToken(i % 2)

    clone.Parent = game.Workspace

end
