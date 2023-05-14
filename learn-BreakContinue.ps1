for($i=1; $i -le 254;$i++){
   if($i -in 200..230){
    break
   } 
   "10.9.8.$i"
}

for($i=1; $i -le 254;$i++){
   if($i -in 200..230){
    continue
   } 
   "10.9.8.$i"
}