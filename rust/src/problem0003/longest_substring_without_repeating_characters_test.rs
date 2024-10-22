struct Case {
    expected: i32,
    s: String,
}

#[test]
fn test_length_of_longest_substring() {
    use super::*;

    let cases: [Case; 3] = [
        Case {
            expected: 3,
            s: "abcabcbb".to_string(),
        },
        Case {
            expected: 1,
            s: "bbbbb".to_string(),
        },
        Case {
            expected: 3,
            s: "pwwkew".to_string(),
        },
    ];

    for c in cases {
        assert_eq!(c.expected, Solution::length_of_longest_substring(c.s))
    }
}
