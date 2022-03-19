/**
 * generated by Xtext 2.25.0
 */
package com.arsene.workflow.workflow.impl;

import com.arsene.workflow.workflow.Assignment;
import com.arsene.workflow.workflow.Expression;
import com.arsene.workflow.workflow.Variable;
import com.arsene.workflow.workflow.WorkflowPackage;

import org.eclipse.emf.common.notify.Notification;
import org.eclipse.emf.common.notify.NotificationChain;

import org.eclipse.emf.ecore.EClass;
import org.eclipse.emf.ecore.InternalEObject;

import org.eclipse.emf.ecore.impl.ENotificationImpl;
import org.eclipse.emf.ecore.impl.MinimalEObjectImpl;

/**
 * <!-- begin-user-doc -->
 * An implementation of the model object '<em><b>Assignment</b></em>'.
 * <!-- end-user-doc -->
 * <p>
 * The following features are implemented:
 * </p>
 * <ul>
 *   <li>{@link com.arsene.workflow.workflow.impl.AssignmentImpl#getVariable <em>Variable</em>}</li>
 *   <li>{@link com.arsene.workflow.workflow.impl.AssignmentImpl#getExpression <em>Expression</em>}</li>
 *   <li>{@link com.arsene.workflow.workflow.impl.AssignmentImpl#getMethodInvocation <em>Method Invocation</em>}</li>
 * </ul>
 *
 * @generated
 */
public class AssignmentImpl extends MinimalEObjectImpl.Container implements Assignment
{
  /**
   * The cached value of the '{@link #getVariable() <em>Variable</em>}' reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getVariable()
   * @generated
   * @ordered
   */
  protected Variable variable;

  /**
   * The cached value of the '{@link #getExpression() <em>Expression</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getExpression()
   * @generated
   * @ordered
   */
  protected Expression expression;

  /**
   * The cached value of the '{@link #getMethodInvocation() <em>Method Invocation</em>}' containment reference.
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @see #getMethodInvocation()
   * @generated
   * @ordered
   */
  protected Expression methodInvocation;

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  protected AssignmentImpl()
  {
    super();
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  protected EClass eStaticClass()
  {
    return WorkflowPackage.Literals.ASSIGNMENT;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Variable getVariable()
  {
    if (variable != null && variable.eIsProxy())
    {
      InternalEObject oldVariable = (InternalEObject)variable;
      variable = (Variable)eResolveProxy(oldVariable);
      if (variable != oldVariable)
      {
        if (eNotificationRequired())
          eNotify(new ENotificationImpl(this, Notification.RESOLVE, WorkflowPackage.ASSIGNMENT__VARIABLE, oldVariable, variable));
      }
    }
    return variable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public Variable basicGetVariable()
  {
    return variable;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setVariable(Variable newVariable)
  {
    Variable oldVariable = variable;
    variable = newVariable;
    if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, WorkflowPackage.ASSIGNMENT__VARIABLE, oldVariable, variable));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expression getExpression()
  {
    return expression;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetExpression(Expression newExpression, NotificationChain msgs)
  {
    Expression oldExpression = expression;
    expression = newExpression;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, WorkflowPackage.ASSIGNMENT__EXPRESSION, oldExpression, newExpression);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setExpression(Expression newExpression)
  {
    if (newExpression != expression)
    {
      NotificationChain msgs = null;
      if (expression != null)
        msgs = ((InternalEObject)expression).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - WorkflowPackage.ASSIGNMENT__EXPRESSION, null, msgs);
      if (newExpression != null)
        msgs = ((InternalEObject)newExpression).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - WorkflowPackage.ASSIGNMENT__EXPRESSION, null, msgs);
      msgs = basicSetExpression(newExpression, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, WorkflowPackage.ASSIGNMENT__EXPRESSION, newExpression, newExpression));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Expression getMethodInvocation()
  {
    return methodInvocation;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  public NotificationChain basicSetMethodInvocation(Expression newMethodInvocation, NotificationChain msgs)
  {
    Expression oldMethodInvocation = methodInvocation;
    methodInvocation = newMethodInvocation;
    if (eNotificationRequired())
    {
      ENotificationImpl notification = new ENotificationImpl(this, Notification.SET, WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION, oldMethodInvocation, newMethodInvocation);
      if (msgs == null) msgs = notification; else msgs.add(notification);
    }
    return msgs;
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void setMethodInvocation(Expression newMethodInvocation)
  {
    if (newMethodInvocation != methodInvocation)
    {
      NotificationChain msgs = null;
      if (methodInvocation != null)
        msgs = ((InternalEObject)methodInvocation).eInverseRemove(this, EOPPOSITE_FEATURE_BASE - WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION, null, msgs);
      if (newMethodInvocation != null)
        msgs = ((InternalEObject)newMethodInvocation).eInverseAdd(this, EOPPOSITE_FEATURE_BASE - WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION, null, msgs);
      msgs = basicSetMethodInvocation(newMethodInvocation, msgs);
      if (msgs != null) msgs.dispatch();
    }
    else if (eNotificationRequired())
      eNotify(new ENotificationImpl(this, Notification.SET, WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION, newMethodInvocation, newMethodInvocation));
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public NotificationChain eInverseRemove(InternalEObject otherEnd, int featureID, NotificationChain msgs)
  {
    switch (featureID)
    {
      case WorkflowPackage.ASSIGNMENT__EXPRESSION:
        return basicSetExpression(null, msgs);
      case WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION:
        return basicSetMethodInvocation(null, msgs);
    }
    return super.eInverseRemove(otherEnd, featureID, msgs);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public Object eGet(int featureID, boolean resolve, boolean coreType)
  {
    switch (featureID)
    {
      case WorkflowPackage.ASSIGNMENT__VARIABLE:
        if (resolve) return getVariable();
        return basicGetVariable();
      case WorkflowPackage.ASSIGNMENT__EXPRESSION:
        return getExpression();
      case WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION:
        return getMethodInvocation();
    }
    return super.eGet(featureID, resolve, coreType);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eSet(int featureID, Object newValue)
  {
    switch (featureID)
    {
      case WorkflowPackage.ASSIGNMENT__VARIABLE:
        setVariable((Variable)newValue);
        return;
      case WorkflowPackage.ASSIGNMENT__EXPRESSION:
        setExpression((Expression)newValue);
        return;
      case WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION:
        setMethodInvocation((Expression)newValue);
        return;
    }
    super.eSet(featureID, newValue);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public void eUnset(int featureID)
  {
    switch (featureID)
    {
      case WorkflowPackage.ASSIGNMENT__VARIABLE:
        setVariable((Variable)null);
        return;
      case WorkflowPackage.ASSIGNMENT__EXPRESSION:
        setExpression((Expression)null);
        return;
      case WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION:
        setMethodInvocation((Expression)null);
        return;
    }
    super.eUnset(featureID);
  }

  /**
   * <!-- begin-user-doc -->
   * <!-- end-user-doc -->
   * @generated
   */
  @Override
  public boolean eIsSet(int featureID)
  {
    switch (featureID)
    {
      case WorkflowPackage.ASSIGNMENT__VARIABLE:
        return variable != null;
      case WorkflowPackage.ASSIGNMENT__EXPRESSION:
        return expression != null;
      case WorkflowPackage.ASSIGNMENT__METHOD_INVOCATION:
        return methodInvocation != null;
    }
    return super.eIsSet(featureID);
  }

} //AssignmentImpl
