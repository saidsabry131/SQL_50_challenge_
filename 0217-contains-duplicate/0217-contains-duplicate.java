class Solution {
    public boolean containsDuplicate(int[] nums) {
        Map<Integer,Integer> mp=new HashMap<>();
        for(int i:nums)
        {
            mp.put(i,mp.getOrDefault(i,0) + 1);        
        }
        for(Map.Entry<Integer,Integer> entry: mp.entrySet())
        {
            if(entry.getValue()>=2)
            {
                return true;
            }
        }

        return false;
    }
}