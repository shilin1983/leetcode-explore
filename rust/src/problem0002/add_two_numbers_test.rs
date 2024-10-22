struct Case {
    expected: Vec<i32>,
    nums1: Vec<i32>,
    nums2: Vec<i32>,
}

#[test]
fn test_add_two_numbers() {
    use super::*;

    let cases: [Case; 3] = [
        Case {
            expected: vec![7, 0, 8],
            nums1: vec![2, 4, 3],
            nums2: vec![5, 6, 4],
        },
        Case {
            expected: vec![0],
            nums1: vec![0],
            nums2: vec![0],
        },
        Case {
            expected: vec![8, 9, 9, 9, 0, 0, 0, 1],
            nums1: vec![9, 9, 9, 9, 9, 9, 9],
            nums2: vec![9, 9, 9, 9],
        },
    ];

    for c in cases {
        assert_eq!(
            int_2_list(c.expected),
            Solution::add_two_numbers(int_2_list(c.nums1), int_2_list(c.nums2))
        );
    }
}
