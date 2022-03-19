/*
 * generated by Xtext 2.25.0
 */
package com.arsene.workflow.ide

import com.arsene.workflow.WorkflowRuntimeModule
import com.arsene.workflow.WorkflowStandaloneSetup
import com.google.inject.Guice
import org.eclipse.xtext.util.Modules2

/**
 * Initialization support for running Xtext languages as language servers.
 */
class WorkflowIdeSetup extends WorkflowStandaloneSetup {

	override createInjector() {
		Guice.createInjector(Modules2.mixin(new WorkflowRuntimeModule, new WorkflowIdeModule))
	}
	
}
