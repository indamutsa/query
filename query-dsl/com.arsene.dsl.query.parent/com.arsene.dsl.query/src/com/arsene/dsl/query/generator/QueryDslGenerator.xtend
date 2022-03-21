/*
 * generated by Xtext 2.25.0
 */
package com.arsene.dsl.query.generator

import org.eclipse.emf.ecore.resource.Resource
import org.eclipse.xtext.generator.AbstractGenerator
import org.eclipse.xtext.generator.IFileSystemAccess2
import org.eclipse.xtext.generator.IGeneratorContext
import com.arsene.dsl.query.queryDsl.Model
import com.arsene.dsl.query.queryDsl.Instruction

/**
 * Generates code from your model files on save.
 * 
 * See https://www.eclipse.org/Xtext/documentation/303_runtime_concepts.html#code-generation
 */
class QueryDslGenerator extends AbstractGenerator {

	override void doGenerate(Resource resource, IFileSystemAccess2 fsa, IGeneratorContext context) {
		var generatedCode = ""
		var model = resource.contents.head as Model
		
		for( e : model.instructions.filter(typeof (Instruction))){
			generatedCode += e.compile + "\n";
		}
		
		fsa.generateFile("generated_code.js", generatedCode)
		
		
//		fsa.generateFile('greetings.txt', 'People to greet: ' + 
//			resource.allContents
//				.filter(Greeting)
//				.map[name]
//				.join(', '))
	}
}
