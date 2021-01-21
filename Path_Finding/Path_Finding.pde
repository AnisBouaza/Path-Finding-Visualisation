import java.util.*;

int choix=1;
int[] taille_pixel = new int[2];
int[] taille_grille = new int[2];
int[][] grille = new int[15][15];
int[][] voisins_faits = new int[15][15];
Position Player = new Position();
Position Objectif = new Position();
Position Pos_Couteuse = new Position();

void setup()
{
  
  taille_pixel[0] = 35;    //largeur pixel
  taille_pixel[1] = 35;    //hauteur pixel
  
  taille_grille[0] = 15;   //largeur grille
  taille_grille[1] = 15;   //hauteur grille
  
  size(525, 525);          //(largeurpixel * largeur grille, hateurpixel * hauteur grille)
  
  //initiale position player et objectif
  Player.x= 1;
  Player.y = 2;
  Player.cout = 0;
  Objectif.x= 7;
  Objectif.y= 10;
  for(int i = 0; i<taille_grille[0]; i++)
  {
    for( int j = 0; j<taille_grille[1]; j++)
    {
      grille[i][j] = 1;
    }
  }
 
   grille[2][1]=0;
   grille[1][8]=0;
   grille[5][2]=0;
   grille[3][2]=0;
   
   
   grille[4][1]=2;
   grille[3][8]=2;
   grille[7][2]=2;
   grille[5][1]=2;
}


void draw()
{

  background(0);
  noStroke();
  println("=====================");
  println(Player.x+","+Player.y);
  Init();
   
   switch(choix)
   {
     case 1:
       Parcour_Largeur();
       break;
     case 2:
       Parcour_Profondeur();
       break;
     case 3:
       Parcour_Uniforme();
       break;
     case 4:
       A();
       break;
   }
 
  
 
  // draw player + objectif
  fill(255,0,0);
  circle(Player.x*taille_pixel[0]+taille_pixel[0]/2, Player.y*taille_pixel[1]+taille_pixel[1]/2, 25);
  fill(255,255,0);
  circle(Objectif.x*taille_pixel[0]+taille_pixel[0]/2, Objectif.y*taille_pixel[1]+taille_pixel[1]/2, 25);
  
  
}


void mousePressed()
{
  int x1 = floor(mouseX/taille_pixel[0]);
  int y1 = floor(mouseY/taille_pixel[1]);
  
  if( mouseButton == LEFT )
  {
   if(grille[x1][y1] == 0) grille[x1][y1] = 1;
   else grille[x1][y1] = 0;
  }
}


void keyPressed()
{
   if( key == CODED )
   {
     if( keyCode == LEFT)
     {
       if(Player.x-1 >= 0 && grille[Player.x-1][Player.y] != 0) Player.x = Player.x-1;
     }
     
     if( keyCode == RIGHT)
     {
      if(Player.x+1 < taille_grille[0] && grille[Player.x+1][Player.y] != 0) Player.x = Player.x+1;
     }
     
     if( keyCode == UP)
     {
       if(Player.y-1 >= 0 && grille[Player.x][Player.y-1] != 0) Player.y = Player.y-1;
     }
     
     if( keyCode == DOWN)
     {
       if(Player.y+1 < taille_grille[1] && grille[Player.x][Player.y+1] != 0) Player.y = Player.y+1;
     }

   }
   
   if( key == '1') choix = 1;
   if( key == '2') choix = 2;
   if( key == '3') choix = 3;
   if( key == '4') choix = 4;
  
}
