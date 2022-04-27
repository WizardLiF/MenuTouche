_menuPool = NativeUI.CreatePool()
mainMenu = NativeUI.CreateMenu("", "Menu Touche | Nom de votre serveur ")
_menuPool:Add(mainMenu)


bool = false

------- NE PAS TOUCHER NI SUPPRIMER ---------
function FirstItem(menu)
   local checkbox = NativeUI.CreateCheckboxItem("Click me", bool, "Toggle this item")
   menu.OnCheckboxChange = function (sender, item, checked_)
    
      if item == checkbox then
        bool = checked_
        notify(tostring(bool))
      end
   end
end

------- NE PAS TOUCHER NI SUPPRIMER ---------
function SecondItem(menu) 
    local click = NativeUI.CreateItem("Heal me", "~g~Heal yourself")
    menu.OnItemSelect = function(sender, item, index)
        if item == click then
            SetEntityHealth(PlayerPedId(), 200)
            notify("~g~Healed.")
        end
    end
end


------- NE PAS TOUCHER NI SUPPRIMER ---------
function ThirdItem(menu)
    local click = NativeUI.CreateListItem("Get Guns", weapons, 1)
    menu.OnListSelect = function(sender, item, index)  
        if item == click then
            SetEntityHealth(PlayerPedId(), 200)
            notify("~g~Healed.")
        end
    end
end
------- VOUS POUVEZ MODIFIER LES TOUCHES ET LE NOM ---------
seats = {-1,0,1,2}
function FourthItem(menu) 
   local submenu = _menuPool:AddSubMenu(menu, "→ Nom de votre serveur - Touche") 
   local carItem = NativeUI.CreateItem("~o~↓ TOUCHE MENU ↓", "~r~Menu By Wizard")
   local carItem1 = NativeUI.CreateItem("F1 → Menu Boutique", "~r~Menu By Wizard")
   local carItem2 = NativeUI.CreateItem("F2 → Menu Clé", "~r~Menu By Wizard")
   local carItem3 = NativeUI.CreateItem("F3 → Menu Animation", "~r~Menu By Wizard")
   local carItem4 = NativeUI.CreateItem("F5 → Menu Inventaire", "~r~Menu By Wizard")
   local carItem5 = NativeUI.CreateItem("F6 → Menu Métier", "~r~Menu By Wizard")
   local carItem6 = NativeUI.CreateItem("F9 → Menu Radio", "~r~Menu By Wizard")
   local carItem7 = NativeUI.CreateItem("~o~↓ TOUCHE LETTRE ↓", "~r~Menu By Wizard")
   local carItem8 = NativeUI.CreateItem("G → Téléphone ", "~r~Menu By Wizard")
   local carItem9 = NativeUI.CreateItem("U → Fermer/Ouvrir véhicule ", "~r~Menu By Wizard")
   local carItem10 = NativeUI.CreateItem("Y → Roulette Vêtement", "~r~Menu By Wizard")
   local carItem11 = NativeUI.CreateItem("L → Fermer/Ouvrir Coffre ", "~r~Menu By Wizard")
   local carItem12 = NativeUI.CreateItem("B → Pointer Doigt", "~r~Menu By Wizard")
   local carItem13 = NativeUI.CreateItem("L → Fermer/Ouvrir Coffre ", "~r~Menu By Wizard")
   local carItem14 = NativeUI.CreateItem("~o~↓ TOUCHE VOITURE ↓", "~r~Menu By Wizard")
   local carItem15 = NativeUI.CreateItem("X → Ceinture", "~r~Menu By Wizard")
   local carItem16 = NativeUI.CreateItem("F1 → Menu Régulateur ", "~r~Menu By Wizard")
   local carItem17 = NativeUI.CreateItem("~o~↓ NOTRE DISCORD ↓", "~r~Menu By Wizard")
   local carItem18 = NativeUI.CreateItem("https://discord.gg/", "~r~Menu By Wizard")
   carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("")
            notify("")
        end
   end
   local seat = NativeUI.CreateSliderItem("Change seat", seats, 1)
    submenu.OnSliderChange = function(sender, item, index)
        if item == seat then
            vehSeat = item:IndexToItem(index)
            local pedsCar = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            SetPedIntoVehicle(PlayerPedId(), pedsCar, vehSeat)
        end
    end
   submenu:AddItem(carItem)
   submenu:AddItem(carItem1)
   submenu:AddItem(carItem2)
   submenu:AddItem(carItem3)
   submenu:AddItem(carItem4)
   submenu:AddItem(carItem5)
   submenu:AddItem(carItem6)
   submenu:AddItem(carItem7)
   submenu:AddItem(carItem8)
   submenu:AddItem(carItem9)
   submenu:AddItem(carItem10)
   submenu:AddItem(carItem11)
   submenu:AddItem(carItem12)
   submenu:AddItem(carItem13)
   submenu:AddItem(carItem14)
   submenu:AddItem(carItem15)
   submenu:AddItem(carItem16)
   submenu:AddItem(carItem17)
    submenu:AddItem(carItem18)
end

------- VOUS POUVEZ MODIFIER LES TOUCHES ET LE NOM ---------
seats = {-1,0,1,2}
function FourthItem(menu) 
   local submenu = _menuPool:AddSubMenu(menu, "→ Nom de votre serveur - Touche") 
   local carItem = NativeUI.CreateItem("~o~↓ TOUCHE MENU ↓", "~r~Menu By Wizard")
   local carItem1 = NativeUI.CreateItem("F1 → Menu Boutique", "~r~Menu By Wizard")
   local carItem2 = NativeUI.CreateItem("F2 → Menu Clé", "~r~Menu By Wizard")
   local carItem3 = NativeUI.CreateItem("F3 → Menu Animation", "~r~Menu By Wizard")
   local carItem4 = NativeUI.CreateItem("F5 → Menu Inventaire", "~r~Menu By Wizard")
   local carItem5 = NativeUI.CreateItem("F6 → Menu Métier", "~r~Menu By Wizard")
   local carItem6 = NativeUI.CreateItem("F9 → Menu Radio", "~r~Menu By Wizard")
   local carItem7 = NativeUI.CreateItem("~o~↓ TOUCHE LETTRE ↓", "~r~Menu By Wizard")
   local carItem8 = NativeUI.CreateItem("G → Téléphone ", "~r~Menu By Wizard")
   local carItem9 = NativeUI.CreateItem("U → Fermer/Ouvrir véhicule ", "~r~Menu By Wizard")
   local carItem10 = NativeUI.CreateItem("Y → Roulette Vêtement", "~r~Menu By Wizard")
   local carItem11 = NativeUI.CreateItem("L → Fermer/Ouvrir Coffre ", "~r~Menu By Wizard")
   local carItem12 = NativeUI.CreateItem("B → Pointer Doigt", "~r~Menu By Wizard")
   local carItem13 = NativeUI.CreateItem("L → Fermer/Ouvrir Coffre ", "~r~Menu By Wizard")
   local carItem14 = NativeUI.CreateItem("~o~↓ TOUCHE VOITURE ↓", "~r~Menu By Wizard")
   local carItem15 = NativeUI.CreateItem("X → Ceinture", "~r~Menu By Wizard")
   local carItem16 = NativeUI.CreateItem("F1 → Menu Régulateur ", "~r~Menu By Wizard")
   local carItem17 = NativeUI.CreateItem("~o~↓ NOTRE DISCORD ↓", "~r~Menu By Wizard")
   local carItem18 = NativeUI.CreateItem("~g~https://discord.gg/", "~r~Menu By Wizard")
   carItem.Activated = function(sender, item)
        if item == carItem then
            spawnCar("")
            notify("")
        end
   end
   local seat = NativeUI.CreateSliderItem("Change seat", seats, 1)
    submenu.OnSliderChange = function(sender, item, index)
        if item == seat then
            vehSeat = item:IndexToItem(index)
            local pedsCar = GetVehiclePedIsIn(GetPlayerPed(-1),false)
            SetPedIntoVehicle(PlayerPedId(), pedsCar, vehSeat)
        end
    end
    submenu:AddItem(carItem)
    submenu:AddItem(carItem1)
    submenu:AddItem(carItem2)
    submenu:AddItem(carItem3)
    submenu:AddItem(carItem4)
    submenu:AddItem(carItem5)
    submenu:AddItem(carItem6)
    submenu:AddItem(carItem7)
    submenu:AddItem(carItem8)
    submenu:AddItem(carItem9)
    submenu:AddItem(carItem10)
    submenu:AddItem(carItem11)
    submenu:AddItem(carItem12)
    submenu:AddItem(carItem13)
    submenu:AddItem(carItem14)
    submenu:AddItem(carItem15)
    submenu:AddItem(carItem16)
    submenu:AddItem(carItem17)
    submenu:AddItem(carItem18)
end

FirstItem(mainMenu)
SecondItem(mainMenu)
ThirdItem(mainMenu)
FourthItem(mainMenu)
_menuPool:RefreshIndex()

Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)
        _menuPool:ProcessMenus()
        ---- POUR MODIFIER LA TOUCHE D'OUVERTURE DU MENU --------
        if IsControlJustPressed(1, 107) then
            mainMenu:Visible(not mainMenu:Visible())
        end
    end
end)



------- NE PAS TOUCHER NI SUPPRIMER ---------

function notify(text)
    SetNotificationTextEntry("STRING")
    AddTextComponentString(text)
    DrawNotification(true, true)
end

function giveWeapon(hash)
    GiveWeaponToPed(GetPlayerPed(-1), GetHashKey(hash), 999, false, false)
end

function spawnCar(car)
    local car = GetHashKey(car)

    RequestModel(car)
    while not HasModelLoaded(car) do
        RequestModel(car)
        Citizen.Wait(50)
    end

    local x, y, z = table.unpack(GetEntityCoords(PlayerPedId(), false))
    local vehicle = CreateVehicle(car, x + 2, y + 2, z + 1, GetEntityHeading(PlayerPedId()), true, false)
    SetPedIntoVehicle(PlayerPedId(), vehicle, -1)
    
    SetEntityAsNoLongerNeeded(vehicle)
    SetModelAsNoLongerNeeded(vehicleName)
    
 ------- NE PAS TOUCHER NI SUPPRIMER ---------
end