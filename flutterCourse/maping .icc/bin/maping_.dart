

void main(){
var icc=<String,dynamic>{};
icc ['babar']=1;
icc ['hassan Ali']=2;
icc ['shaheen Afridi']=3;
icc ['razwan']=4;
icc ['imad']=5;
print(icc);
print(icc.keys);
print(icc.values);
for (var ic in icc.entries){
print('the ${ic.key} is ${ic.value}') ;
}

}