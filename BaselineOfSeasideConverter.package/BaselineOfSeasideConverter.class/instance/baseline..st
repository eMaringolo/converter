baselines
baseline: spec
	<baseline>
	spec
		for: #common
		do: [ spec blessing: #baseline.
			spec
				package: 'Seaside-Converter';
				package: 'Seaside-Converter-Tests' with: [ spec requires: 'Seaside-Converter' ];
				package: 'Seaside-Converter-Tools' with: [ spec requires: 'Seaside-Converter' ].
			spec
				group: 'default'
					with: #('Seaside-Converter' 'Seaside-Converter-Tests' 'Seaside-Converter-Tools');
				group: 'Core' with: #('Seaside-Converter');
				group: 'Tests' with: #('Seaside-Converter-Tests') ]