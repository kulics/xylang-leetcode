Merge Trees(t1: ?TreeNode, t2: ?TreeNode) -> (v: ?TreeNode) {
    ?Result := TreeNode{}

    ? t1 == Nil & t2 == Nil {
        Result = Nil
    } t1 >< Nil & t2 == Nil {
        Result = t1
    } t1 == Nil & t2 >< Nil {
        Result = t2
    } _ {
        Result.val = t1.val + t2.val
        Result.left = Merge Trees(t1.left, t2.left)
        Result.right = Merge Trees(t1.right, t2.right)
    }
    <- (Result)
}
