ITEM.Name = 'Drink Cap'
ITEM.Price = 200
ITEM.Model = 'models/sam/drinkcap.mdl'
ITEM.Attachment = 'eyes'
ITEM.AllowedUserGroups = { "bronze", "silver", "gold", "platinum", "tempadmin", "admin", "superadmin", "owner" }

function ITEM:OnEquip(ply, modifications)
	ply:PS_AddClientsideModel(self.ID)
end

function ITEM:OnHolster(ply)
	ply:PS_RemoveClientsideModel(self.ID)
end

function ITEM:ModifyClientsideModel(ply, model, pos, ang)
	--model:SetModelScale(1.6, 0)
	pos = pos + (ang:Forward() * -3.1) + (ang:Up() * 2.5)
	--ang:RotateAroundAxis(ang:Right(), 90)
	
	return model, pos, ang
end
