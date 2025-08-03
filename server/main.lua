--^ Command ^--

--^ Function ^--

--^ Event ^--
RegisterNetEvent('drug_creator:server:GiveDrug', function (item)
    local src = source
    local count = math.random(1, 5)
    exports.ox_inventory:AddItem(src, item, count)
end)
