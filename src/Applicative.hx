abstract class Applicative<A> {
	private final value:A;

	public function new(value:A) {
		this.value = value;
	}

	public function getValue() {
		return this.value;
	}
}
