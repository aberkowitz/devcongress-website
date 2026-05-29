package schema

import "strings"

#Meetup: {
	name!:        strings.MinRunes(2)
	date!:        =~"^[0-9]{4}-[0-9]{2}-[0-9]{2}$"
	location!:    strings.MinRunes(2)
	description!: strings.MinRunes(10)
	cover!:       =~"^https?://"
	photos!:      [...=~"^https?://"]
}
