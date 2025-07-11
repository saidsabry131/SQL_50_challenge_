/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     int val;
 *     ListNode next;
 *     ListNode() {}
 *     ListNode(int val) { this.val = val; }
 *     ListNode(int val, ListNode next) { this.val = val; this.next = next; }
 * }
 */
class Solution {
    public int getDecimalValue(ListNode head) {
        int cont =0;
        ListNode current = head;
        while(current!=null)
        {
            cont++;
            current = current.next;
        }
        int result = 0;
        current = head;
        while(current!=null)
        {
            result += current.val * Math.pow(2, cont-1);
            cont--;
            current = current.next;
        }
        return result;
        
    }
}