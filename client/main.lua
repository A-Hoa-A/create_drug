--^ Command ^--

--^ Function ^--
function CreateDrug(item)
    if lib.progressBar({
        duration = 3000,
        label = 'Creating...',
        anim = {
            dict = 'missmechanic',
            clip = 'work2_in'
        },
        disable = {
            move = true
        }
    }) then TriggerServerEvent('drug_creator:server:GiveDrug', item) end
end

--^ Event ^--
exports.ox_target:addSphereZone({
    coords = Config.DrugCoord,
    radius = 0.8,
    options = {
        {
            label = 'Select Create Drug',
            onSelect = function ()
                lib.showContext('drug_list')
            end
        }
    }
})

lib.registerContext({
    id = 'drug_list',
    title = 'Create Drug',
    options = {
        {
            title = 'Joint',
            onSelect = function ()
                CreateDrug('joint')
            end
        },
        {
            title = 'Bag of Coke',
            onSelect = function ()
                CreateDrug('cokebaggy')
            end
        },
        {
            title = 'Bag of Crack',
            onSelect = function ()
                CreateDrug('crack_baggy')
            end
        },
        {
            title ='Bag of XTC',
            onSelect = function ()
                CreateDrug('xtcbaggy')
            end
        },
        {
            title = 'Coke Brick',
            onSelect = function ()
                CreateDrug('coke_brick')
            end
        },
        {
            title = 'Weed Brick',
            onSelect = function ()
                CreateDrug('weed_brick')
            end
        },
        {
            title = 'Coke Package',
            onSelect = function ()
                CreateDrug('coke_small_brick')
            end
        },
        {
            title = 'Prescription Oxy',
            onSelect = function ()
                CreateDrug('oxy')
            end
        },
        {
            title = 'Meth',
            onSelect = function ()
                CreateDrug('meth')
            end
        },
        {
            title = 'Rolling Paper',
            onSelect = function ()
                CreateDrug('rolling_paper')
            end
        }
    }
})