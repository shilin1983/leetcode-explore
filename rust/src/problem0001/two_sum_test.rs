struct Case {
    expected: Vec<i32>,
    nums: Vec<i32>,
    target: i32,
}

#[test]
fn test_two_sum() {
    use super::*;

    let cases: [Case; 3] = [
        Case {
            expected: vec![0, 1],
            nums: vec![2, 7, 11, 15],
            target: 9,
        },
        Case {
            expected: vec![1, 2],
            nums: vec![3, 2, 4],
            target: 6,
        },
        Case {
            expected: vec![0, 1],
            nums: vec![3, 3],
            target: 6,
        },
    ];

    for c in cases {
        assert_eq!(c.expected, Solution::two_sum(c.nums, c.target))
    }
}
