include('shared.lua')

function ENT:Draw()
    print('single_file_entity ENT.Draw being called')
    self:DrawModel()
end
