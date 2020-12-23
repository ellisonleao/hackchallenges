package erratum

func Use(o ResourceOpener, input string) (err error) {
	var res Resource

	res, err = o()
	for err != nil {
		if _, ok := err.(TransientError); !ok {
			return err
		}
		res, err = o()
	}

	// treating panics
	defer func() {
		if r := recover(); r != nil {
			if f, ok := r.(FrobError); ok {
				res.Defrob(f.defrobTag)
			}
			err = r.(error)
		}
		res.Close()
	}()

	res.Frob(input)
	return
}
