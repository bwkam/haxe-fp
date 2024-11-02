abstract class Functor<A> {
	private final value:A;

	public function new(value:A) {
		this.value = value;
	}

	public function getValue():A {
		return this.value;
	}

	abstract public function fmap<B>(f:A->B):B;
}
