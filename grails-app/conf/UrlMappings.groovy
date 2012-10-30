class UrlMappings {

	static mappings = {
		"/$controller/$action?/$id?"{
			constraints {
				// apply constraints here
			}
		}

        // This is the original setting
		// "/"(view:"/index")
        "/"(view: "/index")
		"500"(view:'/error')
	}
}
