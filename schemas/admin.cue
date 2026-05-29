package schema

import "strings"

#Admin: {
	name!:    strings.MinRunes(2) & strings.MaxRunes(100)
	image!:   =~"^https?://"
	socials!: [...#Social]
}
