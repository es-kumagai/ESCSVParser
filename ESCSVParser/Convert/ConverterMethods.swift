extension RawLine {
	
	public func columns<A:RawColumnConvertible>(a:Int) throws -> Converter<(A)> {
		
		return try Converter((self.column(a) as A))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible>(a:Int, _ b:Int) throws -> Converter<(A, B)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int) throws -> Converter<(A, B, C)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int) throws -> Converter<(A, B, C, D)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int) throws -> Converter<(A, B, C, D, E)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int) throws -> Converter<(A, B, C, D, E, F)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int) throws -> Converter<(A, B, C, D, E, F, G)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int) throws -> Converter<(A, B, C, D, E, F, G, H)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible, Y:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int, _ y:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X, self.column(y) as Y))
	}
	
	public func columns<A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible, Y:RawColumnConvertible, Z:RawColumnConvertible>(a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int, _ y:Int, _ z:Int) throws -> Converter<(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z)> {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X, self.column(y) as Y, self.column(z) as Z))
	}
}
