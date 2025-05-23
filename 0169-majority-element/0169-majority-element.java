class Solution {
    public int majorityElement(int[] nums) {
         Map<Integer,Integer> mp=new HashMap<>();
       for (int i:nums)
       {
           mp.put(i,mp.getOrDefault(i,0) + 1);
       }

       for (Map.Entry<Integer,Integer> entry: mp.entrySet())
       {
           if(entry.getValue()> nums.length/2)
           {
               return entry.getKey();
           }
       }
       
         return 0;
    }
}