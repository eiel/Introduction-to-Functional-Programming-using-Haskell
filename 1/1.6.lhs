1.6.1

const :: a -> b -> a
const x y = x


subst :: (a -> b -> c) -> (a -> b) -> a -> c
subst f g x = f x (g x)


apply :: (a -> a) -> a -> a
apply f x = f x


flip :: (a -> a -> a)  -> a -> a -> a
flip f x y = f y x


1.6.2

curry :: ((a,b) -> c)-> a -> b -> c
flip (curry f) :: b -> a -> c
curry (f . swap) :: b -> a -> c
f . swap :: (b,a) -> c

> swap :: (a,b) -> (b,a)
> swap (x, y) = (y, x)

1.6.3

strange
g の型を a -> b と仮定すると
f の型を (a -> b) -> c
g は (f g) の戻り値をとるので
a = c

> strange :: ((a -> b) -> a) -> (a -> b) -> a
> strange = f g = g (f g)

staranger

f の型を (a -> b) と仮定すると
f f の型は (a -> b) -> b かつ a = (a -> b)
a = (a -> b) のような型は作れないので多相型は割り当てられない


1.6.4

square :: Num a => a -> a -> a
square x = x * x
