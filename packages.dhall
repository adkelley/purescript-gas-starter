
let upstream =
      https://github.com/purescript/package-sets/releases/download/psc-0.13.8-20200724/packages.dhall sha256:bb941d30820a49345a0e88937094d2b9983d939c9fd3a46969b85ce44953d7d9

let overrides = {=}

let additions =
  { google-appsscript =
     { dependencies =
	    [ "console"
		, "effect"
		, "foreign"
		, "foreign-object"
		, "functions"
		, "nullable"
		, "options"
		, "psci-support"
		]
	  , repo =
	      "https://github.com/adkelley/purescript-google-appsscript.git"
	  , version =
	      "master"
	}
  }

in upstream // overrides // additions
