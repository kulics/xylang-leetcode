Postorder(root: ?Node) -> (v: []Int) {
    ? root == Nil {
        <- ([]Int{})
    }
    List := []Int{}
    root.children @ ea {
        List += Postorder(ea)
    }
    List += root.val
    <- (List)
}
