/**
 * generated by Xtext 2.25.0
 */
package com.arsene.dsl.query.queryDsl;


/**
 * <!-- begin-user-doc -->
 * A representation of the model object '<em><b>Arithmetic Signed</b></em>'.
 * <!-- end-user-doc -->
 *
 * <p>
 * The following features are supported:
 * </p>
 * <ul>
 *   <li>{@link com.arsene.dsl.query.queryDsl.ArithmeticSigned#getExpression <em>Expression</em>}</li>
 * </ul>
 *
 * @see com.arsene.dsl.query.queryDsl.QueryDslPackage#getArithmeticSigned()
 * @model
 * @generated
 */
public interface ArithmeticSigned extends Expression
{
  /**
   * Returns the value of the '<em><b>Expression</b></em>' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @return the value of the '<em>Expression</em>' containment reference.
   * @see #setExpression(Expression)
   * @see com.arsene.dsl.query.queryDsl.QueryDslPackage#getArithmeticSigned_Expression()
   * @model containment="true"
   * @generated
   */
  Expression getExpression();

  /**
   * Sets the value of the '{@link com.arsene.dsl.query.queryDsl.ArithmeticSigned#getExpression <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @param value the new value of the '<em>Expression</em>' containment reference.
   * @see #getExpression()
   * @generated
   */
  void setExpression(Expression value);

} // ArithmeticSigned