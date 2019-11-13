[when]The occupancy status is unoccupied or is owned rented to others and the rental liabilites do not match the number of rental residences =
eval((occupancyStatus == "UN") || (occupancyStatus == "OR" && cntResidencesOwnedRented != cntRentalLiabilities))
