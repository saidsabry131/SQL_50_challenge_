class Solution {
    public List<List<String>> groupAnagrams(String[] strs) {
         List<List<String>> ans = new ArrayList<>();
        Set<Integer> visited = new TreeSet<>();

        for (int i = 0; i < strs.length; i++) {
            List<String> res= new ArrayList<>();
            if(visited.contains(i)) {
                continue; 
            }
            res.add(strs[i]);

            for (int j = i+1; j < strs.length; j++) {
                if( isAnagram(strs[i], strs[j])) {
                  //  System.out.println("Anagram found: " + strs[i] + " and " + strs[j]);
                    res.add(strs[j]);
                    visited.add(j); 


                }

            }

            ans.add(res);
        }
        return ans;
    }

      public static boolean isAnagram(String s1,String s2)
    {
        int [] arr = new int[26];
        if(s1.length()!=s2.length())
        {
            return false;
        }
        for (int i = 0; i < s1.length(); i++) {
            arr[s1.charAt(i)-'a']++;
            arr[s2.charAt(i)-'a']--;
        }

        for (int i = 0; i < arr.length; i++) {
            if(arr[i]!=0)
            {
                return false;
            }
        }
        return true;
    }
}