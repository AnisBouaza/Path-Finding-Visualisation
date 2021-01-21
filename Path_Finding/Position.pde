class Position implements Comparable<Position>
{
  int x,y;
  Position precedent;
  int cout;
  
  Position ()
  {
    this.precedent = null;
    this.x = 0;
    this.y = 0;
    this.cout = 0;
  }
  
  Position (int x, int y)
  {
    this.precedent=null;
    this.x = x;
    this.y = y;
    this.cout = 0;
  }
  
   Position (Position prec,int x, int y)
  {
    this.precedent=prec;
    this.x = x;
    this.y = y;
  }
  
  
   Position (int x,int y, int cout)
  {
    this.x = x;
    this.y = y;
    this.cout = cout;
  }
  
   @Override
    public int compareTo(Position other) {
        return this.cout - other.cout;
    }
  
  
}
