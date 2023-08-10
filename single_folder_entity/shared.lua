--[[
    The second to develop an entity is to create a directory in `entities/`. 
    By default `init.lua` being called serverside and `cl_init.lua` clientside. Any other files
    inside the folder must be included. That's why you see `AddCSLuaFile('shared.lua')` and `include('shared.lua')`
    The folrder name defines the class of your entity (https://wiki.facepunch.com/gmod/Entity:GetClass).
]]

ENT.Type = 'anim'
ENT.Base = 'base_gmodentity'
ENT.PrintName = 'Simple Folder Entity'
ENT.Author = 'Radon'
ENT.Spawnable = true
