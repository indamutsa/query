/**
 * generated by Xtext 2.25.0
 */
package com.arsene.dsl.query.queryDsl;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Var Ref</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link com.arsene.dsl.query.queryDsl.VarRef#getRef <em>Ref</em>}</li>
 * </ul>
 *
 * @see com.arsene.dsl.query.queryDsl.QueryDslPackage#getVarRef()
 * @model
 * @generated
 */
public interface VarRef extends Expression
{
  /**
   * Returns the value of the '<em><b>Ref</b></em>' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Ref</em>' reference.
   * @see #setRef(VariableDeclaration)
   * @see com.arsene.dsl.query.queryDsl.QueryDslPackage#getVarRef_Ref()
   * @model
   * @generated
   */
  VariableDeclaration getRef();

  /**
   * Sets the value of the '{@link com.arsene.dsl.query.queryDsl.VarRef#getRef <em>Ref</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Ref</em>' reference.
   * @see #getRef()
   * @generated
   */
  void setRef(VariableDeclaration value);

} // VarRef