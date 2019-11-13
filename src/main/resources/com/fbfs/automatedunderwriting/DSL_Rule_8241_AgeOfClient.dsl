[when]R8241 - Client's age is less than {age} years old =
ClientSupplement ( $dateOfBirth : dateOfBirth != null, dateOfBirth != "01-Jan-0001") from supplementList
eval(calculateAge($dateOfBirth, $effectiveDate) < {age})          

