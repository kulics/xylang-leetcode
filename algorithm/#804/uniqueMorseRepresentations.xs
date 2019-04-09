Solution -> {
    UniqueMorseRepresentations(words: [Str]) -> (v: I32) {
        morse :=  {
            ['a']".-", ['b']"-...", ['c']"-.-.", ['d']"-..", ['e']".", ['f']"..-.", ['g']"--.",
            ['h']"....", ['i']"..", ['j']".---", ['k']"-.-", ['l']".-..", ['m']"--", ['n']"-.",
            ['o']"---", ['p']".--.", ['q']"--.-", ['r']".-.", ['s']"...", ['t']"-",
            ['u']"..-", ['v']"...-", ['w']".--", ['x']"-..-", ['y']"-.--", ['z']"--.."
        }
        
        countMap := [[Str]Bl]()

        @ ea <- words {
            temp := ""
            @ c <- ea {
                temp += morse[c]
            }
            countMap[temp] = true
        }

        <- (countMap.count)
    }
}