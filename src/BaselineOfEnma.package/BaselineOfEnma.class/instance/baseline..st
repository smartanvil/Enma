baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				project: 'Roassal2'
				with: [ spec
						className: #ConfigurationOfRoassal2;
						version: #stable;
						repository: 'http://www.smalltalkhub.com/mc/ObjectProfile/Roassal2/main' ].
			spec baseline: 'FogDB' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec baseline: 'FogBi2' with: [ spec repository: 'github://sbragagnolo/Fog/src' ].
			spec package: #Enma with: [ spec requires: #('FogDB' Roassal2 FogBi2) ] ]