--
local cm,m,o=GetID()
function cm.initial_effect(c)
	VgD.Rule(c)
	VgD.RideUp(c)
	VgD.CardTrigger(c,nil)
	VgD.SpellActivate(c,m,nil,cm.op)
end
function cm.op(e,tp,eg,ep,ev,re,r,rp)
    Duel.Hint(HINT_SELECTMSG,tp,HINTMSG_RTOHAND)
	local g=Duel.SelectMatchingCard(tp,nil,tp,LOCATION_DROP,0,1,1,nil)
	if g then Duel.SendtoHand(g,nil,REASON_EFFECT) end
end