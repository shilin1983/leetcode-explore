<?php

use problem0002\ListNode;

function int2List(array $nums): ListNode|null
{
    if (empty($nums)) {
        return null;
    }

    $head = null;

    foreach (array_reverse($nums) as $num) {
        $node = new ListNode($num);
        $node->next = $head;
        $head = $node;
    }

    return $head;
}
