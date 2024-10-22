<?php

namespace problem0002;

class Solution
{
    public function addTwoNumbers(?ListNode $l1, ?ListNode $l2): ?ListNode
    {
        $head = $current = new ListNode();
        $carry = 0;

        // * 同时遍历两个链表，逐步计算它们的和，并与当前进位值相加
        // * 遍历结束，如果还有进位值，则在链表末尾添加一个新节点
        while ($l1 !== null || $l2 !== null || $carry !== 0) {
            $sum = ($l1 ? $l1->val : 0) + ($l2 ? $l2->val : 0) + $carry;

            $l1 = $l1 ? $l1->next : null;
            $l2 = $l2 ? $l2->next : null;

            $current->next = new ListNode($sum % 10);
            $current = $current->next;
            $carry = intval($sum / 10);
        }

        return $head->next;
    }
}
