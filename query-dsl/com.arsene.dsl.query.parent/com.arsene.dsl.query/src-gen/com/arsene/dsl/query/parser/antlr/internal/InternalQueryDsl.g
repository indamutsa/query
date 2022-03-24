/*
 * generated by Xtext 2.25.0
 */
grammar InternalQueryDsl;

options {
	superClass=AbstractInternalAntlrParser;
}

@lexer::header {
package com.arsene.dsl.query.parser.antlr.internal;

// Hack: Use our own Lexer superclass by means of import. 
// Currently there is no other way to specify the superclass for the lexer.
import org.eclipse.xtext.parser.antlr.Lexer;
}

@parser::header {
package com.arsene.dsl.query.parser.antlr.internal;

import org.eclipse.xtext.*;
import org.eclipse.xtext.parser.*;
import org.eclipse.xtext.parser.impl.*;
import org.eclipse.emf.ecore.util.EcoreUtil;
import org.eclipse.emf.ecore.EObject;
import org.eclipse.xtext.parser.antlr.AbstractInternalAntlrParser;
import org.eclipse.xtext.parser.antlr.XtextTokenStream;
import org.eclipse.xtext.parser.antlr.XtextTokenStream.HiddenTokens;
import org.eclipse.xtext.parser.antlr.AntlrDatatypeRuleToken;
import com.arsene.dsl.query.services.QueryDslGrammarAccess;

}

@parser::members {

 	private QueryDslGrammarAccess grammarAccess;

    public InternalQueryDslParser(TokenStream input, QueryDslGrammarAccess grammarAccess) {
        this(input);
        this.grammarAccess = grammarAccess;
        registerRules(grammarAccess.getGrammar());
    }

    @Override
    protected String getFirstRuleName() {
    	return "Model";
   	}

   	@Override
   	protected QueryDslGrammarAccess getGrammarAccess() {
   		return grammarAccess;
   	}

}

@rulecatch {
    catch (RecognitionException re) {
        recover(input,re);
        appendSkippedTokens();
    }
}

// Entry rule entryRuleModel
entryRuleModel returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModelRule()); }
	iv_ruleModel=ruleModel
	{ $current=$iv_ruleModel.current; }
	EOF;

// Rule Model
ruleModel returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				newCompositeNode(grammarAccess.getModelAccess().getInstructionsInstructionParserRuleCall_0());
			}
			lv_instructions_0_0=ruleInstruction
			{
				if ($current==null) {
					$current = createModelElementForParent(grammarAccess.getModelRule());
				}
				add(
					$current,
					"instructions",
					lv_instructions_0_0,
					"com.arsene.dsl.query.QueryDsl.Instruction");
				afterParserOrEnumRuleCall();
			}
		)
	)*
;

// Entry rule entryRuleInstruction
entryRuleInstruction returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getInstructionRule()); }
	iv_ruleInstruction=ruleInstruction
	{ $current=$iv_ruleInstruction.current; }
	EOF;

// Rule Instruction
ruleInstruction returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getInstructionAccess().getVariableDeclarationParserRuleCall_0());
		}
		this_VariableDeclaration_0=ruleVariableDeclaration
		{
			$current = $this_VariableDeclaration_0.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getInstructionAccess().getAssignmentParserRuleCall_1());
		}
		this_Assignment_1=ruleAssignment
		{
			$current = $this_Assignment_1.current;
			afterParserOrEnumRuleCall();
		}
		    |
		{
			newCompositeNode(grammarAccess.getInstructionAccess().getGlobalCommandParserRuleCall_2());
		}
		this_GlobalCommand_2=ruleGlobalCommand
		{
			$current = $this_GlobalCommand_2.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleVariableDeclaration
entryRuleVariableDeclaration returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVariableDeclarationRule()); }
	iv_ruleVariableDeclaration=ruleVariableDeclaration
	{ $current=$iv_ruleVariableDeclaration.current; }
	EOF;

// Rule VariableDeclaration
ruleVariableDeclaration returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		otherlv_0='var'
		{
			newLeafNode(otherlv_0, grammarAccess.getVariableDeclarationAccess().getVarKeyword_0());
		}
		(
			(
				lv_name_1_0=RULE_ID
				{
					newLeafNode(lv_name_1_0, grammarAccess.getVariableDeclarationAccess().getNameIDTerminalRuleCall_1_0());
				}
				{
					if ($current==null) {
						$current = createModelElement(grammarAccess.getVariableDeclarationRule());
					}
					setWithLastConsumed(
						$current,
						"name",
						lv_name_1_0,
						"org.eclipse.xtext.common.Terminals.ID");
				}
			)
		)
		(
			otherlv_2='='
			{
				newLeafNode(otherlv_2, grammarAccess.getVariableDeclarationAccess().getEqualsSignKeyword_2_0());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getVariableDeclarationAccess().getInitExpExpressionParserRuleCall_2_1_0());
					}
					lv_initExp_3_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getVariableDeclarationRule());
						}
						set(
							$current,
							"initExp",
							lv_initExp_3_0,
							"com.arsene.dsl.query.QueryDsl.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)?
	)
;

// Entry rule entryRuleVarRef
entryRuleVarRef returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getVarRefRule()); }
	iv_ruleVarRef=ruleVarRef
	{ $current=$iv_ruleVarRef.current; }
	EOF;

// Rule VarRef
ruleVarRef returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				if ($current==null) {
					$current = createModelElement(grammarAccess.getVarRefRule());
				}
			}
			otherlv_0=RULE_ID
			{
				newLeafNode(otherlv_0, grammarAccess.getVarRefAccess().getRefVariableDeclarationCrossReference_0());
			}
		)
	)
;

// Entry rule entryRuleAssignment
entryRuleAssignment returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAssignmentRule()); }
	iv_ruleAssignment=ruleAssignment
	{ $current=$iv_ruleAssignment.current; }
	EOF;

// Rule Assignment
ruleAssignment returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					newCompositeNode(grammarAccess.getAssignmentAccess().getVVarRefParserRuleCall_0_0());
				}
				lv_v_0_0=ruleVarRef
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAssignmentRule());
					}
					set(
						$current,
						"v",
						lv_v_0_0,
						"com.arsene.dsl.query.QueryDsl.VarRef");
					afterParserOrEnumRuleCall();
				}
			)
		)
		otherlv_1='='
		{
			newLeafNode(otherlv_1, grammarAccess.getAssignmentAccess().getEqualsSignKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getAssignmentAccess().getExpExpressionParserRuleCall_2_0());
				}
				lv_exp_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getAssignmentRule());
					}
					set(
						$current,
						"exp",
						lv_exp_2_0,
						"com.arsene.dsl.query.QueryDsl.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleGlobalCommand
entryRuleGlobalCommand returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getGlobalCommandRule()); }
	iv_ruleGlobalCommand=ruleGlobalCommand
	{ $current=$iv_ruleGlobalCommand.current; }
	EOF;

// Rule GlobalCommand
ruleGlobalCommand returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			{
				$current = forceCreateModelElement(
					grammarAccess.getGlobalCommandAccess().getPrintCommandAction_0(),
					$current);
			}
		)
		otherlv_1='print'
		{
			newLeafNode(otherlv_1, grammarAccess.getGlobalCommandAccess().getPrintKeyword_1());
		}
		(
			(
				{
					newCompositeNode(grammarAccess.getGlobalCommandAccess().getParamsExpressionParserRuleCall_2_0());
				}
				lv_params_2_0=ruleExpression
				{
					if ($current==null) {
						$current = createModelElementForParent(grammarAccess.getGlobalCommandRule());
					}
					add(
						$current,
						"params",
						lv_params_2_0,
						"com.arsene.dsl.query.QueryDsl.Expression");
					afterParserOrEnumRuleCall();
				}
			)
		)
	)
;

// Entry rule entryRuleExpression
entryRuleExpression returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExpressionRule()); }
	iv_ruleExpression=ruleExpression
	{ $current=$iv_ruleExpression.current; }
	EOF;

// Rule Expression
ruleExpression returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	{
		newCompositeNode(grammarAccess.getExpressionAccess().getOrParserRuleCall());
	}
	this_Or_0=ruleOr
	{
		$current = $this_Or_0.current;
		afterParserOrEnumRuleCall();
	}
;

// Entry rule entryRuleOr
entryRuleOr returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getOrRule()); }
	iv_ruleOr=ruleOr
	{ $current=$iv_ruleOr.current; }
	EOF;

// Rule Or
ruleOr returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getOrAccess().getAndParserRuleCall_0());
		}
		this_And_0=ruleAnd
		{
			$current = $this_And_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getOrAccess().getOrLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='||'
			{
				newLeafNode(otherlv_2, grammarAccess.getOrAccess().getVerticalLineVerticalLineKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getOrAccess().getRightAndParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleAnd
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getOrRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.And");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleAnd
entryRuleAnd returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAndRule()); }
	iv_ruleAnd=ruleAnd
	{ $current=$iv_ruleAnd.current; }
	EOF;

// Rule And
ruleAnd returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getAndAccess().getEqualityParserRuleCall_0());
		}
		this_Equality_0=ruleEquality
		{
			$current = $this_Equality_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getAndAccess().getAndLeftAction_1_0(),
						$current);
				}
			)
			otherlv_2='&&'
			{
				newLeafNode(otherlv_2, grammarAccess.getAndAccess().getAmpersandAmpersandKeyword_1_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getAndAccess().getRightEqualityParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleEquality
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAndRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.Equality");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleEquality
entryRuleEquality returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getEqualityRule()); }
	iv_ruleEquality=ruleEquality
	{ $current=$iv_ruleEquality.current; }
	EOF;

// Rule Equality
ruleEquality returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getEqualityAccess().getComparisonParserRuleCall_0());
		}
		this_Comparison_0=ruleComparison
		{
			$current = $this_Comparison_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getEqualityAccess().getEqualityLeftAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='=='
						{
							newLeafNode(lv_op_2_1, grammarAccess.getEqualityAccess().getOpEqualsSignEqualsSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='!='
						{
							newLeafNode(lv_op_2_2, grammarAccess.getEqualityAccess().getOpExclamationMarkEqualsSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getEqualityRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getEqualityAccess().getRightComparisonParserRuleCall_1_2_0());
					}
					lv_right_3_0=ruleComparison
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getEqualityRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.Comparison");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleComparison
entryRuleComparison returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getComparisonRule()); }
	iv_ruleComparison=ruleComparison
	{ $current=$iv_ruleComparison.current; }
	EOF;

// Rule Comparison
ruleComparison returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getComparisonAccess().getPlusOrMinusParserRuleCall_0());
		}
		this_PlusOrMinus_0=rulePlusOrMinus
		{
			$current = $this_PlusOrMinus_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				{
					$current = forceCreateModelElementAndSet(
						grammarAccess.getComparisonAccess().getComparisonLeftAction_1_0(),
						$current);
				}
			)
			(
				(
					(
						lv_op_2_1='>='
						{
							newLeafNode(lv_op_2_1, grammarAccess.getComparisonAccess().getOpGreaterThanSignEqualsSignKeyword_1_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_1, null);
						}
						    |
						lv_op_2_2='<='
						{
							newLeafNode(lv_op_2_2, grammarAccess.getComparisonAccess().getOpLessThanSignEqualsSignKeyword_1_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_2, null);
						}
						    |
						lv_op_2_3='>'
						{
							newLeafNode(lv_op_2_3, grammarAccess.getComparisonAccess().getOpGreaterThanSignKeyword_1_1_0_2());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_3, null);
						}
						    |
						lv_op_2_4='<'
						{
							newLeafNode(lv_op_2_4, grammarAccess.getComparisonAccess().getOpLessThanSignKeyword_1_1_0_3());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getComparisonRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_4, null);
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getComparisonAccess().getRightPlusOrMinusParserRuleCall_1_2_0());
					}
					lv_right_3_0=rulePlusOrMinus
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getComparisonRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.PlusOrMinus");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePlusOrMinus
entryRulePlusOrMinus returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPlusOrMinusRule()); }
	iv_rulePlusOrMinus=rulePlusOrMinus
	{ $current=$iv_rulePlusOrMinus.current; }
	EOF;

// Rule PlusOrMinus
rulePlusOrMinus returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getPlusOrMinusAccess().getModParserRuleCall_0());
		}
		this_Mod_0=ruleMod
		{
			$current = $this_Mod_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getPlusOrMinusAccess().getPlusLeftAction_1_0_0_0(),
								$current);
						}
					)
					otherlv_2='+'
					{
						newLeafNode(otherlv_2, grammarAccess.getPlusOrMinusAccess().getPlusSignKeyword_1_0_0_1());
					}
				)
				    |
				(
					(
						{
							$current = forceCreateModelElementAndSet(
								grammarAccess.getPlusOrMinusAccess().getMinusLeftAction_1_0_1_0(),
								$current);
						}
					)
					otherlv_4='-'
					{
						newLeafNode(otherlv_4, grammarAccess.getPlusOrMinusAccess().getHyphenMinusKeyword_1_0_1_1());
					}
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getPlusOrMinusAccess().getRightModParserRuleCall_1_1_0());
					}
					lv_right_5_0=ruleMod
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPlusOrMinusRule());
						}
						set(
							$current,
							"right",
							lv_right_5_0,
							"com.arsene.dsl.query.QueryDsl.Mod");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleMod
entryRuleMod returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getModRule()); }
	iv_ruleMod=ruleMod
	{ $current=$iv_ruleMod.current; }
	EOF;

// Rule Mod
ruleMod returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getModAccess().getMulOrDivParserRuleCall_0());
		}
		this_MulOrDiv_0=ruleMulOrDiv
		{
			$current = $this_MulOrDiv_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getModAccess().getModLeftAction_1_0_0(),
							$current);
					}
				)
				(
					(
						lv_op_2_0='mod'
						{
							newLeafNode(lv_op_2_0, grammarAccess.getModAccess().getOpModKeyword_1_0_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getModRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_0, "mod");
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getModAccess().getRightMulOrDivParserRuleCall_1_1_0());
					}
					lv_right_3_0=ruleMulOrDiv
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getModRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.MulOrDiv");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleMulOrDiv
entryRuleMulOrDiv returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getMulOrDivRule()); }
	iv_ruleMulOrDiv=ruleMulOrDiv
	{ $current=$iv_ruleMulOrDiv.current; }
	EOF;

// Rule MulOrDiv
ruleMulOrDiv returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getMulOrDivAccess().getExpoParserRuleCall_0());
		}
		this_Expo_0=ruleExpo
		{
			$current = $this_Expo_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getMulOrDivAccess().getMulOrDivLeftAction_1_0_0(),
							$current);
					}
				)
				(
					(
						(
							lv_op_2_1='*'
							{
								newLeafNode(lv_op_2_1, grammarAccess.getMulOrDivAccess().getOpAsteriskKeyword_1_0_1_0_0());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getMulOrDivRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_1, null);
							}
							    |
							lv_op_2_2='/'
							{
								newLeafNode(lv_op_2_2, grammarAccess.getMulOrDivAccess().getOpSolidusKeyword_1_0_1_0_1());
							}
							{
								if ($current==null) {
									$current = createModelElement(grammarAccess.getMulOrDivRule());
								}
								setWithLastConsumed($current, "op", lv_op_2_2, null);
							}
						)
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getMulOrDivAccess().getRightExpoParserRuleCall_1_1_0());
					}
					lv_right_3_0=ruleExpo
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getMulOrDivRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.Expo");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRuleExpo
entryRuleExpo returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getExpoRule()); }
	iv_ruleExpo=ruleExpo
	{ $current=$iv_ruleExpo.current; }
	EOF;

// Rule Expo
ruleExpo returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		{
			newCompositeNode(grammarAccess.getExpoAccess().getPrefixedParserRuleCall_0());
		}
		this_Prefixed_0=rulePrefixed
		{
			$current = $this_Prefixed_0.current;
			afterParserOrEnumRuleCall();
		}
		(
			(
				(
					{
						$current = forceCreateModelElementAndSet(
							grammarAccess.getExpoAccess().getExpoLeftAction_1_0_0(),
							$current);
					}
				)
				(
					(
						lv_op_2_0='^'
						{
							newLeafNode(lv_op_2_0, grammarAccess.getExpoAccess().getOpCircumflexAccentKeyword_1_0_1_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getExpoRule());
							}
							setWithLastConsumed($current, "op", lv_op_2_0, "^");
						}
					)
				)
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getExpoAccess().getRightPrefixedParserRuleCall_1_1_0());
					}
					lv_right_3_0=rulePrefixed
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getExpoRule());
						}
						set(
							$current,
							"right",
							lv_right_3_0,
							"com.arsene.dsl.query.QueryDsl.Prefixed");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)*
	)
;

// Entry rule entryRulePrefixed
entryRulePrefixed returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getPrefixedRule()); }
	iv_rulePrefixed=rulePrefixed
	{ $current=$iv_rulePrefixed.current; }
	EOF;

// Rule Prefixed
rulePrefixed returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrefixedAccess().getNotAction_0_0(),
						$current);
				}
			)
			(
				('!')=>
				otherlv_1='!'
				{
					newLeafNode(otherlv_1, grammarAccess.getPrefixedAccess().getExclamationMarkKeyword_0_1());
				}
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getPrefixedAccess().getExpressionAtomicParserRuleCall_0_2_0());
					}
					lv_expression_2_0=ruleAtomic
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPrefixedRule());
						}
						set(
							$current,
							"expression",
							lv_expression_2_0,
							"com.arsene.dsl.query.QueryDsl.Atomic");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getPrefixedAccess().getArithmeticSignedAction_1_0(),
						$current);
				}
			)
			(
				('-')=>
				otherlv_4='-'
				{
					newLeafNode(otherlv_4, grammarAccess.getPrefixedAccess().getHyphenMinusKeyword_1_1());
				}
			)
			(
				(
					{
						newCompositeNode(grammarAccess.getPrefixedAccess().getExpressionAtomicParserRuleCall_1_2_0());
					}
					lv_expression_5_0=ruleAtomic
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getPrefixedRule());
						}
						set(
							$current,
							"expression",
							lv_expression_5_0,
							"com.arsene.dsl.query.QueryDsl.Atomic");
						afterParserOrEnumRuleCall();
					}
				)
			)
		)
		    |
		{
			newCompositeNode(grammarAccess.getPrefixedAccess().getAtomicParserRuleCall_2());
		}
		this_Atomic_6=ruleAtomic
		{
			$current = $this_Atomic_6.current;
			afterParserOrEnumRuleCall();
		}
	)
;

// Entry rule entryRuleAtomic
entryRuleAtomic returns [EObject current=null]:
	{ newCompositeNode(grammarAccess.getAtomicRule()); }
	iv_ruleAtomic=ruleAtomic
	{ $current=$iv_ruleAtomic.current; }
	EOF;

// Rule Atomic
ruleAtomic returns [EObject current=null]
@init {
	enterRule();
}
@after {
	leaveRule();
}:
	(
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getPrimaryAction_0_0(),
						$current);
				}
			)
			otherlv_1='('
			{
				newLeafNode(otherlv_1, grammarAccess.getAtomicAccess().getLeftParenthesisKeyword_0_1());
			}
			(
				(
					{
						newCompositeNode(grammarAccess.getAtomicAccess().getExprExpressionParserRuleCall_0_2_0());
					}
					lv_expr_2_0=ruleExpression
					{
						if ($current==null) {
							$current = createModelElementForParent(grammarAccess.getAtomicRule());
						}
						set(
							$current,
							"expr",
							lv_expr_2_0,
							"com.arsene.dsl.query.QueryDsl.Expression");
						afterParserOrEnumRuleCall();
					}
				)
			)
			otherlv_3=')'
			{
				newLeafNode(otherlv_3, grammarAccess.getAtomicAccess().getRightParenthesisKeyword_0_3());
			}
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getIntConstantAction_1_0(),
						$current);
				}
			)
			(
				(
					lv_value_5_0=RULE_INT
					{
						newLeafNode(lv_value_5_0, grammarAccess.getAtomicAccess().getValueINTTerminalRuleCall_1_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAtomicRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_5_0,
							"org.eclipse.xtext.common.Terminals.INT");
					}
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getBoolConstantAction_2_0(),
						$current);
				}
			)
			(
				(
					(
						lv_value_7_1='true'
						{
							newLeafNode(lv_value_7_1, grammarAccess.getAtomicAccess().getValueTrueKeyword_2_1_0_0());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAtomicRule());
							}
							setWithLastConsumed($current, "value", lv_value_7_1, null);
						}
						    |
						lv_value_7_2='false'
						{
							newLeafNode(lv_value_7_2, grammarAccess.getAtomicAccess().getValueFalseKeyword_2_1_0_1());
						}
						{
							if ($current==null) {
								$current = createModelElement(grammarAccess.getAtomicRule());
							}
							setWithLastConsumed($current, "value", lv_value_7_2, null);
						}
					)
				)
			)
		)
		    |
		(
			(
				{
					$current = forceCreateModelElement(
						grammarAccess.getAtomicAccess().getStringConstantAction_3_0(),
						$current);
				}
			)
			(
				(
					lv_value_9_0=RULE_STRING
					{
						newLeafNode(lv_value_9_0, grammarAccess.getAtomicAccess().getValueSTRINGTerminalRuleCall_3_1_0());
					}
					{
						if ($current==null) {
							$current = createModelElement(grammarAccess.getAtomicRule());
						}
						setWithLastConsumed(
							$current,
							"value",
							lv_value_9_0,
							"org.eclipse.xtext.common.Terminals.STRING");
					}
				)
			)
		)
		    |
		{
			newCompositeNode(grammarAccess.getAtomicAccess().getVarRefParserRuleCall_4());
		}
		this_VarRef_10=ruleVarRef
		{
			$current = $this_VarRef_10.current;
			afterParserOrEnumRuleCall();
		}
	)
;

RULE_ID : '^'? ('a'..'z'|'A'..'Z'|'_') ('a'..'z'|'A'..'Z'|'_'|'0'..'9')*;

RULE_INT : ('0'..'9')+;

RULE_STRING : ('"' ('\\' .|~(('\\'|'"')))* '"'|'\'' ('\\' .|~(('\\'|'\'')))* '\'');

RULE_ML_COMMENT : '/*' ( options {greedy=false;} : . )*'*/';

RULE_SL_COMMENT : '//' ~(('\n'|'\r'))* ('\r'? '\n')?;

RULE_WS : (' '|'\t'|'\r'|'\n')+;

RULE_ANY_OTHER : .;