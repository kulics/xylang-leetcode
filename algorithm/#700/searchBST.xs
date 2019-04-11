Solution -> {
    SearchBST(root: TreeNode, val: I32) -> (v: TreeNode)  {
        ? root == Nil {
            <- (Nil)
        } root.Val == val {
            <- (root)
        } root.Val > val {
            <- (SearchBST(root.Left, val))
        } _ {
            <- (SearchBST(root.Right, val))
        }
    }
}