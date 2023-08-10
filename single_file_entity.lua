--[[
    One way to develop an entity is to create a file in `entities/`. 
    This file is `shared`, which means that the contents run on both the server and client side.
    The file name defines the class of your entity (https://wiki.facepunch.com/gmod/Entity:GetClass).
    So to create your entity somewhere else, in this case you would write:
    ```lua
        local ent = ents.Create('single_file_entity')
        -- some code
        ent:Spawn()
    ```
]]

ENT.Type = 'anim'
ENT.Base = 'base_gmodentity'
ENT.PrintName = 'Single File Entity'
ENT.Author = 'Radon'
ENT.Spawnable = true

if SERVER then
    function ENT:Initialize()
        self:SetModel('your model')
        self:PhysicsInit(SOLID_VPHYSICS)
        self:SetMoveType(MOVETYPE_VPHYSICS)
        self:SetSolid(SOLID_VPHYSICS)
    
        local phys = self:GetPhysicsObject()
        if phys:IsValid() then
            phys:Wake()
        end
    end
else
    function ENT:Draw()
        print('single_file_entity ENT.Draw being called')
        self:DrawModel()
    end
end
