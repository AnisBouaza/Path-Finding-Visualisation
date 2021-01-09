void Init()
{

  for(int i = 0; i<taille_grille[0]; i++)
  {
    for( int j = 0; j<taille_grille[1]; j++)
    {
      if (grille[i][j] == 0)
      {
        fill(255,128,0);
        rect(i*taille_pixel[0], j*taille_pixel[1], taille_pixel[0], taille_pixel[1]);
      }
      
      if (grille[i][j] == 2)
      {
        fill(204,153,255);
        rect(i*taille_pixel[0], j*taille_pixel[1], taille_pixel[0], taille_pixel[1]);
        
      }
    }
   }
  
  
}
