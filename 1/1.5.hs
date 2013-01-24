-- 1.5.1
-- 本節で登場したガードを使うようにした
fib n | n == 0 = 1
      | n == 1 = 1
      | n > 1  = fib (n-1) + fib (n-2)
      | n < 0  = error "0以上の値を引数に渡してね"

-- 1.5.2
-- Prelude.abs がいるので 使用する場合は Main.abs
abs n = if n > 0 then n else -n
