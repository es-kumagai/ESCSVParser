extension RawLine {
	
	public func make<Result, A:RawColumnConvertible>(creation:(A)->Result)(from a:Int) throws -> Result {
		
		return try Converter((self.column(a) as A)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible>(creation:(A, B)->Result)(from a:Int, _ b:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible>(creation:(A, B, C)->Result)(from a:Int, _ b:Int, _ c:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible>(creation:(A, B, C, D)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible>(creation:(A, B, C, D, E)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible>(creation:(A, B, C, D, E, F)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible>(creation:(A, B, C, D, E, F, G)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible, Y:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int, _ y:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X, self.column(y) as Y)).into(creation)
	}
	
	public func make<Result, A:RawColumnConvertible, B:RawColumnConvertible, C:RawColumnConvertible, D:RawColumnConvertible, E:RawColumnConvertible, F:RawColumnConvertible, G:RawColumnConvertible, H:RawColumnConvertible, I:RawColumnConvertible, J:RawColumnConvertible, K:RawColumnConvertible, L:RawColumnConvertible, M:RawColumnConvertible, N:RawColumnConvertible, O:RawColumnConvertible, P:RawColumnConvertible, Q:RawColumnConvertible, R:RawColumnConvertible, S:RawColumnConvertible, T:RawColumnConvertible, U:RawColumnConvertible, V:RawColumnConvertible, W:RawColumnConvertible, X:RawColumnConvertible, Y:RawColumnConvertible, Z:RawColumnConvertible>(creation:(A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z)->Result)(from a:Int, _ b:Int, _ c:Int, _ d:Int, _ e:Int, _ f:Int, _ g:Int, _ h:Int, _ i:Int, _ j:Int, _ k:Int, _ l:Int, _ m:Int, _ n:Int, _ o:Int, _ p:Int, _ q:Int, _ r:Int, _ s:Int, _ t:Int, _ u:Int, _ v:Int, _ w:Int, _ x:Int, _ y:Int, _ z:Int) throws -> Result {
		
		return try Converter((self.column(a) as A, self.column(b) as B, self.column(c) as C, self.column(d) as D, self.column(e) as E, self.column(f) as F, self.column(g) as G, self.column(h) as H, self.column(i) as I, self.column(j) as J, self.column(k) as K, self.column(l) as L, self.column(m) as M, self.column(n) as N, self.column(o) as O, self.column(p) as P, self.column(q) as Q, self.column(r) as R, self.column(s) as S, self.column(t) as T, self.column(u) as U, self.column(v) as V, self.column(w) as W, self.column(x) as X, self.column(y) as Y, self.column(z) as Z)).into(creation)
	}
}
