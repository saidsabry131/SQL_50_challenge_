class Solution {
    public int minEatingSpeed(int[] piles, int h) {
         int l=0;
       int r= Arrays.stream(piles).max().getAsInt();
       while(l<r)
       {
           int mid =l+ (r-l)/2;
           long sum=0;
           for (int p:piles)
           {
               sum+= (int) Math.ceil((double) p/ mid);
            //    sum+=(p+mid-1)/mid;
           }
            if (sum > h) {

               l=mid +1;
           }else {
                r=mid;
           }
       }
         return l;
    }
}