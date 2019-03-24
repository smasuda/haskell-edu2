module Types.Classes where

data MyType = MyType
data MySecondType = MyLeft | MyRight
newtype MyThirdType = MyThirdType Int

class MyTypeClass a where
    getClassName:: a -> String

instance MyTypeClass MyType where
    getClassName MyType = "ABC"

instance MyTypeClass MySecondType where
    getClassName MyLeft = "Left"
    getClassName MyRight = "Right"

instance MyTypeClass MyThirdType where
    getClassName (MyThirdType x) = "I have " ++ show x ++ "."

run::IO ()
run = let m1 = MyType
          m2 = MyLeft
          m3 = MyRight
          m4 = MyThirdType 123
      in do
            putStrLn $ getClassName MyType
            putStrLn $ getClassName m1
            putStrLn $ getClassName m2
            putStrLn $ getClassName m3
            putStrLn $ getClassName m4