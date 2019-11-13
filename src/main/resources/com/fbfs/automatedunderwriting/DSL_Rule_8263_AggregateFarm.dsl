[when]R8263 - Item type changed or aggregate farm is added=

(AggregateFarm( previousItemType != null, itemType == "OT") from $aggregateFarm or
 AggregateFarm( itemType == "OT" , added == true) from $aggregateFarm

)
