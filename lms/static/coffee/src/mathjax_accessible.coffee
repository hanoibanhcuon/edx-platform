$ ->
	isMPInstalled = (boolean) ->
	# check if MathPlayer is installed
	# (http://www.dessci.com/en/products/mathplayer/check.htm)
		try
			oMP = new ActiveXObject("MathPlayer.Factory.1")
			true
		catch e
			false

	# detect if there is mathjax on the page
	# if not, remove mathplugin div
	if MathJax? and not isMPInstalled()
		$("#mathjax-accessibility-message").attr("aria-hidden", "false")
	else
		$("#mathjax-accessibility-message").attr("aria-hidden", "true")
