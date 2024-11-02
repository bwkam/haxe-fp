enum Maybe<T> {
	Just(x:T);
	Nothing;
}

class FMaybe {
	static public function fmap<R, T>(i:Maybe<T>, f:T->R):Maybe<R> {
		switch (i) {
			case Just(x):
				return Just(f.bind(x)());
			case Nothing:
				return Nothing;
		};
	}

	static public function ap<R, T>(i:Maybe<T>, f:Maybe<T->R>):Maybe<R> {
		switch (i) {
			case Just(x):
				return fmap(f, y -> y.bind(x)());
			case Nothing:
				return Nothing;
		};
	}

	static public function bind<R, T>(i:Maybe<T>, f:T->Maybe<R>):Maybe<R> {
		switch (i) {
			case Just(x):
				return f.bind(x)();
			case Nothing:
				return Nothing;
		};
	}
}
