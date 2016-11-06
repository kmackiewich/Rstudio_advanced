# Converting F to K

fah_to_kelvin <- function(temp) {
  kelvin <- ((temp - 32)*(5/9)) + 273.15
  return(kelvin)
}

fah_to_kelvin(temp=32)
fah_to_kelvin(32)

#Converting K to C
kel_to_cel <- function(temp) {
  celcius <- temp - 273.15
  return(celcius)
}
kel_to_cel(temp=0)

# Write function to convert F to C

fah_to_cel = function(temp) {
  temp_k <- fah_to_kelvin(temp)
  result <- kel_to_cel(temp_k)
  return(result)
}
fah_to_cel(temp=32)
