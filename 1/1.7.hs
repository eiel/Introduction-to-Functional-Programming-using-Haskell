square x = x * x

main = return ()

-- |
-- square の結果に1足せばいいんじゃね?
-- >>> (increase1 10 > square 10) && (10 > 0)
-- True
increase1 x = square x + 1

-- |
-- 3 乗して 絶対値とればいいんじゃね
-- >>> (increase2 10 > square 10) && (10 > 0)
-- True
increase2 x = abs (x * x * x)
