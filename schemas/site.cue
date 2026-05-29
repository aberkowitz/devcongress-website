package schema

#Site: {
	community_slack_url!: =~"^https://"
	paystack_url!:        =~"^https://"
	youtube_embed_url!:   =~"^https://"
	stats!: {
		members!:  string
		hired!:    string
		events!:   string
		mentored!: string
	}
	socials!: [...#Social]
	roles!:   [...string]
	mission!: [...#MissionItem]
}

#Social: {
	platform!: "x" | "linkedin" | "github" | "website" | "youtube" | "instagram" | "facebook" | "discord" | "slack"
	url!:      =~"^https?://"
}

#MissionItem: {
	heading!:     string
	description!: string
	stat!:        string
}
