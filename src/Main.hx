package;

using Maybe.FMaybe;
using FArray;

import Maybe;

class Main {
	public static function main() {
		var x = [1, 2, 3];
		trace(x.fmap(x -> x + 1));
		trace(x.ap([(x -> x + 1), (x -> x + 9), (x -> x * 2)]));
		// trace(x.bind(y -> [(x -> '${x}'), (x -> '${x}'), (x -> '${x}')]));
		trace(x.bind(y -> [1, 2, 3]));
	}
}
