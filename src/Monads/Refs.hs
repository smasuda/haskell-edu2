module Monads.Refs where
import Data.IORef

run = do
    myref <- newIORef 123
    putStrLn . show =<< readIORef myref
    writeIORef myref 345
    putStrLn . show =<< readIORef myref
    modifyIORef myref (+ 1)
    putStrLn . show =<< readIORef myref

