grammar com.arsene.query.QueryDsl with org.eclipse.xtext.common.Terminals

generate queryDsl "http://www.arsene.com/query/QueryDsl"

QueryModel:
	elements+=AbstractElement*;

AbstractElement:
	Variable | User  | Workspace | Project; // | Artifact;

User:
	'Query' 'User' '(' uservar=UserVar (',' uservars+=UserVar)* ')'
	'return' '[' field=UserField (',' fields+=UserField)*']'	
;

Workspace:
	'Query' 'Workspace' '(' spacevar=WorkspaceVar (',' spacevars+=WorkspaceVar)* ')'
	'return' '[' field=WorkspaceField (',' fields+=WorkspaceField)*']'	
;

Project:
	'Query' 'Project' '(' projectvar=ProjectVar (',' projectvars+=ProjectVar)* ')'
		'return' '[' field=ProjectField (',' fields+=ProjectField)*']'	
;

Artifact:
	'Query' 'Artifact' '(' 'type' ':' type=ArtifactType (',' artifactVars+=ArtifactVar)* ')'
//	('=>' (syntx=MicroSyntax | textSearch=FullTextSearch | filter=Filter | qm=QualityMetric | transfo=Transformable)?)*
;

//MicroSyntax:
//	exp=Expression
//;
//
//FullTextSearch:
//	'(' exp=Expression (',' exps+=Expression)* (',' 'min_match' ':' INT)? (',' op=Operator)? ')'
//;
//
//QualityMetric:
//	qExp=QExp (operator=Operator qExps=QExp )*
//;
//
//Transformable:
//	'(' ( param=TransParam ':' exp=Expression) (',' param=TransParam ':' exp=Expression)?
//;
//
//TransParam:
//	type=('id' | 'name')
//;
//
//QExp:
//	qAttr=Qattribute comp=Comparison n=INT 
//;
//
//Qattribute:
//	type=('qa' | 'qb' | 'qc' | 'qd' | 'qe' | 'qf' | 'qg' | 'qh' | 'qi' | 'qj' | 'qk' | 'ql' | 'qm' | 'qn' | 'qo' | 'qp' | 'qq' | 'qr' | 'qs' | 'qt' | 'qu' | 'qv' )
//;
//
//Operator:
//	op=('AND' | 'OR')
//;
//
//Filter:
//	(filterExp=FilterExp)+ (',' 'size' ':' comp=Comparison exp=Expression)
//;
//
//
//FilterExp:
//	filterkey=FilterKeyword ':' exp=Expression
//;
//
//Comparison:
//	type=('==' | '>=' | '<=' | '<' | '>')
//;
//
//FilterKeyword:
//	type=('gte'| 'lte' | 'lt' | 'gt')
//;
// ------------------------------------------------------------

ArtifactType:
	typeName=('Model' | 'Metamodel' | 'Dsl');

// Object vars
UserVar:
	UserParam ':' exp=Expression;
	

WorkspaceVar:
	WorkspaceParam ':' exp=Expression;	
	
ProjectVar:
	ProjectParam ':' exp=Expression;	
	
ArtifactVar:
	ArtifactParam ':' exp=Expression;			


// Object fields
UserField:
	typeName=( 'id'|'username' | 'email' | 'createdAt' | 'updatedAt')
;

WorkspaceField:
	typeName=( 'id'|'name' | 'description' | 'owner' | 'projects' | 'createdAt' | 'updatedAt')
;

ProjectField:
	typeName=( 'id'|'name' | 'description' | 'user' | 'workspace' | 'sharedUser' | 'comments' |'createdAt' | 'updatedAt')
;

//ArtifactField:
//	MetamodelField | ModelField | DslField
//	;
//
//MetamodelField:
//	typeName=( 'id'|'accessControl' | 'description' | 'ePackage' |'ext' | 'involvedOperations'| 'metrics'| 'models' | 'license' | 'metamodel' |'name' | 'project' | 'size' | 'storageUrl' | 'type' | 'unique_name' | 'createdAt' | 'updatedAt')
//;
//
//ModelField:
//	typeName=( 'id'|'accessControl' | 'description' | 'ext' | 'involvedOperations' | 'license' | 'metamodel' |'name' | 'project' | 'size' | 'storageUrl' | 'type' | 'unique_name' | 'createdAt' | 'updatedAt')
//;
//
//DslField:
//	typeName=( 'id'|'accessControl' | 'description' | 'ext' | 'involvedOperations' | 'license' |'name' | 'project' | 'size' | 'storageUrl' | 'type' | 'unique_name' | 'createdAt' | 'updatedAt')
//;

// Object Params 
UserParam:
	typeName=('username' | 'userId' | 'email');
	
WorkspaceParam:
	typeName=('owner' | 'workspaceId');	
	
ProjectParam:
	typeName=('username' | 'userId' | 'workspaceId' | 'projectId');	
	
ArtifactParam:
	MetamodelParam; // | ModelParam | DslParam;	
	
MetamodelParam:
	typeName=('id' | 'accessControl' | 'description' | 'eClassifier' | 'ePackageName'| 'ePackageNsURI'| 'ePackageNsPrefix' | 'ext' | 'operation' |'quality-metric'|'model'| 'name'| 'unique-name' | 'project'| 'size' );		

//ModelParam:
//	typeName=('id' | 'accessControl' | 'description' | 'ext' | 'operation' | 'name'| 'unique-name' | 'project'| 'size' );		
//
//DslParam:
//	typeName=('id' | 'accessControl' | 'description' | 'ext' | 'operation' | 'name'| 'unique-name' | 'project'| 'size' );	

//--------------------------------------------
Variable:
	'var' name=ID '=' expression=Expression;

Expression:
	{IntConstant} value=INT |
	{StringConstant} value=STRING |
	{BoolConstant} value=('true' | 'false') |
	{VariableRef} variable=[Variable];
	
	
	
	