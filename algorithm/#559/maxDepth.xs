Max Depth(root: ?Node) -> (v: Int) {
    ? root == Nil {
        <- (0)
    }

    Depth := 0
    root.children @ ea {
        Temp := Max Depth(ea)
        ? Temp > Depth {
            Depth = Temp
        }
    }
    <- (Depth+1)
}
