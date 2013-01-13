main = putStrLn "1.1 セッションとスクリプト"

square :: Integer -> Integer
square x = x * x

-- |
-- 1.1.1
-- >>> quad 2
-- 16
quad :: Integer -> Integer
quad = square . square

-- |
-- 1.1.2
-- >>> greater (6, 9)
-- 9
-- >>> greater (9, 6)
-- 9
greater :: (Integer, Integer) -> Integer
greater (x, y) =  if (x > y) then x else y

-- |
-- 1.1.3
-- >>> circle_area 7
-- 154.0
circle_area :: Float -> Float
circle_area r = r * r * Main.pi

pi = 22 / 7
