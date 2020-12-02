package secret

var secrets = []struct {
	num   uint
	value string
}{
	{1, "wink"},
	{2, "double blink"},
	{4, "close your eyes"},
	{8, "jump"},
}

const rev = 16

// Handshake returns an array of actions given an integer
func Handshake(num uint) []string {
	var output []string
	for _, secret := range secrets {
		if num&secret.num == secret.num {
			output = append(output, secret.value)
		}
	}

	if num&rev == rev {
		reverse(output)
	}

	return output
}

func reverse(in []string) {
	last := len(in) - 1
	for i := 0; i < len(in)/2; i++ {
		in[i], in[last-i] = in[last-i], in[i]
	}
}
