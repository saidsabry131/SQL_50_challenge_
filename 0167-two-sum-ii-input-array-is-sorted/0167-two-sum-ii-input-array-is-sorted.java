class Solution {
    public static int[] twoSum(int[] arr, int target) {
        int l=0;
        int r=arr.length-1;

        while(r> l)
        {
            if(arr[r]+arr[l]==target)
            {
                return new int[]{l+1,r+1};
            }else if(arr[r]+arr[l]>target){
                r--;

            }else{
                l++;
            }
        }
         return new int[]{-1,-1};

    }
}