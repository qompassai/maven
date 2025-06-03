# /qompassai/maven/Makefile
# ---------------------------------
# Copyright (C) 2025 Qompass AI, All rights reserved

setup-maven:
	@echo "Setting up Maven toolchains for user: $(USER)"
	@mkdir -p ~/.m2
	@cat > ~/.m2/toolchains.xml << 'EOF'
	<toolchains>
	  <toolchain>
	    <type>jdk</type>
	    <provides>
	      <version>23.0.2</version>
	      <vendor>temurin</vendor>
	    </provides>
	    <configuration>
	      <jdkHome>$(HOME)/.m2/jdks/jdk-23.0.2+7</jdkHome>
	    </configuration>
	  </toolchain>
	</toolchains>
	EOF
