int num = 20;
int[] x = new int[num];
int[] y = new int[num];

void setup(){
size(500,500);
noStroke();
background(250);

}

void draw(){
for(int i = num-1; i>0; i--){
   x[i] = x[i-1];
   y[i]=y[i-1];
x[0] = height - mouseX;
y[0] = width - mouseY;
}

for(int i = 10; i< num; i++){
background(y[i],x[i],10);

rect(x[i],y[i],80,10);
fill(x[i]/2,20,y[i]);
rect(y[i],x[i],10,80);
fill(y[i],x[i]/2,220);
}
}