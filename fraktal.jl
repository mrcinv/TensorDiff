"""
Izračunaj ničlo funkcije z Newtonovo metodo
"""
function newton(f, df, x0, nat=1e-10, maxit=100)
  z = f(x0)
  it = 0
  while abs(z)>nat && (it < maxit)
    x0 = x0 - z/df(x0)
    z = f(x0)
    it ++
  end
  x0, it
end
