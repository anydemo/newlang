func sq(n) {
	e = 1;
	while (| (t = n / e) - e | > .001) {
		e = avg(e, t);
	};
	ret e;
}

func avg(a, b) {
	ret(a + b) / 2;
}

sq(10);
sqrt(10);
sq(10) - sqrt(10);
avg(1, 2);

func iif(cond, ret1, ret2) {
	if (cond) {
		ret ret1;
	} else {
		ret ret2;
	};
}

iif(1 > 0, 2, 3);
