using Lambda;

class FArray {
	static public function fmap<R, T>(i:Array<T>, f:T->R):Array<R> {
		return i.map(f);
	}

	static public function ap<R, T>(i:Array<T>, f:Array<T->R>):Array<R> {
		return f.map(x -> return i.map(y -> x.bind(y)())).flatten();
	}

	static public function bind<R, T>(i:Array<T>, f:T->Array<R>):Array<R> {
		return i.map(x -> f(x)).flatten();
	}
}
