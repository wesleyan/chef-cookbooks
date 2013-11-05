name "production"
description "This is our production environment, it is for recipes and cookbooks that have been thoroughly tested for bugs and regressions"
cookbook_versions 	"apple_itunes" => "<= 0.4.1",
				    "apple_safari" => "<= 0.2.0",
				    "eset_nod32" => "<= 0.1.0",
					"mozilla_firefox" => "<= 0.4.7",
					"opscode_chef" => "<= 0.2.0"