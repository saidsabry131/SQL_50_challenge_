class Solution {
    public int[] fairCandySwap(int[] aliceSizes, int[] bobSizes) {
       int sumA=0 ,sumB=0;
        sumA=Arrays.stream(aliceSizes).sum();
        sumB=Arrays.stream(bobSizes).sum();
        int diff = (sumB-sumA)/2 ;

        Set<Integer> bob=new HashSet<>();
        for (int i:bobSizes)
        {
            bob.add(i);
        }
        
        for (int i:aliceSizes)
        {
            int x=i+diff;
            if(bob.contains(x))
            {
                return new int[]{i,x};
            }
        }

        return null;
    }
}