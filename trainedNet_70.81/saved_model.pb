ô+
º
B
AddV2
x"T
y"T
z"T"
Ttype:
2	
B
AssignVariableOp
resource
value"dtype"
dtypetype
¼
AvgPool

value"T
output"T"
ksize	list(int)(0"
strides	list(int)(0""
paddingstring:
SAMEVALID"-
data_formatstringNHWC:
NHWCNCHW"
Ttype:
2
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype

Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

ú
FusedBatchNormV3
x"T

scale"U
offset"U	
mean"U
variance"U
y"T

batch_mean"U
batch_variance"U
reserve_space_1"U
reserve_space_2"U
reserve_space_3"U"
Ttype:
2"
Utype:
2"
epsilonfloat%·Ñ8"&
exponential_avg_factorfloat%  ?";
data_formatstringNHWC:
NHWCNCHWNDHWCNCDHW"
is_trainingbool(
.
Identity

input"T
output"T"	
Ttype
.
Log1p
x"T
y"T"
Ttype:

2
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	

MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(
=
Mul
x"T
y"T
z"T"
Ttype:
2	
0
Neg
x"T
y"T"
Ttype:
2
	

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype
>
RealDiv
x"T
y"T
z"T"
Ttype:
2	
E
Relu
features"T
activations"T"
Ttype:
2	
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
.
Rsqrt
x"T
y"T"
Ttype:

2
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
?
Select
	condition

t"T
e"T
output"T"	
Ttype
H
ShardedFilename
basename	
shard

num_shards
filename
9
Softmax
logits"T
softmax"T"
Ttype:
2
¾
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
@
StaticRegexFullMatch	
input

output
"
patternstring
ö
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
;
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2

VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 "serve*2.4.12unknown8%
d
VariableVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable
]
Variable/Read/ReadVariableOpReadVariableOpVariable*
_output_shapes
: *
dtype0
h

Variable_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_1
a
Variable_1/Read/ReadVariableOpReadVariableOp
Variable_1*
_output_shapes
: *
dtype0
h

Variable_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_2
a
Variable_2/Read/ReadVariableOpReadVariableOp
Variable_2*
_output_shapes
: *
dtype0
h

Variable_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_3
a
Variable_3/Read/ReadVariableOpReadVariableOp
Variable_3*
_output_shapes
: *
dtype0
h

Variable_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_4
a
Variable_4/Read/ReadVariableOpReadVariableOp
Variable_4*
_output_shapes
: *
dtype0
h

Variable_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_5
a
Variable_5/Read/ReadVariableOpReadVariableOp
Variable_5*
_output_shapes
: *
dtype0
h

Variable_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_6
a
Variable_6/Read/ReadVariableOpReadVariableOp
Variable_6*
_output_shapes
: *
dtype0
h

Variable_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_7
a
Variable_7/Read/ReadVariableOpReadVariableOp
Variable_7*
_output_shapes
: *
dtype0
h

Variable_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_8
a
Variable_8/Read/ReadVariableOpReadVariableOp
Variable_8*
_output_shapes
: *
dtype0
h

Variable_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Variable_9
a
Variable_9/Read/ReadVariableOpReadVariableOp
Variable_9*
_output_shapes
: *
dtype0
j
Variable_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_10
c
Variable_10/Read/ReadVariableOpReadVariableOpVariable_10*
_output_shapes
: *
dtype0
j
Variable_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_11
c
Variable_11/Read/ReadVariableOpReadVariableOpVariable_11*
_output_shapes
: *
dtype0
j
Variable_12VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_12
c
Variable_12/Read/ReadVariableOpReadVariableOpVariable_12*
_output_shapes
: *
dtype0
j
Variable_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_13
c
Variable_13/Read/ReadVariableOpReadVariableOpVariable_13*
_output_shapes
: *
dtype0
j
Variable_14VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_14
c
Variable_14/Read/ReadVariableOpReadVariableOpVariable_14*
_output_shapes
: *
dtype0
j
Variable_15VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_15
c
Variable_15/Read/ReadVariableOpReadVariableOpVariable_15*
_output_shapes
: *
dtype0
j
Variable_16VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_16
c
Variable_16/Read/ReadVariableOpReadVariableOpVariable_16*
_output_shapes
: *
dtype0
j
Variable_17VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_17
c
Variable_17/Read/ReadVariableOpReadVariableOpVariable_17*
_output_shapes
: *
dtype0
j
Variable_18VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_18
c
Variable_18/Read/ReadVariableOpReadVariableOpVariable_18*
_output_shapes
: *
dtype0
j
Variable_19VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_19
c
Variable_19/Read/ReadVariableOpReadVariableOpVariable_19*
_output_shapes
: *
dtype0
j
Variable_20VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameVariable_20
c
Variable_20/Read/ReadVariableOpReadVariableOpVariable_20*
_output_shapes
: *
dtype0
~
conv2d/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/kernel
w
!conv2d/kernel/Read/ReadVariableOpReadVariableOpconv2d/kernel*&
_output_shapes
:*
dtype0
n
conv2d/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d/bias
g
conv2d/bias/Read/ReadVariableOpReadVariableOpconv2d/bias*
_output_shapes
:*
dtype0

conv2d_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:* 
shared_nameconv2d_1/kernel
{
#conv2d_1/kernel/Read/ReadVariableOpReadVariableOpconv2d_1/kernel*&
_output_shapes
:*
dtype0
r
conv2d_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_nameconv2d_1/bias
k
!conv2d_1/bias/Read/ReadVariableOpReadVariableOpconv2d_1/bias*
_output_shapes
:*
dtype0

batch_normalization/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:**
shared_namebatch_normalization/gamma

-batch_normalization/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization/gamma*
_output_shapes
:*
dtype0

batch_normalization/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*)
shared_namebatch_normalization/beta

,batch_normalization/beta/Read/ReadVariableOpReadVariableOpbatch_normalization/beta*
_output_shapes
:*
dtype0

batch_normalization/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!batch_normalization/moving_mean

3batch_normalization/moving_mean/Read/ReadVariableOpReadVariableOpbatch_normalization/moving_mean*
_output_shapes
:*
dtype0

#batch_normalization/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*4
shared_name%#batch_normalization/moving_variance

7batch_normalization/moving_variance/Read/ReadVariableOpReadVariableOp#batch_normalization/moving_variance*
_output_shapes
:*
dtype0

batch_normalization_1/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_1/gamma

/batch_normalization_1/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_1/gamma*
_output_shapes
:*
dtype0

batch_normalization_1/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_1/beta

.batch_normalization_1/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_1/beta*
_output_shapes
:*
dtype0

!batch_normalization_1/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_1/moving_mean

5batch_normalization_1/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_1/moving_mean*
_output_shapes
:*
dtype0
¢
%batch_normalization_1/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_1/moving_variance

9batch_normalization_1/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_1/moving_variance*
_output_shapes
:*
dtype0
v
dense/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense/kernel
o
 dense/kernel/Read/ReadVariableOpReadVariableOpdense/kernel* 
_output_shapes
:
*
dtype0
m

dense/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_name
dense/bias
f
dense/bias/Read/ReadVariableOpReadVariableOp
dense/bias*
_output_shapes	
:*
dtype0

batch_normalization_2/gammaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*,
shared_namebatch_normalization_2/gamma

/batch_normalization_2/gamma/Read/ReadVariableOpReadVariableOpbatch_normalization_2/gamma*
_output_shapes	
:*
dtype0

batch_normalization_2/betaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*+
shared_namebatch_normalization_2/beta

.batch_normalization_2/beta/Read/ReadVariableOpReadVariableOpbatch_normalization_2/beta*
_output_shapes	
:*
dtype0

!batch_normalization_2/moving_meanVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!batch_normalization_2/moving_mean

5batch_normalization_2/moving_mean/Read/ReadVariableOpReadVariableOp!batch_normalization_2/moving_mean*
_output_shapes	
:*
dtype0
£
%batch_normalization_2/moving_varianceVarHandleOp*
_output_shapes
: *
dtype0*
shape:*6
shared_name'%batch_normalization_2/moving_variance

9batch_normalization_2/moving_variance/Read/ReadVariableOpReadVariableOp%batch_normalization_2/moving_variance*
_output_shapes	
:*
dtype0
s
p_re_lu/alphaVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namep_re_lu/alpha
l
!p_re_lu/alpha/Read/ReadVariableOpReadVariableOpp_re_lu/alpha*
_output_shapes	
:*
dtype0
y
dense_1/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	*
dtype0
p
dense_1/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
r
Adam/Variable/mVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/Variable/m
k
#Adam/Variable/m/Read/ReadVariableOpReadVariableOpAdam/Variable/m*
_output_shapes
: *
dtype0
v
Adam/Variable/m_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_1
o
%Adam/Variable/m_1/Read/ReadVariableOpReadVariableOpAdam/Variable/m_1*
_output_shapes
: *
dtype0
v
Adam/Variable/m_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_2
o
%Adam/Variable/m_2/Read/ReadVariableOpReadVariableOpAdam/Variable/m_2*
_output_shapes
: *
dtype0
v
Adam/Variable/m_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_3
o
%Adam/Variable/m_3/Read/ReadVariableOpReadVariableOpAdam/Variable/m_3*
_output_shapes
: *
dtype0
v
Adam/Variable/m_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_4
o
%Adam/Variable/m_4/Read/ReadVariableOpReadVariableOpAdam/Variable/m_4*
_output_shapes
: *
dtype0
v
Adam/Variable/m_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_5
o
%Adam/Variable/m_5/Read/ReadVariableOpReadVariableOpAdam/Variable/m_5*
_output_shapes
: *
dtype0
v
Adam/Variable/m_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_6
o
%Adam/Variable/m_6/Read/ReadVariableOpReadVariableOpAdam/Variable/m_6*
_output_shapes
: *
dtype0
v
Adam/Variable/m_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_7
o
%Adam/Variable/m_7/Read/ReadVariableOpReadVariableOpAdam/Variable/m_7*
_output_shapes
: *
dtype0
v
Adam/Variable/m_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_8
o
%Adam/Variable/m_8/Read/ReadVariableOpReadVariableOpAdam/Variable/m_8*
_output_shapes
: *
dtype0
v
Adam/Variable/m_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/m_9
o
%Adam/Variable/m_9/Read/ReadVariableOpReadVariableOpAdam/Variable/m_9*
_output_shapes
: *
dtype0
x
Adam/Variable/m_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_10
q
&Adam/Variable/m_10/Read/ReadVariableOpReadVariableOpAdam/Variable/m_10*
_output_shapes
: *
dtype0
x
Adam/Variable/m_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_11
q
&Adam/Variable/m_11/Read/ReadVariableOpReadVariableOpAdam/Variable/m_11*
_output_shapes
: *
dtype0
x
Adam/Variable/m_12VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_12
q
&Adam/Variable/m_12/Read/ReadVariableOpReadVariableOpAdam/Variable/m_12*
_output_shapes
: *
dtype0
x
Adam/Variable/m_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_13
q
&Adam/Variable/m_13/Read/ReadVariableOpReadVariableOpAdam/Variable/m_13*
_output_shapes
: *
dtype0
x
Adam/Variable/m_14VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_14
q
&Adam/Variable/m_14/Read/ReadVariableOpReadVariableOpAdam/Variable/m_14*
_output_shapes
: *
dtype0
x
Adam/Variable/m_15VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_15
q
&Adam/Variable/m_15/Read/ReadVariableOpReadVariableOpAdam/Variable/m_15*
_output_shapes
: *
dtype0
x
Adam/Variable/m_16VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_16
q
&Adam/Variable/m_16/Read/ReadVariableOpReadVariableOpAdam/Variable/m_16*
_output_shapes
: *
dtype0
x
Adam/Variable/m_17VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_17
q
&Adam/Variable/m_17/Read/ReadVariableOpReadVariableOpAdam/Variable/m_17*
_output_shapes
: *
dtype0
x
Adam/Variable/m_18VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_18
q
&Adam/Variable/m_18/Read/ReadVariableOpReadVariableOpAdam/Variable/m_18*
_output_shapes
: *
dtype0
x
Adam/Variable/m_19VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_19
q
&Adam/Variable/m_19/Read/ReadVariableOpReadVariableOpAdam/Variable/m_19*
_output_shapes
: *
dtype0
x
Adam/Variable/m_20VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/m_20
q
&Adam/Variable/m_20/Read/ReadVariableOpReadVariableOpAdam/Variable/m_20*
_output_shapes
: *
dtype0

Adam/conv2d/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/m

(Adam/conv2d/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/m*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/m
u
&Adam/conv2d/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/m*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/m

*Adam/conv2d_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/m*&
_output_shapes
:*
dtype0

Adam/conv2d_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/m
y
(Adam/conv2d_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/m*
_output_shapes
:*
dtype0

 Adam/batch_normalization/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/m

4Adam/batch_normalization/gamma/m/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/m*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/m

3Adam/batch_normalization/beta/m/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/m*
_output_shapes
:*
dtype0

"Adam/batch_normalization_1/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/m

6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/m*
_output_shapes
:*
dtype0

!Adam/batch_normalization_1/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/m

5Adam/batch_normalization_1/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/m*
_output_shapes
:*
dtype0

Adam/dense/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/m
}
'Adam/dense/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/m* 
_output_shapes
:
*
dtype0
{
Adam/dense/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/m
t
%Adam/dense/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense/bias/m*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/m

6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/m*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/m

5Adam/batch_normalization_2/beta/m/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/m*
_output_shapes	
:*
dtype0

Adam/p_re_lu/alpha/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/p_re_lu/alpha/m
z
(Adam/p_re_lu/alpha/m/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/m*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_1/kernel/m

)Adam/dense_1/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/m*
_output_shapes
:	*
dtype0
~
Adam/dense_1/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/m
w
'Adam/dense_1/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/m*
_output_shapes
:*
dtype0
r
Adam/Variable/vVarHandleOp*
_output_shapes
: *
dtype0*
shape: * 
shared_nameAdam/Variable/v
k
#Adam/Variable/v/Read/ReadVariableOpReadVariableOpAdam/Variable/v*
_output_shapes
: *
dtype0
v
Adam/Variable/v_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_1
o
%Adam/Variable/v_1/Read/ReadVariableOpReadVariableOpAdam/Variable/v_1*
_output_shapes
: *
dtype0
v
Adam/Variable/v_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_2
o
%Adam/Variable/v_2/Read/ReadVariableOpReadVariableOpAdam/Variable/v_2*
_output_shapes
: *
dtype0
v
Adam/Variable/v_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_3
o
%Adam/Variable/v_3/Read/ReadVariableOpReadVariableOpAdam/Variable/v_3*
_output_shapes
: *
dtype0
v
Adam/Variable/v_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_4
o
%Adam/Variable/v_4/Read/ReadVariableOpReadVariableOpAdam/Variable/v_4*
_output_shapes
: *
dtype0
v
Adam/Variable/v_5VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_5
o
%Adam/Variable/v_5/Read/ReadVariableOpReadVariableOpAdam/Variable/v_5*
_output_shapes
: *
dtype0
v
Adam/Variable/v_6VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_6
o
%Adam/Variable/v_6/Read/ReadVariableOpReadVariableOpAdam/Variable/v_6*
_output_shapes
: *
dtype0
v
Adam/Variable/v_7VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_7
o
%Adam/Variable/v_7/Read/ReadVariableOpReadVariableOpAdam/Variable/v_7*
_output_shapes
: *
dtype0
v
Adam/Variable/v_8VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_8
o
%Adam/Variable/v_8/Read/ReadVariableOpReadVariableOpAdam/Variable/v_8*
_output_shapes
: *
dtype0
v
Adam/Variable/v_9VarHandleOp*
_output_shapes
: *
dtype0*
shape: *"
shared_nameAdam/Variable/v_9
o
%Adam/Variable/v_9/Read/ReadVariableOpReadVariableOpAdam/Variable/v_9*
_output_shapes
: *
dtype0
x
Adam/Variable/v_10VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_10
q
&Adam/Variable/v_10/Read/ReadVariableOpReadVariableOpAdam/Variable/v_10*
_output_shapes
: *
dtype0
x
Adam/Variable/v_11VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_11
q
&Adam/Variable/v_11/Read/ReadVariableOpReadVariableOpAdam/Variable/v_11*
_output_shapes
: *
dtype0
x
Adam/Variable/v_12VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_12
q
&Adam/Variable/v_12/Read/ReadVariableOpReadVariableOpAdam/Variable/v_12*
_output_shapes
: *
dtype0
x
Adam/Variable/v_13VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_13
q
&Adam/Variable/v_13/Read/ReadVariableOpReadVariableOpAdam/Variable/v_13*
_output_shapes
: *
dtype0
x
Adam/Variable/v_14VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_14
q
&Adam/Variable/v_14/Read/ReadVariableOpReadVariableOpAdam/Variable/v_14*
_output_shapes
: *
dtype0
x
Adam/Variable/v_15VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_15
q
&Adam/Variable/v_15/Read/ReadVariableOpReadVariableOpAdam/Variable/v_15*
_output_shapes
: *
dtype0
x
Adam/Variable/v_16VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_16
q
&Adam/Variable/v_16/Read/ReadVariableOpReadVariableOpAdam/Variable/v_16*
_output_shapes
: *
dtype0
x
Adam/Variable/v_17VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_17
q
&Adam/Variable/v_17/Read/ReadVariableOpReadVariableOpAdam/Variable/v_17*
_output_shapes
: *
dtype0
x
Adam/Variable/v_18VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_18
q
&Adam/Variable/v_18/Read/ReadVariableOpReadVariableOpAdam/Variable/v_18*
_output_shapes
: *
dtype0
x
Adam/Variable/v_19VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_19
q
&Adam/Variable/v_19/Read/ReadVariableOpReadVariableOpAdam/Variable/v_19*
_output_shapes
: *
dtype0
x
Adam/Variable/v_20VarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/Variable/v_20
q
&Adam/Variable/v_20/Read/ReadVariableOpReadVariableOpAdam/Variable/v_20*
_output_shapes
: *
dtype0

Adam/conv2d/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d/kernel/v

(Adam/conv2d/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/kernel/v*&
_output_shapes
:*
dtype0
|
Adam/conv2d/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/conv2d/bias/v
u
&Adam/conv2d/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d/bias/v*
_output_shapes
:*
dtype0

Adam/conv2d_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*'
shared_nameAdam/conv2d_1/kernel/v

*Adam/conv2d_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/kernel/v*&
_output_shapes
:*
dtype0

Adam/conv2d_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/conv2d_1/bias/v
y
(Adam/conv2d_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_1/bias/v*
_output_shapes
:*
dtype0

 Adam/batch_normalization/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*1
shared_name" Adam/batch_normalization/gamma/v

4Adam/batch_normalization/gamma/v/Read/ReadVariableOpReadVariableOp Adam/batch_normalization/gamma/v*
_output_shapes
:*
dtype0

Adam/batch_normalization/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*0
shared_name!Adam/batch_normalization/beta/v

3Adam/batch_normalization/beta/v/Read/ReadVariableOpReadVariableOpAdam/batch_normalization/beta/v*
_output_shapes
:*
dtype0

"Adam/batch_normalization_1/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_1/gamma/v

6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_1/gamma/v*
_output_shapes
:*
dtype0

!Adam/batch_normalization_1/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_1/beta/v

5Adam/batch_normalization_1/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_1/beta/v*
_output_shapes
:*
dtype0

Adam/dense/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*$
shared_nameAdam/dense/kernel/v
}
'Adam/dense/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense/kernel/v* 
_output_shapes
:
*
dtype0
{
Adam/dense/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*"
shared_nameAdam/dense/bias/v
t
%Adam/dense/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense/bias/v*
_output_shapes	
:*
dtype0

"Adam/batch_normalization_2/gamma/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*3
shared_name$"Adam/batch_normalization_2/gamma/v

6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOpReadVariableOp"Adam/batch_normalization_2/gamma/v*
_output_shapes	
:*
dtype0

!Adam/batch_normalization_2/beta/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*2
shared_name#!Adam/batch_normalization_2/beta/v

5Adam/batch_normalization_2/beta/v/Read/ReadVariableOpReadVariableOp!Adam/batch_normalization_2/beta/v*
_output_shapes	
:*
dtype0

Adam/p_re_lu/alpha/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/p_re_lu/alpha/v
z
(Adam/p_re_lu/alpha/v/Read/ReadVariableOpReadVariableOpAdam/p_re_lu/alpha/v*
_output_shapes	
:*
dtype0

Adam/dense_1/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_1/kernel/v

)Adam/dense_1/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/kernel/v*
_output_shapes
:	*
dtype0
~
Adam/dense_1/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_1/bias/v
w
'Adam/dense_1/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_1/bias/v*
_output_shapes
:*
dtype0

NoOpNoOp
ÅÔ
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ÿÓ
valueôÓBðÓ BèÓ
¶
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer_with_weights-5
layer-27
layer_with_weights-6
layer-28
layer_with_weights-7
layer-29
layer-30
 layer_with_weights-8
 layer-31
!	optimizer
"
signatures
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
%
#(_self_saveable_object_factories


)mu_t_1

*mu_t_2

+mu_t_3

,mu_t_4
-	sigma_t_1
.	sigma_t_2
/	sigma_t_3
0	sigma_t_4
1	sigma_t_5
2	sigma_t_6
3	sigma_t_7
4	sigma_t_8

5mu_p_1

6mu_p_2

7mu_p_3
8	sigma_p_1
9	sigma_p_2
:	sigma_p_3
;	sigma_p_4
<	sigma_p_5
=	sigma_p_6
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api


Ckernel
Dbias
#E_self_saveable_object_factories
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api


Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
¼
Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
#V_self_saveable_object_factories
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
¼
[axis
	\gamma
]beta
^moving_mean
_moving_variance
#`_self_saveable_object_factories
a	variables
btrainable_variables
cregularization_losses
d	keras_api
4
#e_self_saveable_object_factories
f	keras_api
4
#g_self_saveable_object_factories
h	keras_api
4
#i_self_saveable_object_factories
j	keras_api
4
#k_self_saveable_object_factories
l	keras_api
w
#m_self_saveable_object_factories
n	variables
otrainable_variables
pregularization_losses
q	keras_api
w
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
w
#w_self_saveable_object_factories
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
x
#|_self_saveable_object_factories
}	variables
~trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
|
$_self_saveable_object_factories
 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
|
$¤_self_saveable_object_factories
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
|
$©_self_saveable_object_factories
ª	variables
«trainable_variables
¬regularization_losses
­	keras_api
|
$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
|
$³_self_saveable_object_factories
´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
|
$¸_self_saveable_object_factories
¹	variables
ºtrainable_variables
»regularization_losses
¼	keras_api
|
$½_self_saveable_object_factories
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api

Âkernel
	Ãbias
$Ä_self_saveable_object_factories
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
Æ
	Éaxis

Êgamma
	Ëbeta
Ìmoving_mean
Ímoving_variance
$Î_self_saveable_object_factories
Ï	variables
Ðtrainable_variables
Ñregularization_losses
Ò	keras_api


Óalpha
$Ô_self_saveable_object_factories
Õ	variables
Ötrainable_variables
×regularization_losses
Ø	keras_api
|
$Ù_self_saveable_object_factories
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api

Þkernel
	ßbias
$à_self_saveable_object_factories
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api

	åiter
æbeta_1
çbeta_2

èdecay)m*m+m,m-m.m/m0m1m2m3m4m5m6m7m8m9m:m;m<m=mCmDmJmKmRmSm\m]m	Âm	Ãm	Êm	Ëm 	Óm¡	Þm¢	ßm£)v¤*v¥+v¦,v§-v¨.v©/vª0v«1v¬2v­3v®4v¯5v°6v±7v²8v³9v´:vµ;v¶<v·=v¸Cv¹DvºJv»Kv¼Rv½Sv¾\v¿]vÀ	ÂvÁ	ÃvÂ	ÊvÃ	ËvÄ	ÓvÅ	ÞvÆ	ßvÇ
 
 
Ï
)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20
C21
D22
J23
K24
R25
S26
T27
U28
\29
]30
^31
_32
Â33
Ã34
Ê35
Ë36
Ì37
Í38
Ó39
Þ40
ß41
 

)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20
C21
D22
J23
K24
R25
S26
\27
]28
Â29
Ã30
Ê31
Ë32
Ó33
Þ34
ß35
²
 élayer_regularization_losses
$	variables
êmetrics
ëlayer_metrics
%regularization_losses
&trainable_variables
ìnon_trainable_variables
ílayers
 
TR
VARIABLE_VALUEVariable6layer_with_weights-0/mu_t_1/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUE
Variable_16layer_with_weights-0/mu_t_2/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUE
Variable_26layer_with_weights-0/mu_t_3/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUE
Variable_36layer_with_weights-0/mu_t_4/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_49layer_with_weights-0/sigma_t_1/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_59layer_with_weights-0/sigma_t_2/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_69layer_with_weights-0/sigma_t_3/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_79layer_with_weights-0/sigma_t_4/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_89layer_with_weights-0/sigma_t_5/.ATTRIBUTES/VARIABLE_VALUE
YW
VARIABLE_VALUE
Variable_99layer_with_weights-0/sigma_t_6/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_109layer_with_weights-0/sigma_t_7/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_119layer_with_weights-0/sigma_t_8/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEVariable_126layer_with_weights-0/mu_p_1/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEVariable_136layer_with_weights-0/mu_p_2/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEVariable_146layer_with_weights-0/mu_p_3/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_159layer_with_weights-0/sigma_p_1/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_169layer_with_weights-0/sigma_p_2/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_179layer_with_weights-0/sigma_p_3/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_189layer_with_weights-0/sigma_p_4/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_199layer_with_weights-0/sigma_p_5/.ATTRIBUTES/VARIABLE_VALUE
ZX
VARIABLE_VALUEVariable_209layer_with_weights-0/sigma_p_6/.ATTRIBUTES/VARIABLE_VALUE
 

)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20

)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20
 
²
?	variables
@trainable_variables
îmetrics
ïlayer_metrics
Aregularization_losses
 ðlayer_regularization_losses
ñnon_trainable_variables
òlayers
YW
VARIABLE_VALUEconv2d/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE
US
VARIABLE_VALUEconv2d/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE
 

C0
D1

C0
D1
 
²
F	variables
Gtrainable_variables
ómetrics
ôlayer_metrics
Hregularization_losses
 õlayer_regularization_losses
önon_trainable_variables
÷layers
[Y
VARIABLE_VALUEconv2d_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE
WU
VARIABLE_VALUEconv2d_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE
 

J0
K1

J0
K1
 
²
M	variables
Ntrainable_variables
ømetrics
ùlayer_metrics
Oregularization_losses
 úlayer_regularization_losses
ûnon_trainable_variables
ülayers
 
db
VARIABLE_VALUEbatch_normalization/gamma5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUE
b`
VARIABLE_VALUEbatch_normalization/beta4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUE
pn
VARIABLE_VALUEbatch_normalization/moving_mean;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUE#batch_normalization/moving_variance?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

R0
S1
T2
U3

R0
S1
 
²
W	variables
Xtrainable_variables
ýmetrics
þlayer_metrics
Yregularization_losses
 ÿlayer_regularization_losses
non_trainable_variables
layers
 
fd
VARIABLE_VALUEbatch_normalization_1/gamma5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_1/beta4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_1/moving_mean;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_1/moving_variance?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 

\0
]1
^2
_3

\0
]1
 
²
a	variables
btrainable_variables
metrics
layer_metrics
cregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
 
 
 
 
 
 
 
 
²
n	variables
otrainable_variables
metrics
layer_metrics
pregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
²
s	variables
ttrainable_variables
metrics
layer_metrics
uregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
²
x	variables
ytrainable_variables
metrics
layer_metrics
zregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
²
}	variables
~trainable_variables
metrics
layer_metrics
regularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
µ
	variables
trainable_variables
metrics
layer_metrics
regularization_losses
 layer_regularization_losses
non_trainable_variables
layers
 
 
 
 
µ
	variables
trainable_variables
 metrics
¡layer_metrics
regularization_losses
 ¢layer_regularization_losses
£non_trainable_variables
¤layers
 
 
 
 
µ
	variables
trainable_variables
¥metrics
¦layer_metrics
regularization_losses
 §layer_regularization_losses
¨non_trainable_variables
©layers
 
 
 
 
µ
	variables
trainable_variables
ªmetrics
«layer_metrics
regularization_losses
 ¬layer_regularization_losses
­non_trainable_variables
®layers
 
 
 
 
µ
	variables
trainable_variables
¯metrics
°layer_metrics
regularization_losses
 ±layer_regularization_losses
²non_trainable_variables
³layers
 
 
 
 
µ
	variables
trainable_variables
´metrics
µlayer_metrics
regularization_losses
 ¶layer_regularization_losses
·non_trainable_variables
¸layers
 
 
 
 
µ
 	variables
¡trainable_variables
¹metrics
ºlayer_metrics
¢regularization_losses
 »layer_regularization_losses
¼non_trainable_variables
½layers
 
 
 
 
µ
¥	variables
¦trainable_variables
¾metrics
¿layer_metrics
§regularization_losses
 Àlayer_regularization_losses
Ánon_trainable_variables
Âlayers
 
 
 
 
µ
ª	variables
«trainable_variables
Ãmetrics
Älayer_metrics
¬regularization_losses
 Ålayer_regularization_losses
Ænon_trainable_variables
Çlayers
 
 
 
 
µ
¯	variables
°trainable_variables
Èmetrics
Élayer_metrics
±regularization_losses
 Êlayer_regularization_losses
Ënon_trainable_variables
Ìlayers
 
 
 
 
µ
´	variables
µtrainable_variables
Ímetrics
Îlayer_metrics
¶regularization_losses
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñlayers
 
 
 
 
µ
¹	variables
ºtrainable_variables
Òmetrics
Ólayer_metrics
»regularization_losses
 Ôlayer_regularization_losses
Õnon_trainable_variables
Ölayers
 
 
 
 
µ
¾	variables
¿trainable_variables
×metrics
Ølayer_metrics
Àregularization_losses
 Ùlayer_regularization_losses
Únon_trainable_variables
Ûlayers
XV
VARIABLE_VALUEdense/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE
TR
VARIABLE_VALUE
dense/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Â0
Ã1

Â0
Ã1
 
µ
Å	variables
Ætrainable_variables
Ümetrics
Ýlayer_metrics
Çregularization_losses
 Þlayer_regularization_losses
ßnon_trainable_variables
àlayers
 
fd
VARIABLE_VALUEbatch_normalization_2/gamma5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUE
db
VARIABLE_VALUEbatch_normalization_2/beta4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUE
rp
VARIABLE_VALUE!batch_normalization_2/moving_mean;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUE%batch_normalization_2/moving_variance?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUE
 
 
Ê0
Ë1
Ì2
Í3

Ê0
Ë1
 
µ
Ï	variables
Ðtrainable_variables
ámetrics
âlayer_metrics
Ñregularization_losses
 ãlayer_regularization_losses
änon_trainable_variables
ålayers
XV
VARIABLE_VALUEp_re_lu/alpha5layer_with_weights-7/alpha/.ATTRIBUTES/VARIABLE_VALUE
 

Ó0

Ó0
 
µ
Õ	variables
Ötrainable_variables
æmetrics
çlayer_metrics
×regularization_losses
 èlayer_regularization_losses
énon_trainable_variables
êlayers
 
 
 
 
µ
Ú	variables
Ûtrainable_variables
ëmetrics
ìlayer_metrics
Üregularization_losses
 ílayer_regularization_losses
înon_trainable_variables
ïlayers
ZX
VARIABLE_VALUEdense_1/kernel6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUE
VT
VARIABLE_VALUEdense_1/bias4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUE
 

Þ0
ß1

Þ0
ß1
 
µ
á	variables
âtrainable_variables
ðmetrics
ñlayer_metrics
ãregularization_losses
 òlayer_regularization_losses
ónon_trainable_variables
ôlayers
HF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE
LJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE
JH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE
 

õ0
ö1
 
,
T0
U1
^2
_3
Ì4
Í5
ö
0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

T0
U1
 
 
 
 

^0
_1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 

Ì0
Í1
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
 
8

÷total

øcount
ù	variables
ú	keras_api
I

ûtotal

ücount
ý
_fn_kwargs
þ	variables
ÿ	keras_api
OM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE
OM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE

÷0
ø1

ù	variables
QO
VARIABLE_VALUEtotal_14keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE
QO
VARIABLE_VALUEcount_14keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE
 

û0
ü1

þ	variables
wu
VARIABLE_VALUEAdam/Variable/mRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/m_1Rlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/m_2Rlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/m_3Rlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_4Ulayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_5Ulayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_6Ulayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_7Ulayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_8Ulayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/m_9Ulayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_10Ulayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_11Ulayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/m_12Rlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/m_13Rlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/m_14Rlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_15Ulayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_16Ulayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_17Ulayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_18Ulayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_19Ulayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/m_20Ulayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/mQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/mPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/mQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/mPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/mQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/mPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/p_re_lu/alpha/mQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/mRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/mPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/Variable/vRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/v_1Rlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/v_2Rlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/Variable/v_3Rlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_4Ulayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_5Ulayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_6Ulayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_7Ulayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_8Ulayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/Variable/v_9Ulayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_10Ulayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_11Ulayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/v_12Rlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/v_13Rlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/Variable/v_14Rlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_15Ulayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_16Ulayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_17Ulayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_18Ulayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_19Ulayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/Variable/v_20Ulayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
|z
VARIABLE_VALUEAdam/conv2d/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
xv
VARIABLE_VALUEAdam/conv2d/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
~|
VARIABLE_VALUEAdam/conv2d_1/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
zx
VARIABLE_VALUEAdam/conv2d_1/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE Adam/batch_normalization/gamma/vQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUEAdam/batch_normalization/beta/vPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_1/gamma/vQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_1/beta/vPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/dense/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
wu
VARIABLE_VALUEAdam/dense/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE"Adam/batch_normalization_2/gamma/vQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

VARIABLE_VALUE!Adam/batch_normalization_2/beta/vPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
{y
VARIABLE_VALUEAdam/p_re_lu/alpha/vQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
}{
VARIABLE_VALUEAdam/dense_1/kernel/vRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE
yw
VARIABLE_VALUEAdam/dense_1/bias/vPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE

serving_default_input_1Placeholder*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype0* 
shape:ÿÿÿÿÿÿÿÿÿ
	
StatefulPartitionedCallStatefulPartitionedCallserving_default_input_1Variable
Variable_4Variable_12Variable_15
Variable_1
Variable_5Variable_13Variable_16
Variable_2
Variable_6Variable_14Variable_17
Variable_3
Variable_7
Variable_8Variable_18
Variable_9Variable_19Variable_10Variable_20Variable_11conv2d_1/kernelconv2d_1/biasconv2d/kernelconv2d/biasbatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancebatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancedense/kernel
dense/bias%batch_normalization_2/moving_variancebatch_normalization_2/gamma!batch_normalization_2/moving_meanbatch_normalization_2/betap_re_lu/alphadense_1/kerneldense_1/bias*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *,
f'R%
#__inference_signature_wrapper_79786
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Î)
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameVariable/Read/ReadVariableOpVariable_1/Read/ReadVariableOpVariable_2/Read/ReadVariableOpVariable_3/Read/ReadVariableOpVariable_4/Read/ReadVariableOpVariable_5/Read/ReadVariableOpVariable_6/Read/ReadVariableOpVariable_7/Read/ReadVariableOpVariable_8/Read/ReadVariableOpVariable_9/Read/ReadVariableOpVariable_10/Read/ReadVariableOpVariable_11/Read/ReadVariableOpVariable_12/Read/ReadVariableOpVariable_13/Read/ReadVariableOpVariable_14/Read/ReadVariableOpVariable_15/Read/ReadVariableOpVariable_16/Read/ReadVariableOpVariable_17/Read/ReadVariableOpVariable_18/Read/ReadVariableOpVariable_19/Read/ReadVariableOpVariable_20/Read/ReadVariableOp!conv2d/kernel/Read/ReadVariableOpconv2d/bias/Read/ReadVariableOp#conv2d_1/kernel/Read/ReadVariableOp!conv2d_1/bias/Read/ReadVariableOp-batch_normalization/gamma/Read/ReadVariableOp,batch_normalization/beta/Read/ReadVariableOp3batch_normalization/moving_mean/Read/ReadVariableOp7batch_normalization/moving_variance/Read/ReadVariableOp/batch_normalization_1/gamma/Read/ReadVariableOp.batch_normalization_1/beta/Read/ReadVariableOp5batch_normalization_1/moving_mean/Read/ReadVariableOp9batch_normalization_1/moving_variance/Read/ReadVariableOp dense/kernel/Read/ReadVariableOpdense/bias/Read/ReadVariableOp/batch_normalization_2/gamma/Read/ReadVariableOp.batch_normalization_2/beta/Read/ReadVariableOp5batch_normalization_2/moving_mean/Read/ReadVariableOp9batch_normalization_2/moving_variance/Read/ReadVariableOp!p_re_lu/alpha/Read/ReadVariableOp"dense_1/kernel/Read/ReadVariableOp dense_1/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOp#Adam/Variable/m/Read/ReadVariableOp%Adam/Variable/m_1/Read/ReadVariableOp%Adam/Variable/m_2/Read/ReadVariableOp%Adam/Variable/m_3/Read/ReadVariableOp%Adam/Variable/m_4/Read/ReadVariableOp%Adam/Variable/m_5/Read/ReadVariableOp%Adam/Variable/m_6/Read/ReadVariableOp%Adam/Variable/m_7/Read/ReadVariableOp%Adam/Variable/m_8/Read/ReadVariableOp%Adam/Variable/m_9/Read/ReadVariableOp&Adam/Variable/m_10/Read/ReadVariableOp&Adam/Variable/m_11/Read/ReadVariableOp&Adam/Variable/m_12/Read/ReadVariableOp&Adam/Variable/m_13/Read/ReadVariableOp&Adam/Variable/m_14/Read/ReadVariableOp&Adam/Variable/m_15/Read/ReadVariableOp&Adam/Variable/m_16/Read/ReadVariableOp&Adam/Variable/m_17/Read/ReadVariableOp&Adam/Variable/m_18/Read/ReadVariableOp&Adam/Variable/m_19/Read/ReadVariableOp&Adam/Variable/m_20/Read/ReadVariableOp(Adam/conv2d/kernel/m/Read/ReadVariableOp&Adam/conv2d/bias/m/Read/ReadVariableOp*Adam/conv2d_1/kernel/m/Read/ReadVariableOp(Adam/conv2d_1/bias/m/Read/ReadVariableOp4Adam/batch_normalization/gamma/m/Read/ReadVariableOp3Adam/batch_normalization/beta/m/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_1/beta/m/Read/ReadVariableOp'Adam/dense/kernel/m/Read/ReadVariableOp%Adam/dense/bias/m/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/m/Read/ReadVariableOp5Adam/batch_normalization_2/beta/m/Read/ReadVariableOp(Adam/p_re_lu/alpha/m/Read/ReadVariableOp)Adam/dense_1/kernel/m/Read/ReadVariableOp'Adam/dense_1/bias/m/Read/ReadVariableOp#Adam/Variable/v/Read/ReadVariableOp%Adam/Variable/v_1/Read/ReadVariableOp%Adam/Variable/v_2/Read/ReadVariableOp%Adam/Variable/v_3/Read/ReadVariableOp%Adam/Variable/v_4/Read/ReadVariableOp%Adam/Variable/v_5/Read/ReadVariableOp%Adam/Variable/v_6/Read/ReadVariableOp%Adam/Variable/v_7/Read/ReadVariableOp%Adam/Variable/v_8/Read/ReadVariableOp%Adam/Variable/v_9/Read/ReadVariableOp&Adam/Variable/v_10/Read/ReadVariableOp&Adam/Variable/v_11/Read/ReadVariableOp&Adam/Variable/v_12/Read/ReadVariableOp&Adam/Variable/v_13/Read/ReadVariableOp&Adam/Variable/v_14/Read/ReadVariableOp&Adam/Variable/v_15/Read/ReadVariableOp&Adam/Variable/v_16/Read/ReadVariableOp&Adam/Variable/v_17/Read/ReadVariableOp&Adam/Variable/v_18/Read/ReadVariableOp&Adam/Variable/v_19/Read/ReadVariableOp&Adam/Variable/v_20/Read/ReadVariableOp(Adam/conv2d/kernel/v/Read/ReadVariableOp&Adam/conv2d/bias/v/Read/ReadVariableOp*Adam/conv2d_1/kernel/v/Read/ReadVariableOp(Adam/conv2d_1/bias/v/Read/ReadVariableOp4Adam/batch_normalization/gamma/v/Read/ReadVariableOp3Adam/batch_normalization/beta/v/Read/ReadVariableOp6Adam/batch_normalization_1/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_1/beta/v/Read/ReadVariableOp'Adam/dense/kernel/v/Read/ReadVariableOp%Adam/dense/bias/v/Read/ReadVariableOp6Adam/batch_normalization_2/gamma/v/Read/ReadVariableOp5Adam/batch_normalization_2/beta/v/Read/ReadVariableOp(Adam/p_re_lu/alpha/v/Read/ReadVariableOp)Adam/dense_1/kernel/v/Read/ReadVariableOp'Adam/dense_1/bias/v/Read/ReadVariableOpConst*
Tin
~2|	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *'
f"R 
__inference__traced_save_81576
À
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameVariable
Variable_1
Variable_2
Variable_3
Variable_4
Variable_5
Variable_6
Variable_7
Variable_8
Variable_9Variable_10Variable_11Variable_12Variable_13Variable_14Variable_15Variable_16Variable_17Variable_18Variable_19Variable_20conv2d/kernelconv2d/biasconv2d_1/kernelconv2d_1/biasbatch_normalization/gammabatch_normalization/betabatch_normalization/moving_mean#batch_normalization/moving_variancebatch_normalization_1/gammabatch_normalization_1/beta!batch_normalization_1/moving_mean%batch_normalization_1/moving_variancedense/kernel
dense/biasbatch_normalization_2/gammabatch_normalization_2/beta!batch_normalization_2/moving_mean%batch_normalization_2/moving_variancep_re_lu/alphadense_1/kerneldense_1/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotalcounttotal_1count_1Adam/Variable/mAdam/Variable/m_1Adam/Variable/m_2Adam/Variable/m_3Adam/Variable/m_4Adam/Variable/m_5Adam/Variable/m_6Adam/Variable/m_7Adam/Variable/m_8Adam/Variable/m_9Adam/Variable/m_10Adam/Variable/m_11Adam/Variable/m_12Adam/Variable/m_13Adam/Variable/m_14Adam/Variable/m_15Adam/Variable/m_16Adam/Variable/m_17Adam/Variable/m_18Adam/Variable/m_19Adam/Variable/m_20Adam/conv2d/kernel/mAdam/conv2d/bias/mAdam/conv2d_1/kernel/mAdam/conv2d_1/bias/m Adam/batch_normalization/gamma/mAdam/batch_normalization/beta/m"Adam/batch_normalization_1/gamma/m!Adam/batch_normalization_1/beta/mAdam/dense/kernel/mAdam/dense/bias/m"Adam/batch_normalization_2/gamma/m!Adam/batch_normalization_2/beta/mAdam/p_re_lu/alpha/mAdam/dense_1/kernel/mAdam/dense_1/bias/mAdam/Variable/vAdam/Variable/v_1Adam/Variable/v_2Adam/Variable/v_3Adam/Variable/v_4Adam/Variable/v_5Adam/Variable/v_6Adam/Variable/v_7Adam/Variable/v_8Adam/Variable/v_9Adam/Variable/v_10Adam/Variable/v_11Adam/Variable/v_12Adam/Variable/v_13Adam/Variable/v_14Adam/Variable/v_15Adam/Variable/v_16Adam/Variable/v_17Adam/Variable/v_18Adam/Variable/v_19Adam/Variable/v_20Adam/conv2d/kernel/vAdam/conv2d/bias/vAdam/conv2d_1/kernel/vAdam/conv2d_1/bias/v Adam/batch_normalization/gamma/vAdam/batch_normalization/beta/v"Adam/batch_normalization_1/gamma/v!Adam/batch_normalization_1/beta/vAdam/dense/kernel/vAdam/dense/bias/v"Adam/batch_normalization_2/gamma/v!Adam/batch_normalization_2/beta/vAdam/p_re_lu/alpha/vAdam/dense_1/kernel/vAdam/dense_1/bias/v*
Tin
}2{*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__traced_restore_81952Ìø 
÷	
Û
B__inference_dense_1_layer_call_and_return_conditional_losses_78923

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_78527

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul­
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö

B__inference_p_re_lu_layer_call_and_return_conditional_losses_78358

inputs
readvariableop_resource
identity¢ReadVariableOpW
ReluReluinputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Reluu
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes	
:*
dtype02
ReadVariableOpO
NegNegReadVariableOp:value:0*
T0*
_output_shapes	
:2
NegX
Neg_1Neginputs*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Neg_1^
Relu_1Relu	Neg_1:y:0*
T0*0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2
Relu_1c
mulMulNeg:y:0Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
mulc
addAddV2Relu:activations:0mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
addm
IdentityIdentityadd:z:0^ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:2 
ReadVariableOpReadVariableOp:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª


__inference_loss_fn_0_811214
0gamma_regularizer_square_readvariableop_resource
identity¢'gamma/Regularizer/Square/ReadVariableOp¿
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp0gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul
IdentityIdentitygamma/Regularizer/mul:z:0(^gamma/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp

`
'__inference_dropout_layer_call_fn_81085

inputs
identity¢StatefulPartitionedCallÙ
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¬


__inference_loss_fn_5_811764
0gamma_regularizer_square_readvariableop_resource
identity¢'gamma/Regularizer/Square/ReadVariableOpÀ
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp0gamma_regularizer_square_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul
IdentityIdentitygamma/Regularizer/mul:z:0(^gamma/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp
Ø
z
%__inference_dense_layer_call_fn_80945

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallñ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_788282
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ñ
%__inference_model_layer_call_fn_80387

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_795602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñÿ
ù?
!__inference__traced_restore_81952
file_prefix
assignvariableop_variable!
assignvariableop_1_variable_1!
assignvariableop_2_variable_2!
assignvariableop_3_variable_3!
assignvariableop_4_variable_4!
assignvariableop_5_variable_5!
assignvariableop_6_variable_6!
assignvariableop_7_variable_7!
assignvariableop_8_variable_8!
assignvariableop_9_variable_9#
assignvariableop_10_variable_10#
assignvariableop_11_variable_11#
assignvariableop_12_variable_12#
assignvariableop_13_variable_13#
assignvariableop_14_variable_14#
assignvariableop_15_variable_15#
assignvariableop_16_variable_16#
assignvariableop_17_variable_17#
assignvariableop_18_variable_18#
assignvariableop_19_variable_19#
assignvariableop_20_variable_20%
!assignvariableop_21_conv2d_kernel#
assignvariableop_22_conv2d_bias'
#assignvariableop_23_conv2d_1_kernel%
!assignvariableop_24_conv2d_1_bias1
-assignvariableop_25_batch_normalization_gamma0
,assignvariableop_26_batch_normalization_beta7
3assignvariableop_27_batch_normalization_moving_mean;
7assignvariableop_28_batch_normalization_moving_variance3
/assignvariableop_29_batch_normalization_1_gamma2
.assignvariableop_30_batch_normalization_1_beta9
5assignvariableop_31_batch_normalization_1_moving_mean=
9assignvariableop_32_batch_normalization_1_moving_variance$
 assignvariableop_33_dense_kernel"
assignvariableop_34_dense_bias3
/assignvariableop_35_batch_normalization_2_gamma2
.assignvariableop_36_batch_normalization_2_beta9
5assignvariableop_37_batch_normalization_2_moving_mean=
9assignvariableop_38_batch_normalization_2_moving_variance%
!assignvariableop_39_p_re_lu_alpha&
"assignvariableop_40_dense_1_kernel$
 assignvariableop_41_dense_1_bias!
assignvariableop_42_adam_iter#
assignvariableop_43_adam_beta_1#
assignvariableop_44_adam_beta_2"
assignvariableop_45_adam_decay
assignvariableop_46_total
assignvariableop_47_count
assignvariableop_48_total_1
assignvariableop_49_count_1'
#assignvariableop_50_adam_variable_m)
%assignvariableop_51_adam_variable_m_1)
%assignvariableop_52_adam_variable_m_2)
%assignvariableop_53_adam_variable_m_3)
%assignvariableop_54_adam_variable_m_4)
%assignvariableop_55_adam_variable_m_5)
%assignvariableop_56_adam_variable_m_6)
%assignvariableop_57_adam_variable_m_7)
%assignvariableop_58_adam_variable_m_8)
%assignvariableop_59_adam_variable_m_9*
&assignvariableop_60_adam_variable_m_10*
&assignvariableop_61_adam_variable_m_11*
&assignvariableop_62_adam_variable_m_12*
&assignvariableop_63_adam_variable_m_13*
&assignvariableop_64_adam_variable_m_14*
&assignvariableop_65_adam_variable_m_15*
&assignvariableop_66_adam_variable_m_16*
&assignvariableop_67_adam_variable_m_17*
&assignvariableop_68_adam_variable_m_18*
&assignvariableop_69_adam_variable_m_19*
&assignvariableop_70_adam_variable_m_20,
(assignvariableop_71_adam_conv2d_kernel_m*
&assignvariableop_72_adam_conv2d_bias_m.
*assignvariableop_73_adam_conv2d_1_kernel_m,
(assignvariableop_74_adam_conv2d_1_bias_m8
4assignvariableop_75_adam_batch_normalization_gamma_m7
3assignvariableop_76_adam_batch_normalization_beta_m:
6assignvariableop_77_adam_batch_normalization_1_gamma_m9
5assignvariableop_78_adam_batch_normalization_1_beta_m+
'assignvariableop_79_adam_dense_kernel_m)
%assignvariableop_80_adam_dense_bias_m:
6assignvariableop_81_adam_batch_normalization_2_gamma_m9
5assignvariableop_82_adam_batch_normalization_2_beta_m,
(assignvariableop_83_adam_p_re_lu_alpha_m-
)assignvariableop_84_adam_dense_1_kernel_m+
'assignvariableop_85_adam_dense_1_bias_m'
#assignvariableop_86_adam_variable_v)
%assignvariableop_87_adam_variable_v_1)
%assignvariableop_88_adam_variable_v_2)
%assignvariableop_89_adam_variable_v_3)
%assignvariableop_90_adam_variable_v_4)
%assignvariableop_91_adam_variable_v_5)
%assignvariableop_92_adam_variable_v_6)
%assignvariableop_93_adam_variable_v_7)
%assignvariableop_94_adam_variable_v_8)
%assignvariableop_95_adam_variable_v_9*
&assignvariableop_96_adam_variable_v_10*
&assignvariableop_97_adam_variable_v_11*
&assignvariableop_98_adam_variable_v_12*
&assignvariableop_99_adam_variable_v_13+
'assignvariableop_100_adam_variable_v_14+
'assignvariableop_101_adam_variable_v_15+
'assignvariableop_102_adam_variable_v_16+
'assignvariableop_103_adam_variable_v_17+
'assignvariableop_104_adam_variable_v_18+
'assignvariableop_105_adam_variable_v_19+
'assignvariableop_106_adam_variable_v_20-
)assignvariableop_107_adam_conv2d_kernel_v+
'assignvariableop_108_adam_conv2d_bias_v/
+assignvariableop_109_adam_conv2d_1_kernel_v-
)assignvariableop_110_adam_conv2d_1_bias_v9
5assignvariableop_111_adam_batch_normalization_gamma_v8
4assignvariableop_112_adam_batch_normalization_beta_v;
7assignvariableop_113_adam_batch_normalization_1_gamma_v:
6assignvariableop_114_adam_batch_normalization_1_beta_v,
(assignvariableop_115_adam_dense_kernel_v*
&assignvariableop_116_adam_dense_bias_v;
7assignvariableop_117_adam_batch_normalization_2_gamma_v:
6assignvariableop_118_adam_batch_normalization_2_beta_v-
)assignvariableop_119_adam_p_re_lu_alpha_v.
*assignvariableop_120_adam_dense_1_kernel_v,
(assignvariableop_121_adam_dense_1_bias_v
identity_123¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_100¢AssignVariableOp_101¢AssignVariableOp_102¢AssignVariableOp_103¢AssignVariableOp_104¢AssignVariableOp_105¢AssignVariableOp_106¢AssignVariableOp_107¢AssignVariableOp_108¢AssignVariableOp_109¢AssignVariableOp_11¢AssignVariableOp_110¢AssignVariableOp_111¢AssignVariableOp_112¢AssignVariableOp_113¢AssignVariableOp_114¢AssignVariableOp_115¢AssignVariableOp_116¢AssignVariableOp_117¢AssignVariableOp_118¢AssignVariableOp_119¢AssignVariableOp_12¢AssignVariableOp_120¢AssignVariableOp_121¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_31¢AssignVariableOp_32¢AssignVariableOp_33¢AssignVariableOp_34¢AssignVariableOp_35¢AssignVariableOp_36¢AssignVariableOp_37¢AssignVariableOp_38¢AssignVariableOp_39¢AssignVariableOp_4¢AssignVariableOp_40¢AssignVariableOp_41¢AssignVariableOp_42¢AssignVariableOp_43¢AssignVariableOp_44¢AssignVariableOp_45¢AssignVariableOp_46¢AssignVariableOp_47¢AssignVariableOp_48¢AssignVariableOp_49¢AssignVariableOp_5¢AssignVariableOp_50¢AssignVariableOp_51¢AssignVariableOp_52¢AssignVariableOp_53¢AssignVariableOp_54¢AssignVariableOp_55¢AssignVariableOp_56¢AssignVariableOp_57¢AssignVariableOp_58¢AssignVariableOp_59¢AssignVariableOp_6¢AssignVariableOp_60¢AssignVariableOp_61¢AssignVariableOp_62¢AssignVariableOp_63¢AssignVariableOp_64¢AssignVariableOp_65¢AssignVariableOp_66¢AssignVariableOp_67¢AssignVariableOp_68¢AssignVariableOp_69¢AssignVariableOp_7¢AssignVariableOp_70¢AssignVariableOp_71¢AssignVariableOp_72¢AssignVariableOp_73¢AssignVariableOp_74¢AssignVariableOp_75¢AssignVariableOp_76¢AssignVariableOp_77¢AssignVariableOp_78¢AssignVariableOp_79¢AssignVariableOp_8¢AssignVariableOp_80¢AssignVariableOp_81¢AssignVariableOp_82¢AssignVariableOp_83¢AssignVariableOp_84¢AssignVariableOp_85¢AssignVariableOp_86¢AssignVariableOp_87¢AssignVariableOp_88¢AssignVariableOp_89¢AssignVariableOp_9¢AssignVariableOp_90¢AssignVariableOp_91¢AssignVariableOp_92¢AssignVariableOp_93¢AssignVariableOp_94¢AssignVariableOp_95¢AssignVariableOp_96¢AssignVariableOp_97¢AssignVariableOp_98¢AssignVariableOp_99òF
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:{*
dtype0*þE
valueôEBñE{B6layer_with_weights-0/mu_t_1/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_2/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_3/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_8/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_1/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_2/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_6/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
RestoreV2/tensor_names
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:{*
dtype0*
valueBþ{B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
RestoreV2/shape_and_slices
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesï
ì:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*
dtypes
}2{	2
	RestoreV2g
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:2

Identity
AssignVariableOpAssignVariableOpassignvariableop_variableIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOpk

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:2

Identity_1¢
AssignVariableOp_1AssignVariableOpassignvariableop_1_variable_1Identity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1k

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:2

Identity_2¢
AssignVariableOp_2AssignVariableOpassignvariableop_2_variable_2Identity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_2k

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:2

Identity_3¢
AssignVariableOp_3AssignVariableOpassignvariableop_3_variable_3Identity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_3k

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:2

Identity_4¢
AssignVariableOp_4AssignVariableOpassignvariableop_4_variable_4Identity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_4k

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:2

Identity_5¢
AssignVariableOp_5AssignVariableOpassignvariableop_5_variable_5Identity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_5k

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:2

Identity_6¢
AssignVariableOp_6AssignVariableOpassignvariableop_6_variable_6Identity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_6k

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:2

Identity_7¢
AssignVariableOp_7AssignVariableOpassignvariableop_7_variable_7Identity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_7k

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:2

Identity_8¢
AssignVariableOp_8AssignVariableOpassignvariableop_8_variable_8Identity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_8k

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:2

Identity_9¢
AssignVariableOp_9AssignVariableOpassignvariableop_9_variable_9Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_9n
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:2
Identity_10§
AssignVariableOp_10AssignVariableOpassignvariableop_10_variable_10Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_10n
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:2
Identity_11§
AssignVariableOp_11AssignVariableOpassignvariableop_11_variable_11Identity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_11n
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:2
Identity_12§
AssignVariableOp_12AssignVariableOpassignvariableop_12_variable_12Identity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_12n
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:2
Identity_13§
AssignVariableOp_13AssignVariableOpassignvariableop_13_variable_13Identity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_13n
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:2
Identity_14§
AssignVariableOp_14AssignVariableOpassignvariableop_14_variable_14Identity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_14n
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:2
Identity_15§
AssignVariableOp_15AssignVariableOpassignvariableop_15_variable_15Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_15n
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:2
Identity_16§
AssignVariableOp_16AssignVariableOpassignvariableop_16_variable_16Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_16n
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:2
Identity_17§
AssignVariableOp_17AssignVariableOpassignvariableop_17_variable_17Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_17n
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:2
Identity_18§
AssignVariableOp_18AssignVariableOpassignvariableop_18_variable_18Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_18n
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:2
Identity_19§
AssignVariableOp_19AssignVariableOpassignvariableop_19_variable_19Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_19n
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:2
Identity_20§
AssignVariableOp_20AssignVariableOpassignvariableop_20_variable_20Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_20n
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:2
Identity_21©
AssignVariableOp_21AssignVariableOp!assignvariableop_21_conv2d_kernelIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_21n
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:2
Identity_22§
AssignVariableOp_22AssignVariableOpassignvariableop_22_conv2d_biasIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_22n
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:2
Identity_23«
AssignVariableOp_23AssignVariableOp#assignvariableop_23_conv2d_1_kernelIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_23n
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:2
Identity_24©
AssignVariableOp_24AssignVariableOp!assignvariableop_24_conv2d_1_biasIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_24n
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:2
Identity_25µ
AssignVariableOp_25AssignVariableOp-assignvariableop_25_batch_normalization_gammaIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_25n
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:2
Identity_26´
AssignVariableOp_26AssignVariableOp,assignvariableop_26_batch_normalization_betaIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_26n
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:2
Identity_27»
AssignVariableOp_27AssignVariableOp3assignvariableop_27_batch_normalization_moving_meanIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_27n
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:2
Identity_28¿
AssignVariableOp_28AssignVariableOp7assignvariableop_28_batch_normalization_moving_varianceIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_28n
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:2
Identity_29·
AssignVariableOp_29AssignVariableOp/assignvariableop_29_batch_normalization_1_gammaIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_29n
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:2
Identity_30¶
AssignVariableOp_30AssignVariableOp.assignvariableop_30_batch_normalization_1_betaIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_30n
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:2
Identity_31½
AssignVariableOp_31AssignVariableOp5assignvariableop_31_batch_normalization_1_moving_meanIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_31n
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:2
Identity_32Á
AssignVariableOp_32AssignVariableOp9assignvariableop_32_batch_normalization_1_moving_varianceIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_32n
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:2
Identity_33¨
AssignVariableOp_33AssignVariableOp assignvariableop_33_dense_kernelIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_33n
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:2
Identity_34¦
AssignVariableOp_34AssignVariableOpassignvariableop_34_dense_biasIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_34n
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:2
Identity_35·
AssignVariableOp_35AssignVariableOp/assignvariableop_35_batch_normalization_2_gammaIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_35n
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:2
Identity_36¶
AssignVariableOp_36AssignVariableOp.assignvariableop_36_batch_normalization_2_betaIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_36n
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:2
Identity_37½
AssignVariableOp_37AssignVariableOp5assignvariableop_37_batch_normalization_2_moving_meanIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_37n
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:2
Identity_38Á
AssignVariableOp_38AssignVariableOp9assignvariableop_38_batch_normalization_2_moving_varianceIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_38n
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:2
Identity_39©
AssignVariableOp_39AssignVariableOp!assignvariableop_39_p_re_lu_alphaIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_39n
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:2
Identity_40ª
AssignVariableOp_40AssignVariableOp"assignvariableop_40_dense_1_kernelIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_40n
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:2
Identity_41¨
AssignVariableOp_41AssignVariableOp assignvariableop_41_dense_1_biasIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_41n
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0	*
_output_shapes
:2
Identity_42¥
AssignVariableOp_42AssignVariableOpassignvariableop_42_adam_iterIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	2
AssignVariableOp_42n
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:2
Identity_43§
AssignVariableOp_43AssignVariableOpassignvariableop_43_adam_beta_1Identity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_43n
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:2
Identity_44§
AssignVariableOp_44AssignVariableOpassignvariableop_44_adam_beta_2Identity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_44n
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:2
Identity_45¦
AssignVariableOp_45AssignVariableOpassignvariableop_45_adam_decayIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_45n
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:2
Identity_46¡
AssignVariableOp_46AssignVariableOpassignvariableop_46_totalIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_46n
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:2
Identity_47¡
AssignVariableOp_47AssignVariableOpassignvariableop_47_countIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_47n
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:2
Identity_48£
AssignVariableOp_48AssignVariableOpassignvariableop_48_total_1Identity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_48n
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:2
Identity_49£
AssignVariableOp_49AssignVariableOpassignvariableop_49_count_1Identity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_49n
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:2
Identity_50«
AssignVariableOp_50AssignVariableOp#assignvariableop_50_adam_variable_mIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_50n
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:2
Identity_51­
AssignVariableOp_51AssignVariableOp%assignvariableop_51_adam_variable_m_1Identity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_51n
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:2
Identity_52­
AssignVariableOp_52AssignVariableOp%assignvariableop_52_adam_variable_m_2Identity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_52n
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:2
Identity_53­
AssignVariableOp_53AssignVariableOp%assignvariableop_53_adam_variable_m_3Identity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_53n
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:2
Identity_54­
AssignVariableOp_54AssignVariableOp%assignvariableop_54_adam_variable_m_4Identity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_54n
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:2
Identity_55­
AssignVariableOp_55AssignVariableOp%assignvariableop_55_adam_variable_m_5Identity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_55n
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:2
Identity_56­
AssignVariableOp_56AssignVariableOp%assignvariableop_56_adam_variable_m_6Identity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_56n
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:2
Identity_57­
AssignVariableOp_57AssignVariableOp%assignvariableop_57_adam_variable_m_7Identity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_57n
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:2
Identity_58­
AssignVariableOp_58AssignVariableOp%assignvariableop_58_adam_variable_m_8Identity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_58n
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:2
Identity_59­
AssignVariableOp_59AssignVariableOp%assignvariableop_59_adam_variable_m_9Identity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_59n
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:2
Identity_60®
AssignVariableOp_60AssignVariableOp&assignvariableop_60_adam_variable_m_10Identity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_60n
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:2
Identity_61®
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_variable_m_11Identity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_61n
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:2
Identity_62®
AssignVariableOp_62AssignVariableOp&assignvariableop_62_adam_variable_m_12Identity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_62n
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:2
Identity_63®
AssignVariableOp_63AssignVariableOp&assignvariableop_63_adam_variable_m_13Identity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_63n
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:2
Identity_64®
AssignVariableOp_64AssignVariableOp&assignvariableop_64_adam_variable_m_14Identity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_64n
Identity_65IdentityRestoreV2:tensors:65"/device:CPU:0*
T0*
_output_shapes
:2
Identity_65®
AssignVariableOp_65AssignVariableOp&assignvariableop_65_adam_variable_m_15Identity_65:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_65n
Identity_66IdentityRestoreV2:tensors:66"/device:CPU:0*
T0*
_output_shapes
:2
Identity_66®
AssignVariableOp_66AssignVariableOp&assignvariableop_66_adam_variable_m_16Identity_66:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_66n
Identity_67IdentityRestoreV2:tensors:67"/device:CPU:0*
T0*
_output_shapes
:2
Identity_67®
AssignVariableOp_67AssignVariableOp&assignvariableop_67_adam_variable_m_17Identity_67:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_67n
Identity_68IdentityRestoreV2:tensors:68"/device:CPU:0*
T0*
_output_shapes
:2
Identity_68®
AssignVariableOp_68AssignVariableOp&assignvariableop_68_adam_variable_m_18Identity_68:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_68n
Identity_69IdentityRestoreV2:tensors:69"/device:CPU:0*
T0*
_output_shapes
:2
Identity_69®
AssignVariableOp_69AssignVariableOp&assignvariableop_69_adam_variable_m_19Identity_69:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_69n
Identity_70IdentityRestoreV2:tensors:70"/device:CPU:0*
T0*
_output_shapes
:2
Identity_70®
AssignVariableOp_70AssignVariableOp&assignvariableop_70_adam_variable_m_20Identity_70:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_70n
Identity_71IdentityRestoreV2:tensors:71"/device:CPU:0*
T0*
_output_shapes
:2
Identity_71°
AssignVariableOp_71AssignVariableOp(assignvariableop_71_adam_conv2d_kernel_mIdentity_71:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_71n
Identity_72IdentityRestoreV2:tensors:72"/device:CPU:0*
T0*
_output_shapes
:2
Identity_72®
AssignVariableOp_72AssignVariableOp&assignvariableop_72_adam_conv2d_bias_mIdentity_72:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_72n
Identity_73IdentityRestoreV2:tensors:73"/device:CPU:0*
T0*
_output_shapes
:2
Identity_73²
AssignVariableOp_73AssignVariableOp*assignvariableop_73_adam_conv2d_1_kernel_mIdentity_73:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_73n
Identity_74IdentityRestoreV2:tensors:74"/device:CPU:0*
T0*
_output_shapes
:2
Identity_74°
AssignVariableOp_74AssignVariableOp(assignvariableop_74_adam_conv2d_1_bias_mIdentity_74:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_74n
Identity_75IdentityRestoreV2:tensors:75"/device:CPU:0*
T0*
_output_shapes
:2
Identity_75¼
AssignVariableOp_75AssignVariableOp4assignvariableop_75_adam_batch_normalization_gamma_mIdentity_75:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_75n
Identity_76IdentityRestoreV2:tensors:76"/device:CPU:0*
T0*
_output_shapes
:2
Identity_76»
AssignVariableOp_76AssignVariableOp3assignvariableop_76_adam_batch_normalization_beta_mIdentity_76:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_76n
Identity_77IdentityRestoreV2:tensors:77"/device:CPU:0*
T0*
_output_shapes
:2
Identity_77¾
AssignVariableOp_77AssignVariableOp6assignvariableop_77_adam_batch_normalization_1_gamma_mIdentity_77:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_77n
Identity_78IdentityRestoreV2:tensors:78"/device:CPU:0*
T0*
_output_shapes
:2
Identity_78½
AssignVariableOp_78AssignVariableOp5assignvariableop_78_adam_batch_normalization_1_beta_mIdentity_78:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_78n
Identity_79IdentityRestoreV2:tensors:79"/device:CPU:0*
T0*
_output_shapes
:2
Identity_79¯
AssignVariableOp_79AssignVariableOp'assignvariableop_79_adam_dense_kernel_mIdentity_79:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_79n
Identity_80IdentityRestoreV2:tensors:80"/device:CPU:0*
T0*
_output_shapes
:2
Identity_80­
AssignVariableOp_80AssignVariableOp%assignvariableop_80_adam_dense_bias_mIdentity_80:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_80n
Identity_81IdentityRestoreV2:tensors:81"/device:CPU:0*
T0*
_output_shapes
:2
Identity_81¾
AssignVariableOp_81AssignVariableOp6assignvariableop_81_adam_batch_normalization_2_gamma_mIdentity_81:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_81n
Identity_82IdentityRestoreV2:tensors:82"/device:CPU:0*
T0*
_output_shapes
:2
Identity_82½
AssignVariableOp_82AssignVariableOp5assignvariableop_82_adam_batch_normalization_2_beta_mIdentity_82:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_82n
Identity_83IdentityRestoreV2:tensors:83"/device:CPU:0*
T0*
_output_shapes
:2
Identity_83°
AssignVariableOp_83AssignVariableOp(assignvariableop_83_adam_p_re_lu_alpha_mIdentity_83:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_83n
Identity_84IdentityRestoreV2:tensors:84"/device:CPU:0*
T0*
_output_shapes
:2
Identity_84±
AssignVariableOp_84AssignVariableOp)assignvariableop_84_adam_dense_1_kernel_mIdentity_84:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_84n
Identity_85IdentityRestoreV2:tensors:85"/device:CPU:0*
T0*
_output_shapes
:2
Identity_85¯
AssignVariableOp_85AssignVariableOp'assignvariableop_85_adam_dense_1_bias_mIdentity_85:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_85n
Identity_86IdentityRestoreV2:tensors:86"/device:CPU:0*
T0*
_output_shapes
:2
Identity_86«
AssignVariableOp_86AssignVariableOp#assignvariableop_86_adam_variable_vIdentity_86:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_86n
Identity_87IdentityRestoreV2:tensors:87"/device:CPU:0*
T0*
_output_shapes
:2
Identity_87­
AssignVariableOp_87AssignVariableOp%assignvariableop_87_adam_variable_v_1Identity_87:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_87n
Identity_88IdentityRestoreV2:tensors:88"/device:CPU:0*
T0*
_output_shapes
:2
Identity_88­
AssignVariableOp_88AssignVariableOp%assignvariableop_88_adam_variable_v_2Identity_88:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_88n
Identity_89IdentityRestoreV2:tensors:89"/device:CPU:0*
T0*
_output_shapes
:2
Identity_89­
AssignVariableOp_89AssignVariableOp%assignvariableop_89_adam_variable_v_3Identity_89:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_89n
Identity_90IdentityRestoreV2:tensors:90"/device:CPU:0*
T0*
_output_shapes
:2
Identity_90­
AssignVariableOp_90AssignVariableOp%assignvariableop_90_adam_variable_v_4Identity_90:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_90n
Identity_91IdentityRestoreV2:tensors:91"/device:CPU:0*
T0*
_output_shapes
:2
Identity_91­
AssignVariableOp_91AssignVariableOp%assignvariableop_91_adam_variable_v_5Identity_91:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_91n
Identity_92IdentityRestoreV2:tensors:92"/device:CPU:0*
T0*
_output_shapes
:2
Identity_92­
AssignVariableOp_92AssignVariableOp%assignvariableop_92_adam_variable_v_6Identity_92:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_92n
Identity_93IdentityRestoreV2:tensors:93"/device:CPU:0*
T0*
_output_shapes
:2
Identity_93­
AssignVariableOp_93AssignVariableOp%assignvariableop_93_adam_variable_v_7Identity_93:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_93n
Identity_94IdentityRestoreV2:tensors:94"/device:CPU:0*
T0*
_output_shapes
:2
Identity_94­
AssignVariableOp_94AssignVariableOp%assignvariableop_94_adam_variable_v_8Identity_94:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_94n
Identity_95IdentityRestoreV2:tensors:95"/device:CPU:0*
T0*
_output_shapes
:2
Identity_95­
AssignVariableOp_95AssignVariableOp%assignvariableop_95_adam_variable_v_9Identity_95:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_95n
Identity_96IdentityRestoreV2:tensors:96"/device:CPU:0*
T0*
_output_shapes
:2
Identity_96®
AssignVariableOp_96AssignVariableOp&assignvariableop_96_adam_variable_v_10Identity_96:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_96n
Identity_97IdentityRestoreV2:tensors:97"/device:CPU:0*
T0*
_output_shapes
:2
Identity_97®
AssignVariableOp_97AssignVariableOp&assignvariableop_97_adam_variable_v_11Identity_97:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_97n
Identity_98IdentityRestoreV2:tensors:98"/device:CPU:0*
T0*
_output_shapes
:2
Identity_98®
AssignVariableOp_98AssignVariableOp&assignvariableop_98_adam_variable_v_12Identity_98:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_98n
Identity_99IdentityRestoreV2:tensors:99"/device:CPU:0*
T0*
_output_shapes
:2
Identity_99®
AssignVariableOp_99AssignVariableOp&assignvariableop_99_adam_variable_v_13Identity_99:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_99q
Identity_100IdentityRestoreV2:tensors:100"/device:CPU:0*
T0*
_output_shapes
:2
Identity_100²
AssignVariableOp_100AssignVariableOp'assignvariableop_100_adam_variable_v_14Identity_100:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_100q
Identity_101IdentityRestoreV2:tensors:101"/device:CPU:0*
T0*
_output_shapes
:2
Identity_101²
AssignVariableOp_101AssignVariableOp'assignvariableop_101_adam_variable_v_15Identity_101:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_101q
Identity_102IdentityRestoreV2:tensors:102"/device:CPU:0*
T0*
_output_shapes
:2
Identity_102²
AssignVariableOp_102AssignVariableOp'assignvariableop_102_adam_variable_v_16Identity_102:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_102q
Identity_103IdentityRestoreV2:tensors:103"/device:CPU:0*
T0*
_output_shapes
:2
Identity_103²
AssignVariableOp_103AssignVariableOp'assignvariableop_103_adam_variable_v_17Identity_103:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_103q
Identity_104IdentityRestoreV2:tensors:104"/device:CPU:0*
T0*
_output_shapes
:2
Identity_104²
AssignVariableOp_104AssignVariableOp'assignvariableop_104_adam_variable_v_18Identity_104:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_104q
Identity_105IdentityRestoreV2:tensors:105"/device:CPU:0*
T0*
_output_shapes
:2
Identity_105²
AssignVariableOp_105AssignVariableOp'assignvariableop_105_adam_variable_v_19Identity_105:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_105q
Identity_106IdentityRestoreV2:tensors:106"/device:CPU:0*
T0*
_output_shapes
:2
Identity_106²
AssignVariableOp_106AssignVariableOp'assignvariableop_106_adam_variable_v_20Identity_106:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_106q
Identity_107IdentityRestoreV2:tensors:107"/device:CPU:0*
T0*
_output_shapes
:2
Identity_107´
AssignVariableOp_107AssignVariableOp)assignvariableop_107_adam_conv2d_kernel_vIdentity_107:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_107q
Identity_108IdentityRestoreV2:tensors:108"/device:CPU:0*
T0*
_output_shapes
:2
Identity_108²
AssignVariableOp_108AssignVariableOp'assignvariableop_108_adam_conv2d_bias_vIdentity_108:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_108q
Identity_109IdentityRestoreV2:tensors:109"/device:CPU:0*
T0*
_output_shapes
:2
Identity_109¶
AssignVariableOp_109AssignVariableOp+assignvariableop_109_adam_conv2d_1_kernel_vIdentity_109:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_109q
Identity_110IdentityRestoreV2:tensors:110"/device:CPU:0*
T0*
_output_shapes
:2
Identity_110´
AssignVariableOp_110AssignVariableOp)assignvariableop_110_adam_conv2d_1_bias_vIdentity_110:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_110q
Identity_111IdentityRestoreV2:tensors:111"/device:CPU:0*
T0*
_output_shapes
:2
Identity_111À
AssignVariableOp_111AssignVariableOp5assignvariableop_111_adam_batch_normalization_gamma_vIdentity_111:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_111q
Identity_112IdentityRestoreV2:tensors:112"/device:CPU:0*
T0*
_output_shapes
:2
Identity_112¿
AssignVariableOp_112AssignVariableOp4assignvariableop_112_adam_batch_normalization_beta_vIdentity_112:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_112q
Identity_113IdentityRestoreV2:tensors:113"/device:CPU:0*
T0*
_output_shapes
:2
Identity_113Â
AssignVariableOp_113AssignVariableOp7assignvariableop_113_adam_batch_normalization_1_gamma_vIdentity_113:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_113q
Identity_114IdentityRestoreV2:tensors:114"/device:CPU:0*
T0*
_output_shapes
:2
Identity_114Á
AssignVariableOp_114AssignVariableOp6assignvariableop_114_adam_batch_normalization_1_beta_vIdentity_114:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_114q
Identity_115IdentityRestoreV2:tensors:115"/device:CPU:0*
T0*
_output_shapes
:2
Identity_115³
AssignVariableOp_115AssignVariableOp(assignvariableop_115_adam_dense_kernel_vIdentity_115:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_115q
Identity_116IdentityRestoreV2:tensors:116"/device:CPU:0*
T0*
_output_shapes
:2
Identity_116±
AssignVariableOp_116AssignVariableOp&assignvariableop_116_adam_dense_bias_vIdentity_116:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_116q
Identity_117IdentityRestoreV2:tensors:117"/device:CPU:0*
T0*
_output_shapes
:2
Identity_117Â
AssignVariableOp_117AssignVariableOp7assignvariableop_117_adam_batch_normalization_2_gamma_vIdentity_117:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_117q
Identity_118IdentityRestoreV2:tensors:118"/device:CPU:0*
T0*
_output_shapes
:2
Identity_118Á
AssignVariableOp_118AssignVariableOp6assignvariableop_118_adam_batch_normalization_2_beta_vIdentity_118:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_118q
Identity_119IdentityRestoreV2:tensors:119"/device:CPU:0*
T0*
_output_shapes
:2
Identity_119´
AssignVariableOp_119AssignVariableOp)assignvariableop_119_adam_p_re_lu_alpha_vIdentity_119:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_119q
Identity_120IdentityRestoreV2:tensors:120"/device:CPU:0*
T0*
_output_shapes
:2
Identity_120µ
AssignVariableOp_120AssignVariableOp*assignvariableop_120_adam_dense_1_kernel_vIdentity_120:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_120q
Identity_121IdentityRestoreV2:tensors:121"/device:CPU:0*
T0*
_output_shapes
:2
Identity_121³
AssignVariableOp_121AssignVariableOp(assignvariableop_121_adam_dense_1_bias_vIdentity_121:output:0"/device:CPU:0*
_output_shapes
 *
dtype02
AssignVariableOp_1219
NoOpNoOp"/device:CPU:0*
_output_shapes
 2
NoOpò
Identity_122Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99^NoOp"/device:CPU:0*
T0*
_output_shapes
: 2
Identity_122æ
Identity_123IdentityIdentity_122:output:0^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_100^AssignVariableOp_101^AssignVariableOp_102^AssignVariableOp_103^AssignVariableOp_104^AssignVariableOp_105^AssignVariableOp_106^AssignVariableOp_107^AssignVariableOp_108^AssignVariableOp_109^AssignVariableOp_11^AssignVariableOp_110^AssignVariableOp_111^AssignVariableOp_112^AssignVariableOp_113^AssignVariableOp_114^AssignVariableOp_115^AssignVariableOp_116^AssignVariableOp_117^AssignVariableOp_118^AssignVariableOp_119^AssignVariableOp_12^AssignVariableOp_120^AssignVariableOp_121^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_65^AssignVariableOp_66^AssignVariableOp_67^AssignVariableOp_68^AssignVariableOp_69^AssignVariableOp_7^AssignVariableOp_70^AssignVariableOp_71^AssignVariableOp_72^AssignVariableOp_73^AssignVariableOp_74^AssignVariableOp_75^AssignVariableOp_76^AssignVariableOp_77^AssignVariableOp_78^AssignVariableOp_79^AssignVariableOp_8^AssignVariableOp_80^AssignVariableOp_81^AssignVariableOp_82^AssignVariableOp_83^AssignVariableOp_84^AssignVariableOp_85^AssignVariableOp_86^AssignVariableOp_87^AssignVariableOp_88^AssignVariableOp_89^AssignVariableOp_9^AssignVariableOp_90^AssignVariableOp_91^AssignVariableOp_92^AssignVariableOp_93^AssignVariableOp_94^AssignVariableOp_95^AssignVariableOp_96^AssignVariableOp_97^AssignVariableOp_98^AssignVariableOp_99*
T0*
_output_shapes
: 2
Identity_123"%
identity_123Identity_123:output:0*ÿ
_input_shapesí
ê: ::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102,
AssignVariableOp_100AssignVariableOp_1002,
AssignVariableOp_101AssignVariableOp_1012,
AssignVariableOp_102AssignVariableOp_1022,
AssignVariableOp_103AssignVariableOp_1032,
AssignVariableOp_104AssignVariableOp_1042,
AssignVariableOp_105AssignVariableOp_1052,
AssignVariableOp_106AssignVariableOp_1062,
AssignVariableOp_107AssignVariableOp_1072,
AssignVariableOp_108AssignVariableOp_1082,
AssignVariableOp_109AssignVariableOp_1092*
AssignVariableOp_11AssignVariableOp_112,
AssignVariableOp_110AssignVariableOp_1102,
AssignVariableOp_111AssignVariableOp_1112,
AssignVariableOp_112AssignVariableOp_1122,
AssignVariableOp_113AssignVariableOp_1132,
AssignVariableOp_114AssignVariableOp_1142,
AssignVariableOp_115AssignVariableOp_1152,
AssignVariableOp_116AssignVariableOp_1162,
AssignVariableOp_117AssignVariableOp_1172,
AssignVariableOp_118AssignVariableOp_1182,
AssignVariableOp_119AssignVariableOp_1192*
AssignVariableOp_12AssignVariableOp_122,
AssignVariableOp_120AssignVariableOp_1202,
AssignVariableOp_121AssignVariableOp_1212*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642*
AssignVariableOp_65AssignVariableOp_652*
AssignVariableOp_66AssignVariableOp_662*
AssignVariableOp_67AssignVariableOp_672*
AssignVariableOp_68AssignVariableOp_682*
AssignVariableOp_69AssignVariableOp_692(
AssignVariableOp_7AssignVariableOp_72*
AssignVariableOp_70AssignVariableOp_702*
AssignVariableOp_71AssignVariableOp_712*
AssignVariableOp_72AssignVariableOp_722*
AssignVariableOp_73AssignVariableOp_732*
AssignVariableOp_74AssignVariableOp_742*
AssignVariableOp_75AssignVariableOp_752*
AssignVariableOp_76AssignVariableOp_762*
AssignVariableOp_77AssignVariableOp_772*
AssignVariableOp_78AssignVariableOp_782*
AssignVariableOp_79AssignVariableOp_792(
AssignVariableOp_8AssignVariableOp_82*
AssignVariableOp_80AssignVariableOp_802*
AssignVariableOp_81AssignVariableOp_812*
AssignVariableOp_82AssignVariableOp_822*
AssignVariableOp_83AssignVariableOp_832*
AssignVariableOp_84AssignVariableOp_842*
AssignVariableOp_85AssignVariableOp_852*
AssignVariableOp_86AssignVariableOp_862*
AssignVariableOp_87AssignVariableOp_872*
AssignVariableOp_88AssignVariableOp_882*
AssignVariableOp_89AssignVariableOp_892(
AssignVariableOp_9AssignVariableOp_92*
AssignVariableOp_90AssignVariableOp_902*
AssignVariableOp_91AssignVariableOp_912*
AssignVariableOp_92AssignVariableOp_922*
AssignVariableOp_93AssignVariableOp_932*
AssignVariableOp_94AssignVariableOp_942*
AssignVariableOp_95AssignVariableOp_952*
AssignVariableOp_96AssignVariableOp_962*
AssignVariableOp_97AssignVariableOp_972*
AssignVariableOp_98AssignVariableOp_982*
AssignVariableOp_99AssignVariableOp_99:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
¤
E
)__inference_flatten_5_layer_call_fn_80867

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_787482
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
Ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80416

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
âÜ
á1
__inference__traced_save_81576
file_prefix'
#savev2_variable_read_readvariableop)
%savev2_variable_1_read_readvariableop)
%savev2_variable_2_read_readvariableop)
%savev2_variable_3_read_readvariableop)
%savev2_variable_4_read_readvariableop)
%savev2_variable_5_read_readvariableop)
%savev2_variable_6_read_readvariableop)
%savev2_variable_7_read_readvariableop)
%savev2_variable_8_read_readvariableop)
%savev2_variable_9_read_readvariableop*
&savev2_variable_10_read_readvariableop*
&savev2_variable_11_read_readvariableop*
&savev2_variable_12_read_readvariableop*
&savev2_variable_13_read_readvariableop*
&savev2_variable_14_read_readvariableop*
&savev2_variable_15_read_readvariableop*
&savev2_variable_16_read_readvariableop*
&savev2_variable_17_read_readvariableop*
&savev2_variable_18_read_readvariableop*
&savev2_variable_19_read_readvariableop*
&savev2_variable_20_read_readvariableop,
(savev2_conv2d_kernel_read_readvariableop*
&savev2_conv2d_bias_read_readvariableop.
*savev2_conv2d_1_kernel_read_readvariableop,
(savev2_conv2d_1_bias_read_readvariableop8
4savev2_batch_normalization_gamma_read_readvariableop7
3savev2_batch_normalization_beta_read_readvariableop>
:savev2_batch_normalization_moving_mean_read_readvariableopB
>savev2_batch_normalization_moving_variance_read_readvariableop:
6savev2_batch_normalization_1_gamma_read_readvariableop9
5savev2_batch_normalization_1_beta_read_readvariableop@
<savev2_batch_normalization_1_moving_mean_read_readvariableopD
@savev2_batch_normalization_1_moving_variance_read_readvariableop+
'savev2_dense_kernel_read_readvariableop)
%savev2_dense_bias_read_readvariableop:
6savev2_batch_normalization_2_gamma_read_readvariableop9
5savev2_batch_normalization_2_beta_read_readvariableop@
<savev2_batch_normalization_2_moving_mean_read_readvariableopD
@savev2_batch_normalization_2_moving_variance_read_readvariableop,
(savev2_p_re_lu_alpha_read_readvariableop-
)savev2_dense_1_kernel_read_readvariableop+
'savev2_dense_1_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop.
*savev2_adam_variable_m_read_readvariableop0
,savev2_adam_variable_m_1_read_readvariableop0
,savev2_adam_variable_m_2_read_readvariableop0
,savev2_adam_variable_m_3_read_readvariableop0
,savev2_adam_variable_m_4_read_readvariableop0
,savev2_adam_variable_m_5_read_readvariableop0
,savev2_adam_variable_m_6_read_readvariableop0
,savev2_adam_variable_m_7_read_readvariableop0
,savev2_adam_variable_m_8_read_readvariableop0
,savev2_adam_variable_m_9_read_readvariableop1
-savev2_adam_variable_m_10_read_readvariableop1
-savev2_adam_variable_m_11_read_readvariableop1
-savev2_adam_variable_m_12_read_readvariableop1
-savev2_adam_variable_m_13_read_readvariableop1
-savev2_adam_variable_m_14_read_readvariableop1
-savev2_adam_variable_m_15_read_readvariableop1
-savev2_adam_variable_m_16_read_readvariableop1
-savev2_adam_variable_m_17_read_readvariableop1
-savev2_adam_variable_m_18_read_readvariableop1
-savev2_adam_variable_m_19_read_readvariableop1
-savev2_adam_variable_m_20_read_readvariableop3
/savev2_adam_conv2d_kernel_m_read_readvariableop1
-savev2_adam_conv2d_bias_m_read_readvariableop5
1savev2_adam_conv2d_1_kernel_m_read_readvariableop3
/savev2_adam_conv2d_1_bias_m_read_readvariableop?
;savev2_adam_batch_normalization_gamma_m_read_readvariableop>
:savev2_adam_batch_normalization_beta_m_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_m_read_readvariableop2
.savev2_adam_dense_kernel_m_read_readvariableop0
,savev2_adam_dense_bias_m_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_m_read_readvariableop3
/savev2_adam_p_re_lu_alpha_m_read_readvariableop4
0savev2_adam_dense_1_kernel_m_read_readvariableop2
.savev2_adam_dense_1_bias_m_read_readvariableop.
*savev2_adam_variable_v_read_readvariableop0
,savev2_adam_variable_v_1_read_readvariableop0
,savev2_adam_variable_v_2_read_readvariableop0
,savev2_adam_variable_v_3_read_readvariableop0
,savev2_adam_variable_v_4_read_readvariableop0
,savev2_adam_variable_v_5_read_readvariableop0
,savev2_adam_variable_v_6_read_readvariableop0
,savev2_adam_variable_v_7_read_readvariableop0
,savev2_adam_variable_v_8_read_readvariableop0
,savev2_adam_variable_v_9_read_readvariableop1
-savev2_adam_variable_v_10_read_readvariableop1
-savev2_adam_variable_v_11_read_readvariableop1
-savev2_adam_variable_v_12_read_readvariableop1
-savev2_adam_variable_v_13_read_readvariableop1
-savev2_adam_variable_v_14_read_readvariableop1
-savev2_adam_variable_v_15_read_readvariableop1
-savev2_adam_variable_v_16_read_readvariableop1
-savev2_adam_variable_v_17_read_readvariableop1
-savev2_adam_variable_v_18_read_readvariableop1
-savev2_adam_variable_v_19_read_readvariableop1
-savev2_adam_variable_v_20_read_readvariableop3
/savev2_adam_conv2d_kernel_v_read_readvariableop1
-savev2_adam_conv2d_bias_v_read_readvariableop5
1savev2_adam_conv2d_1_kernel_v_read_readvariableop3
/savev2_adam_conv2d_1_bias_v_read_readvariableop?
;savev2_adam_batch_normalization_gamma_v_read_readvariableop>
:savev2_adam_batch_normalization_beta_v_read_readvariableopA
=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_1_beta_v_read_readvariableop2
.savev2_adam_dense_kernel_v_read_readvariableop0
,savev2_adam_dense_bias_v_read_readvariableopA
=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop@
<savev2_adam_batch_normalization_2_beta_v_read_readvariableop3
/savev2_adam_p_re_lu_alpha_v_read_readvariableop4
0savev2_adam_dense_1_kernel_v_read_readvariableop2
.savev2_adam_dense_1_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpoints
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*2
StaticRegexFullMatchc
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.part2
Constl
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part2	
Const_1
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: 2
Selectt

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: 2

StringJoinZ

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :2

num_shards
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : 2
ShardedFilename/shard¦
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: 2
ShardedFilenameìF
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:{*
dtype0*þE
valueôEBñE{B6layer_with_weights-0/mu_t_1/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_2/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_3/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_t_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_6/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_7/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_t_8/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_1/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_2/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-0/mu_p_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_1/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_2/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_3/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_4/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_5/.ATTRIBUTES/VARIABLE_VALUEB9layer_with_weights-0/sigma_p_6/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-3/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-3/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-3/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-4/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-4/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-4/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-6/gamma/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/beta/.ATTRIBUTES/VARIABLE_VALUEB;layer_with_weights-6/moving_mean/.ATTRIBUTES/VARIABLE_VALUEB?layer_with_weights-6/moving_variance/.ATTRIBUTES/VARIABLE_VALUEB5layer_with_weights-7/alpha/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-8/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-8/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_7/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_t_8/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/mu_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBUlayer_with_weights-0/sigma_p_6/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-3/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-4/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-6/gamma/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/beta/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBQlayer_with_weights-7/alpha/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-8/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-8/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH2
SaveV2/tensor_names
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:{*
dtype0*
valueBþ{B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 2
SaveV2/shape_and_slicesÃ/
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0#savev2_variable_read_readvariableop%savev2_variable_1_read_readvariableop%savev2_variable_2_read_readvariableop%savev2_variable_3_read_readvariableop%savev2_variable_4_read_readvariableop%savev2_variable_5_read_readvariableop%savev2_variable_6_read_readvariableop%savev2_variable_7_read_readvariableop%savev2_variable_8_read_readvariableop%savev2_variable_9_read_readvariableop&savev2_variable_10_read_readvariableop&savev2_variable_11_read_readvariableop&savev2_variable_12_read_readvariableop&savev2_variable_13_read_readvariableop&savev2_variable_14_read_readvariableop&savev2_variable_15_read_readvariableop&savev2_variable_16_read_readvariableop&savev2_variable_17_read_readvariableop&savev2_variable_18_read_readvariableop&savev2_variable_19_read_readvariableop&savev2_variable_20_read_readvariableop(savev2_conv2d_kernel_read_readvariableop&savev2_conv2d_bias_read_readvariableop*savev2_conv2d_1_kernel_read_readvariableop(savev2_conv2d_1_bias_read_readvariableop4savev2_batch_normalization_gamma_read_readvariableop3savev2_batch_normalization_beta_read_readvariableop:savev2_batch_normalization_moving_mean_read_readvariableop>savev2_batch_normalization_moving_variance_read_readvariableop6savev2_batch_normalization_1_gamma_read_readvariableop5savev2_batch_normalization_1_beta_read_readvariableop<savev2_batch_normalization_1_moving_mean_read_readvariableop@savev2_batch_normalization_1_moving_variance_read_readvariableop'savev2_dense_kernel_read_readvariableop%savev2_dense_bias_read_readvariableop6savev2_batch_normalization_2_gamma_read_readvariableop5savev2_batch_normalization_2_beta_read_readvariableop<savev2_batch_normalization_2_moving_mean_read_readvariableop@savev2_batch_normalization_2_moving_variance_read_readvariableop(savev2_p_re_lu_alpha_read_readvariableop)savev2_dense_1_kernel_read_readvariableop'savev2_dense_1_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop*savev2_adam_variable_m_read_readvariableop,savev2_adam_variable_m_1_read_readvariableop,savev2_adam_variable_m_2_read_readvariableop,savev2_adam_variable_m_3_read_readvariableop,savev2_adam_variable_m_4_read_readvariableop,savev2_adam_variable_m_5_read_readvariableop,savev2_adam_variable_m_6_read_readvariableop,savev2_adam_variable_m_7_read_readvariableop,savev2_adam_variable_m_8_read_readvariableop,savev2_adam_variable_m_9_read_readvariableop-savev2_adam_variable_m_10_read_readvariableop-savev2_adam_variable_m_11_read_readvariableop-savev2_adam_variable_m_12_read_readvariableop-savev2_adam_variable_m_13_read_readvariableop-savev2_adam_variable_m_14_read_readvariableop-savev2_adam_variable_m_15_read_readvariableop-savev2_adam_variable_m_16_read_readvariableop-savev2_adam_variable_m_17_read_readvariableop-savev2_adam_variable_m_18_read_readvariableop-savev2_adam_variable_m_19_read_readvariableop-savev2_adam_variable_m_20_read_readvariableop/savev2_adam_conv2d_kernel_m_read_readvariableop-savev2_adam_conv2d_bias_m_read_readvariableop1savev2_adam_conv2d_1_kernel_m_read_readvariableop/savev2_adam_conv2d_1_bias_m_read_readvariableop;savev2_adam_batch_normalization_gamma_m_read_readvariableop:savev2_adam_batch_normalization_beta_m_read_readvariableop=savev2_adam_batch_normalization_1_gamma_m_read_readvariableop<savev2_adam_batch_normalization_1_beta_m_read_readvariableop.savev2_adam_dense_kernel_m_read_readvariableop,savev2_adam_dense_bias_m_read_readvariableop=savev2_adam_batch_normalization_2_gamma_m_read_readvariableop<savev2_adam_batch_normalization_2_beta_m_read_readvariableop/savev2_adam_p_re_lu_alpha_m_read_readvariableop0savev2_adam_dense_1_kernel_m_read_readvariableop.savev2_adam_dense_1_bias_m_read_readvariableop*savev2_adam_variable_v_read_readvariableop,savev2_adam_variable_v_1_read_readvariableop,savev2_adam_variable_v_2_read_readvariableop,savev2_adam_variable_v_3_read_readvariableop,savev2_adam_variable_v_4_read_readvariableop,savev2_adam_variable_v_5_read_readvariableop,savev2_adam_variable_v_6_read_readvariableop,savev2_adam_variable_v_7_read_readvariableop,savev2_adam_variable_v_8_read_readvariableop,savev2_adam_variable_v_9_read_readvariableop-savev2_adam_variable_v_10_read_readvariableop-savev2_adam_variable_v_11_read_readvariableop-savev2_adam_variable_v_12_read_readvariableop-savev2_adam_variable_v_13_read_readvariableop-savev2_adam_variable_v_14_read_readvariableop-savev2_adam_variable_v_15_read_readvariableop-savev2_adam_variable_v_16_read_readvariableop-savev2_adam_variable_v_17_read_readvariableop-savev2_adam_variable_v_18_read_readvariableop-savev2_adam_variable_v_19_read_readvariableop-savev2_adam_variable_v_20_read_readvariableop/savev2_adam_conv2d_kernel_v_read_readvariableop-savev2_adam_conv2d_bias_v_read_readvariableop1savev2_adam_conv2d_1_kernel_v_read_readvariableop/savev2_adam_conv2d_1_bias_v_read_readvariableop;savev2_adam_batch_normalization_gamma_v_read_readvariableop:savev2_adam_batch_normalization_beta_v_read_readvariableop=savev2_adam_batch_normalization_1_gamma_v_read_readvariableop<savev2_adam_batch_normalization_1_beta_v_read_readvariableop.savev2_adam_dense_kernel_v_read_readvariableop,savev2_adam_dense_bias_v_read_readvariableop=savev2_adam_batch_normalization_2_gamma_v_read_readvariableop<savev2_adam_batch_normalization_2_beta_v_read_readvariableop/savev2_adam_p_re_lu_alpha_v_read_readvariableop0savev2_adam_dense_1_kernel_v_read_readvariableop.savev2_adam_dense_1_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *
dtypes
}2{	2
SaveV2º
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:2(
&MergeV2Checkpoints/checkpoint_prefixes¡
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 2
MergeV2Checkpointsr
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: 2

Identitym

Identity_1IdentityIdentity:output:0^MergeV2Checkpoints*
T0*
_output_shapes
: 2

Identity_1"!

identity_1Identity_1:output:0*Ð
_input_shapes¾
»: : : : : : : : : : : : : : : : : : : : : : :::::::::::::
:::::::	:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : :::::::::
:::::	:: : : : : : : : : : : : : : : : : : : : : :::::::::
:::::	:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :,(
&
_output_shapes
:: 

_output_shapes
::,(
&
_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::  

_output_shapes
:: !

_output_shapes
::&""
 
_output_shapes
:
:!#

_output_shapes	
::!$

_output_shapes	
::!%

_output_shapes	
::!&

_output_shapes	
::!'

_output_shapes	
::!(

_output_shapes	
::%)!

_output_shapes
:	: *

_output_shapes
::+

_output_shapes
: :,

_output_shapes
: :-

_output_shapes
: :.

_output_shapes
: :/

_output_shapes
: :0

_output_shapes
: :1

_output_shapes
: :2

_output_shapes
: :3

_output_shapes
: :4

_output_shapes
: :5

_output_shapes
: :6

_output_shapes
: :7

_output_shapes
: :8

_output_shapes
: :9

_output_shapes
: ::

_output_shapes
: :;

_output_shapes
: :<

_output_shapes
: :=

_output_shapes
: :>

_output_shapes
: :?

_output_shapes
: :@

_output_shapes
: :A

_output_shapes
: :B

_output_shapes
: :C

_output_shapes
: :D

_output_shapes
: :E

_output_shapes
: :F

_output_shapes
: :G

_output_shapes
: :,H(
&
_output_shapes
:: I

_output_shapes
::,J(
&
_output_shapes
:: K

_output_shapes
:: L

_output_shapes
:: M

_output_shapes
:: N

_output_shapes
:: O

_output_shapes
::&P"
 
_output_shapes
:
:!Q

_output_shapes	
::!R

_output_shapes	
::!S

_output_shapes	
::!T

_output_shapes	
::%U!

_output_shapes
:	: V

_output_shapes
::W

_output_shapes
: :X

_output_shapes
: :Y

_output_shapes
: :Z

_output_shapes
: :[

_output_shapes
: :\

_output_shapes
: :]

_output_shapes
: :^

_output_shapes
: :_

_output_shapes
: :`

_output_shapes
: :a

_output_shapes
: :b

_output_shapes
: :c

_output_shapes
: :d

_output_shapes
: :e

_output_shapes
: :f

_output_shapes
: :g

_output_shapes
: :h

_output_shapes
: :i

_output_shapes
: :j

_output_shapes
: :k

_output_shapes
: :,l(
&
_output_shapes
:: m

_output_shapes
::,n(
&
_output_shapes
:: o

_output_shapes
:: p

_output_shapes
:: q

_output_shapes
:: r

_output_shapes
:: s

_output_shapes
::&t"
 
_output_shapes
:
:!u

_output_shapes	
::!v

_output_shapes	
::!w

_output_shapes	
::!x

_output_shapes	
::%y!

_output_shapes
:	: z

_output_shapes
::{

_output_shapes
: 
·
¨
5__inference_batch_normalization_2_layer_call_fn_81050

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_782892
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
`
B__inference_dropout_layer_call_and_return_conditional_losses_81080

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
ê
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_78497

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ø
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÑ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ö


__inference_loss_fn_4_811655
1kernel_regularizer_square_readvariableop_resource
identity¢(kernel/Regularizer/Square/ReadVariableOpÈ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp1kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul
IdentityIdentitykernel/Regularizer/mul:z:0)^kernel/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp
Ì
m
'__inference_p_re_lu_layer_call_fn_78366

inputs
unknown
identity¢StatefulPartitionedCallæ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_783582
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*3
_input_shapes"
 :ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_80840

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_78776

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ú
|
'__inference_dense_1_layer_call_fn_81110

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallò
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_789232
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
B__inference_dropout_layer_call_and_return_conditional_losses_78894

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è	
Ú
A__inference_conv2d_layer_call_and_return_conditional_losses_80397

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
%
è
N__inference_batch_normalization_layer_call_and_return_conditional_losses_78594

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ø
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÑ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_78692

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
^
B__inference_flatten_layer_call_and_return_conditional_losses_80807

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ñ
%__inference_model_layer_call_fn_80298

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*F
_read_only_resource_inputs(
&$	
"#&'()**-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_793092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
O
3__inference_average_pooling2d_2_layer_call_fn_78133

inputs
identityï
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_781272
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_2_layer_call_fn_80834

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_787062
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ú
}
(__inference_conv2d_1_layer_call_fn_80425

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallû
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_784242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
Ñ
Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_77898

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ü
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¿
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_4_layer_call_and_return_conditional_losses_80851

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
÷	
Û
B__inference_dense_1_layer_call_and_return_conditional_losses_81101

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype02
MatMul/ReadVariableOps
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdda
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Softmax
IdentityIdentitySoftmax:softmax:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
è	
Ú
A__inference_conv2d_layer_call_and_return_conditional_losses_78450

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
%
ê
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80745

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ø
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÑ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



__inference_loss_fn_6_811873
/beta_regularizer_square_readvariableop_resource
identity¢&beta/Regularizer/Square/ReadVariableOp½
&beta/Regularizer/Square/ReadVariableOpReadVariableOp/beta_regularizer_square_readvariableop_resource*
_output_shapes	
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul
IdentityIdentitybeta/Regularizer/mul:z:0'^beta/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp

Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80775

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul­
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
±
Ä
F__inference_concatenate_layer_call_and_return_conditional_losses_78797

inputs
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis¼
concatConcatV2inputsinputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*µ
_input_shapes£
 :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs:PL
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
 
_user_specified_nameinputs

j
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_78103

inputs
identity¶
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
¨
5__inference_batch_normalization_1_layer_call_fn_80788

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_784972
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Î¢
Ü
@__inference_model_layer_call_and_return_conditional_losses_80011

inputs
custom_activation_79789
custom_activation_79791
custom_activation_79793
custom_activation_79795
custom_activation_79797
custom_activation_79799
custom_activation_79801
custom_activation_79803
custom_activation_79805
custom_activation_79807
custom_activation_79809
custom_activation_79811
custom_activation_79813
custom_activation_79815
custom_activation_79817
custom_activation_79819
custom_activation_79821
custom_activation_79823
custom_activation_79825
custom_activation_79827
custom_activation_79829+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource/
+batch_normalization_2_assignmovingavg_799211
-batch_normalization_2_assignmovingavg_1_79927?
;batch_normalization_2_batchnorm_mul_readvariableop_resource;
7batch_normalization_2_batchnorm_readvariableop_resource#
p_re_lu_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity¢"batch_normalization/AssignNewValue¢$batch_normalization/AssignNewValue_1¢3batch_normalization/FusedBatchNormV3/ReadVariableOp¢5batch_normalization/FusedBatchNormV3/ReadVariableOp_1¢"batch_normalization/ReadVariableOp¢$batch_normalization/ReadVariableOp_1¢$batch_normalization_1/AssignNewValue¢&batch_normalization_1/AssignNewValue_1¢5batch_normalization_1/FusedBatchNormV3/ReadVariableOp¢7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1¢$batch_normalization_1/ReadVariableOp¢&batch_normalization_1/ReadVariableOp_1¢9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp¢4batch_normalization_2/AssignMovingAvg/ReadVariableOp¢;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp¢6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp¢.batch_normalization_2/batchnorm/ReadVariableOp¢2batch_normalization_2/batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢)custom_activation/StatefulPartitionedCall¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/ReadVariableOp¿
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinputscustom_activation_79789custom_activation_79791custom_activation_79793custom_activation_79795custom_activation_79797custom_activation_79799custom_activation_79801custom_activation_79803custom_activation_79805custom_activation_79807custom_activation_79809custom_activation_79811custom_activation_79813custom_activation_79815custom_activation_79817custom_activation_79819custom_activation_79821custom_activation_79823custom_activation_79825custom_activation_79827custom_activation_79829*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCall°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOpë
conv2d_1/Conv2DConv2D2custom_activation/StatefulPartitionedCall:output:1&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d_1/Conv2D§
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp¬
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_1/BiasAddª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpå
conv2d/Conv2DConv2D2custom_activation/StatefulPartitionedCall:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d/Conv2D¡
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d/BiasAdd¶
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOp¼
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1é
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpï
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ï
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2(
&batch_normalization_1/FusedBatchNormV3±
$batch_normalization_1/AssignNewValueAssignVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource3batch_normalization_1/FusedBatchNormV3:batch_mean:06^batch_normalization_1/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*Q
_classG
ECloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02&
$batch_normalization_1/AssignNewValue¿
&batch_normalization_1/AssignNewValue_1AssignVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource7batch_normalization_1/FusedBatchNormV3:batch_variance:08^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*S
_classI
GEloc:@batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02(
&batch_normalization_1/AssignNewValue_1°
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp¶
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1ã
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpé
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1á
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2&
$batch_normalization/FusedBatchNormV3¥
"batch_normalization/AssignNewValueAssignVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource1batch_normalization/FusedBatchNormV3:batch_mean:04^batch_normalization/FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*O
_classE
CAloc:@batch_normalization/FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02$
"batch_normalization/AssignNewValue³
$batch_normalization/AssignNewValue_1AssignVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource5batch_normalization/FusedBatchNormV3:batch_variance:06^batch_normalization/FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*Q
_classG
ECloc:@batch_normalization/FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02&
$batch_normalization/AssignNewValue_1
tf.math.tanh_1/TanhTanh*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh
tf.nn.relu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/ReluÔ
average_pooling2d_3/AvgPoolAvgPooltf.math.tanh_1/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_3/AvgPoolÃ
max_pooling2d_3/MaxPoolMaxPooltf.math.tanh_1/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolÜ
average_pooling2d_2/AvgPoolAvgPooltf.nn.relu_1/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_2/AvgPoolË
max_pooling2d_2/MaxPoolMaxPooltf.nn.relu_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÒ
average_pooling2d_1/AvgPoolAvgPooltf.math.tanh/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPoolÁ
max_pooling2d_1/MaxPoolMaxPooltf.math.tanh/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolÖ
average_pooling2d/AvgPoolAvgPooltf.nn.relu/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d/AvgPoolÅ
max_pooling2d/MaxPoolMaxPooltf.nn.relu/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten/Const
flatten/ReshapeReshapemax_pooling2d/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_1/Const¢
flatten_1/ReshapeReshape"average_pooling2d/AvgPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_2/Const 
flatten_2/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_3/Const¤
flatten_3/ReshapeReshape$average_pooling2d_1/AvgPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_3/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_4/Const 
flatten_4/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_4/Reshapes
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_5/Const¤
flatten_5/ReshapeReshape$average_pooling2d_2/AvgPool:output:0flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_5/Reshapes
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_6/Const 
flatten_6/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_6/Reshapes
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_7/Const¤
flatten_7/ReshapeReshape$average_pooling2d_3/AvgPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_7/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisð
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0flatten_4/Reshape:output:0flatten_5/Reshape:output:0flatten_6/Reshape:output:0flatten_7/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate/concat¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAdd¶
4batch_normalization_2/moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 26
4batch_normalization_2/moments/mean/reduction_indicesâ
"batch_normalization_2/moments/meanMeandense/BiasAdd:output:0=batch_normalization_2/moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2$
"batch_normalization_2/moments/mean¿
*batch_normalization_2/moments/StopGradientStopGradient+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes
:	2,
*batch_normalization_2/moments/StopGradient÷
/batch_normalization_2/moments/SquaredDifferenceSquaredDifferencedense/BiasAdd:output:03batch_normalization_2/moments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ21
/batch_normalization_2/moments/SquaredDifference¾
8batch_normalization_2/moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2:
8batch_normalization_2/moments/variance/reduction_indices
&batch_normalization_2/moments/varianceMean3batch_normalization_2/moments/SquaredDifference:z:0Abatch_normalization_2/moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2(
&batch_normalization_2/moments/varianceÃ
%batch_normalization_2/moments/SqueezeSqueeze+batch_normalization_2/moments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2'
%batch_normalization_2/moments/SqueezeË
'batch_normalization_2/moments/Squeeze_1Squeeze/batch_normalization_2/moments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2)
'batch_normalization_2/moments/Squeeze_1
+batch_normalization_2/AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/79921*
_output_shapes
: *
dtype0*
valueB
 *
×#<2-
+batch_normalization_2/AssignMovingAvg/decayÕ
4batch_normalization_2/AssignMovingAvg/ReadVariableOpReadVariableOp+batch_normalization_2_assignmovingavg_79921*
_output_shapes	
:*
dtype026
4batch_normalization_2/AssignMovingAvg/ReadVariableOpß
)batch_normalization_2/AssignMovingAvg/subSub<batch_normalization_2/AssignMovingAvg/ReadVariableOp:value:0.batch_normalization_2/moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/79921*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/subÖ
)batch_normalization_2/AssignMovingAvg/mulMul-batch_normalization_2/AssignMovingAvg/sub:z:04batch_normalization_2/AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/79921*
_output_shapes	
:2+
)batch_normalization_2/AssignMovingAvg/mul±
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOpAssignSubVariableOp+batch_normalization_2_assignmovingavg_79921-batch_normalization_2/AssignMovingAvg/mul:z:05^batch_normalization_2/AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*>
_class4
20loc:@batch_normalization_2/AssignMovingAvg/79921*
_output_shapes
 *
dtype02;
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp
-batch_normalization_2/AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/79927*
_output_shapes
: *
dtype0*
valueB
 *
×#<2/
-batch_normalization_2/AssignMovingAvg_1/decayÛ
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpReadVariableOp-batch_normalization_2_assignmovingavg_1_79927*
_output_shapes	
:*
dtype028
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOpé
+batch_normalization_2/AssignMovingAvg_1/subSub>batch_normalization_2/AssignMovingAvg_1/ReadVariableOp:value:00batch_normalization_2/moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/79927*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/subà
+batch_normalization_2/AssignMovingAvg_1/mulMul/batch_normalization_2/AssignMovingAvg_1/sub:z:06batch_normalization_2/AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/79927*
_output_shapes	
:2-
+batch_normalization_2/AssignMovingAvg_1/mul½
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOp-batch_normalization_2_assignmovingavg_1_79927/batch_normalization_2/AssignMovingAvg_1/mul:z:07^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*@
_class6
42loc:@batch_normalization_2/AssignMovingAvg_1/79927*
_output_shapes
 *
dtype02=
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yÛ
#batch_normalization_2/batchnorm/addAddV20batch_normalization_2/moments/Squeeze_1:output:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/add¦
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/Rsqrtá
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulÉ
%batch_normalization_2/batchnorm/mul_1Muldense/BiasAdd:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_2/batchnorm/mul_1Ô
%batch_normalization_2/batchnorm/mul_2Mul.batch_normalization_2/moments/Squeeze:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2Õ
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOpÚ
#batch_normalization_2/batchnorm/subSub6batch_normalization_2/batchnorm/ReadVariableOp:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subÞ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_2/batchnorm/add_1
p_re_lu/ReluRelu)batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Relu
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*
_output_shapes	
:*
dtype02
p_re_lu/ReadVariableOpg
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
p_re_lu/Neg
p_re_lu/Neg_1Neg)batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Neg_1n
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Relu_1
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/mul
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/adds
dropout/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/dropout/Const
dropout/dropout/MulMulp_re_lu/add:z:0dropout/dropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/Mulm
dropout/dropout/ShapeShapep_re_lu/add:z:0*
T0*
_output_shapes
:2
dropout/dropout/ShapeÍ
,dropout/dropout/random_uniform/RandomUniformRandomUniformdropout/dropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02.
,dropout/dropout/random_uniform/RandomUniform
dropout/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2 
dropout/dropout/GreaterEqual/yß
dropout/dropout/GreaterEqualGreaterEqual5dropout/dropout/random_uniform/RandomUniform:output:0'dropout/dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/GreaterEqual
dropout/dropout/CastCast dropout/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/Cast
dropout/dropout/Mul_1Muldropout/dropout/Mul:z:0dropout/dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/dropout/Mul_1¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldropout/dropout/Mul_1:z:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¡
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Softmaxº
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mulº
&beta/Regularizer/Square/ReadVariableOpReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÀ
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mulÀ
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul»
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulÏ
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mulÉ
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mulÆ
IdentityIdentitydense_1/Softmax:softmax:0#^batch_normalization/AssignNewValue%^batch_normalization/AssignNewValue_14^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_1%^batch_normalization_1/AssignNewValue'^batch_normalization_1/AssignNewValue_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1:^batch_normalization_2/AssignMovingAvg/AssignSubVariableOp5^batch_normalization_2/AssignMovingAvg/ReadVariableOp<^batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp7^batch_normalization_2/AssignMovingAvg_1/ReadVariableOp/^batch_normalization_2/batchnorm/ReadVariableOp3^batch_normalization_2/batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*^custom_activation/StatefulPartitionedCall^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^p_re_lu/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2H
"batch_normalization/AssignNewValue"batch_normalization/AssignNewValue2L
$batch_normalization/AssignNewValue_1$batch_normalization/AssignNewValue_12j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12L
$batch_normalization_1/AssignNewValue$batch_normalization_1/AssignNewValue2P
&batch_normalization_1/AssignNewValue_1&batch_normalization_1/AssignNewValue_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12v
9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp9batch_normalization_2/AssignMovingAvg/AssignSubVariableOp2l
4batch_normalization_2/AssignMovingAvg/ReadVariableOp4batch_normalization_2/AssignMovingAvg/ReadVariableOp2z
;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp;batch_normalization_2/AssignMovingAvg_1/AssignSubVariableOp2p
6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp6batch_normalization_2/AssignMovingAvg_1/ReadVariableOp2`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_5_layer_call_and_return_conditional_losses_78748

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_78115

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ß%
ê
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_78007

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulã
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

a
B__inference_dropout_layer_call_and_return_conditional_losses_81075

inputs
identityc
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *   @2
dropout/Constt
dropout/MulMulinputsdropout/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/MulT
dropout/ShapeShapeinputs*
T0*
_output_shapes
:2
dropout/Shapeµ
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
dtype02&
$dropout/random_uniform/RandomUniformu
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *   ?2
dropout/GreaterEqual/y¿
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/GreaterEqual
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Cast{
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Mul_1f
IdentityIdentitydropout/Mul_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
ù
@__inference_model_layer_call_and_return_conditional_losses_79560

inputs
custom_activation_79401
custom_activation_79403
custom_activation_79405
custom_activation_79407
custom_activation_79409
custom_activation_79411
custom_activation_79413
custom_activation_79415
custom_activation_79417
custom_activation_79419
custom_activation_79421
custom_activation_79423
custom_activation_79425
custom_activation_79427
custom_activation_79429
custom_activation_79431
custom_activation_79433
custom_activation_79435
custom_activation_79437
custom_activation_79439
custom_activation_79441
conv2d_1_79445
conv2d_1_79447
conv2d_79450
conv2d_79452
batch_normalization_1_79455
batch_normalization_1_79457
batch_normalization_1_79459
batch_normalization_1_79461
batch_normalization_79464
batch_normalization_79466
batch_normalization_79468
batch_normalization_79470
dense_79494
dense_79496
batch_normalization_2_79499
batch_normalization_2_79501
batch_normalization_2_79503
batch_normalization_2_79505
p_re_lu_79508
dense_1_79512
dense_1_79514
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢)custom_activation/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/StatefulPartitionedCall¿
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinputscustom_activation_79401custom_activation_79403custom_activation_79405custom_activation_79407custom_activation_79409custom_activation_79411custom_activation_79413custom_activation_79415custom_activation_79417custom_activation_79419custom_activation_79421custom_activation_79423custom_activation_79425custom_activation_79427custom_activation_79429custom_activation_79431custom_activation_79433custom_activation_79435custom_activation_79437custom_activation_79439custom_activation_79441*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCallÅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:1conv2d_1_79445conv2d_1_79447*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_784242"
 conv2d_1/StatefulPartitionedCall»
conv2d/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:0conv2d_79450conv2d_79452*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_784502 
conv2d/StatefulPartitionedCall»
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_79455batch_normalization_1_79457batch_normalization_1_79459batch_normalization_1_79461*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_785272/
-batch_normalization_1/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_79464batch_normalization_79466batch_normalization_79468batch_normalization_79470*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_786242-
+batch_normalization/StatefulPartitionedCall¤
tf.math.tanh_1/TanhTanh6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh 
tf.nn.relu_1/ReluRelu6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/Relu
#average_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_781512%
#average_pooling2d_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_781392!
max_pooling2d_3/PartitionedCall
#average_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_781272%
#average_pooling2d_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_781152!
max_pooling2d_2/PartitionedCall
#average_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_781032%
#average_pooling2d_1/PartitionedCallÿ
max_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_780912!
max_pooling2d_1/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_780792#
!average_pooling2d/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_780672
max_pooling2d/PartitionedCallñ
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_786782
flatten/PartitionedCallû
flatten_1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_786922
flatten_1/PartitionedCallù
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_787062
flatten_2/PartitionedCallý
flatten_3/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_787202
flatten_3/PartitionedCallù
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_787342
flatten_4/PartitionedCallý
flatten_5/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_787482
flatten_5/PartitionedCallù
flatten_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_787622
flatten_6/PartitionedCallý
flatten_7/PartitionedCallPartitionedCall,average_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_787762
flatten_7/PartitionedCallú
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0"flatten_6/PartitionedCall:output:0"flatten_7/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_787972
concatenate/PartitionedCall¡
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_79494dense_79496*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_788282
dense/StatefulPartitionedCall±
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_79499batch_normalization_2_79501batch_normalization_2_79503batch_normalization_2_79505*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_783342/
-batch_normalization_2/StatefulPartitionedCall¬
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_79508*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_783582!
p_re_lu/StatefulPartitionedCalló
dropout/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788992
dropout/PartitionedCall¦
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_79512dense_1_79514*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_789232!
dense_1/StatefulPartitionedCall¨
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79464*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79466*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul®
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79455*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mul¬
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79457*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79494* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul¯
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79501*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mul­
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79505*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*^custom_activation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp ^p_re_lu/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
 
C
'__inference_flatten_layer_call_fn_80812

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_786782
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_4_layer_call_and_return_conditional_losses_78734

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¨
5__inference_batch_normalization_1_layer_call_fn_80713

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall´
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_780502
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
O
3__inference_average_pooling2d_3_layer_call_fn_78157

inputs
identityï
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_781512
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ö
{
&__inference_conv2d_layer_call_fn_80406

inputs
unknown
	unknown_0
identity¢StatefulPartitionedCallù
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_784502
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
%
Ú
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81037

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1µ
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul±
&beta/Regularizer/Square/ReadVariableOpReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¯
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù

@__inference_dense_layer_call_and_return_conditional_losses_78828

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddµ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulÁ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80499

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ü
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¿
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ñ
¦
3__inference_batch_normalization_layer_call_fn_80613

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_786242
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¯
M
1__inference_average_pooling2d_layer_call_fn_78085

inputs
identityí
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_780792
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



__inference_loss_fn_3_811543
/beta_regularizer_square_readvariableop_resource
identity¢&beta/Regularizer/Square/ReadVariableOp¼
&beta/Regularizer/Square/ReadVariableOpReadVariableOp/beta_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul
IdentityIdentitybeta/Regularizer/mul:z:0'^beta/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp
¼
´
(__inference_restored_function_body_77603

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity

identity_1¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_activation_layer_call_and_return_conditional_losses_91272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*~
_input_shapesm
k:ÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Õ
¨
5__inference_batch_normalization_1_layer_call_fn_80801

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall¢
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_785272
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_7_layer_call_fn_80889

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_787762
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
§
I
-__inference_max_pooling2d_layer_call_fn_78073

inputs
identityé
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_780672
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_78762

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

j
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_78151

inputs
identity¶
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
º
^
B__inference_flatten_layer_call_and_return_conditional_losses_78678

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_6_layer_call_fn_80878

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_787622
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý%
è
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80469

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulã
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
³
O
3__inference_average_pooling2d_1_layer_call_fn_78109

inputs
identityï
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_781032
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80587

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul­
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ÿ
ð
#__inference_signature_wrapper_79786
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity¢StatefulPartitionedCallø
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *)
f$R"
 __inference__wrapped_model_777572
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
Ó
Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_78050

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ü
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¿
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_4_layer_call_fn_80856

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_787342
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

ò
%__inference_model_layer_call_fn_79396
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*F
_read_only_resource_inputs(
&$	
"#&'()**-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_793092
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1

j
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_78127

inputs
identity¶
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½@

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81005

inputs
assignmovingavg_80968
assignmovingavg_1_80974)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/80968*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_80968*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/80968*
_output_shapes	
:2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/80968*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_80968AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/80968*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/80974*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_80974*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/80974*
_output_shapes	
:2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/80974*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_80974AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/80974*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1µ
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¯
&beta/Regularizer/Square/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
É
`
B__inference_dropout_layer_call_and_return_conditional_losses_78899

inputs

identity_1[
IdentityIdentityinputs*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identityj

Identity_1IdentityIdentity:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity_1"!

identity_1Identity_1:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_78139

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¦
3__inference_batch_normalization_layer_call_fn_80525

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_778982
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Å
Æ
F__inference_concatenate_layer_call_and_return_conditional_losses_80902
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identity\
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concat/axis¾
concatConcatV2inputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatd
IdentityIdentityconcat:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*µ
_input_shapes£
 :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/3:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/4:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/5:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/6:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/7

C
'__inference_dropout_layer_call_fn_81090

inputs
identityÁ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788992
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*'
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_6_layer_call_and_return_conditional_losses_80873

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ê	
Ü
C__inference_conv2d_1_layer_call_and_return_conditional_losses_78424

inputs"
conv2d_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢Conv2D/ReadVariableOp
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
Conv2D/ReadVariableOp¤
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
Conv2D
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAdd
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*6
_input_shapes%
#:ÿÿÿÿÿÿÿÿÿ
::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ

 
_user_specified_nameinputs
ß%
ê
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80657

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulã
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

f
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_78091

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ã
¼
0__inference_custom_activation_layer_call_fn_7704

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19
identity

identity_1¢StatefulPartitionedCall 
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *T
fORM
K__inference_custom_activation_layer_call_and_return_conditional_losses_76762
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity

Identity_1Identity StatefulPartitionedCall:output:1^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*~
_input_shapesm
k:ÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
½@

P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_78289

inputs
assignmovingavg_78252
assignmovingavg_1_78258)
%batchnorm_mul_readvariableop_resource%
!batchnorm_readvariableop_resource
identity¢#AssignMovingAvg/AssignSubVariableOp¢AssignMovingAvg/ReadVariableOp¢%AssignMovingAvg_1/AssignSubVariableOp¢ AssignMovingAvg_1/ReadVariableOp¢batchnorm/ReadVariableOp¢batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp
moments/mean/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2 
moments/mean/reduction_indices
moments/meanMeaninputs'moments/mean/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/mean}
moments/StopGradientStopGradientmoments/mean:output:0*
T0*
_output_shapes
:	2
moments/StopGradient¥
moments/SquaredDifferenceSquaredDifferenceinputsmoments/StopGradient:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
moments/SquaredDifference
"moments/variance/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB: 2$
"moments/variance/reduction_indices³
moments/varianceMeanmoments/SquaredDifference:z:0+moments/variance/reduction_indices:output:0*
T0*
_output_shapes
:	*
	keep_dims(2
moments/variance
moments/SqueezeSqueezemoments/mean:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze
moments/Squeeze_1Squeezemoments/variance:output:0*
T0*
_output_shapes	
:*
squeeze_dims
 2
moments/Squeeze_1Ë
AssignMovingAvg/decayConst",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/78252*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg/decay
AssignMovingAvg/ReadVariableOpReadVariableOpassignmovingavg_78252*
_output_shapes	
:*
dtype02 
AssignMovingAvg/ReadVariableOpñ
AssignMovingAvg/subSub&AssignMovingAvg/ReadVariableOp:value:0moments/Squeeze:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/78252*
_output_shapes	
:2
AssignMovingAvg/subè
AssignMovingAvg/mulMulAssignMovingAvg/sub:z:0AssignMovingAvg/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0*(
_class
loc:@AssignMovingAvg/78252*
_output_shapes	
:2
AssignMovingAvg/mul­
#AssignMovingAvg/AssignSubVariableOpAssignSubVariableOpassignmovingavg_78252AssignMovingAvg/mul:z:0^AssignMovingAvg/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*(
_class
loc:@AssignMovingAvg/78252*
_output_shapes
 *
dtype02%
#AssignMovingAvg/AssignSubVariableOpÑ
AssignMovingAvg_1/decayConst",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/78258*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
AssignMovingAvg_1/decay
 AssignMovingAvg_1/ReadVariableOpReadVariableOpassignmovingavg_1_78258*
_output_shapes	
:*
dtype02"
 AssignMovingAvg_1/ReadVariableOpû
AssignMovingAvg_1/subSub(AssignMovingAvg_1/ReadVariableOp:value:0moments/Squeeze_1:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/78258*
_output_shapes	
:2
AssignMovingAvg_1/subò
AssignMovingAvg_1/mulMulAssignMovingAvg_1/sub:z:0 AssignMovingAvg_1/decay:output:0",/job:localhost/replica:0/task:0/device:CPU:0*
T0**
_class 
loc:@AssignMovingAvg_1/78258*
_output_shapes	
:2
AssignMovingAvg_1/mul¹
%AssignMovingAvg_1/AssignSubVariableOpAssignSubVariableOpassignmovingavg_1_78258AssignMovingAvg_1/mul:z:0!^AssignMovingAvg_1/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0**
_class 
loc:@AssignMovingAvg_1/78258*
_output_shapes
 *
dtype02'
%AssignMovingAvg_1/AssignSubVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2moments/Squeeze_1:output:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1|
batchnorm/mul_2Mulmoments/Squeeze:output:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp
batchnorm/subSub batchnorm/ReadVariableOp:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1µ
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¯
&beta/Regularizer/Square/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul
IdentityIdentitybatchnorm/add_1:z:0$^AssignMovingAvg/AssignSubVariableOp^AssignMovingAvg/ReadVariableOp&^AssignMovingAvg_1/AssignSubVariableOp!^AssignMovingAvg_1/ReadVariableOp^batchnorm/ReadVariableOp^batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::2J
#AssignMovingAvg/AssignSubVariableOp#AssignMovingAvg/AssignSubVariableOp2@
AssignMovingAvg/ReadVariableOpAssignMovingAvg/ReadVariableOp2N
%AssignMovingAvg_1/AssignSubVariableOp%AssignMovingAvg_1/AssignSubVariableOp2D
 AssignMovingAvg_1/ReadVariableOp AssignMovingAvg_1/ReadVariableOp24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp2<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_5_layer_call_and_return_conditional_losses_80862

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
Ú
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_78334

inputs%
!batchnorm_readvariableop_resource)
%batchnorm_mul_readvariableop_resource'
#batchnorm_readvariableop_1_resource'
#batchnorm_readvariableop_2_resource
identity¢batchnorm/ReadVariableOp¢batchnorm/ReadVariableOp_1¢batchnorm/ReadVariableOp_2¢batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp
batchnorm/ReadVariableOpReadVariableOp!batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOpg
batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2
batchnorm/add/y
batchnorm/addAddV2 batchnorm/ReadVariableOp:value:0batchnorm/add/y:output:0*
T0*
_output_shapes	
:2
batchnorm/addd
batchnorm/RsqrtRsqrtbatchnorm/add:z:0*
T0*
_output_shapes	
:2
batchnorm/Rsqrt
batchnorm/mul/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02
batchnorm/mul/ReadVariableOp
batchnorm/mulMulbatchnorm/Rsqrt:y:0$batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
batchnorm/mulw
batchnorm/mul_1Mulinputsbatchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/mul_1
batchnorm/ReadVariableOp_1ReadVariableOp#batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_1
batchnorm/mul_2Mul"batchnorm/ReadVariableOp_1:value:0batchnorm/mul:z:0*
T0*
_output_shapes	
:2
batchnorm/mul_2
batchnorm/ReadVariableOp_2ReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02
batchnorm/ReadVariableOp_2
batchnorm/subSub"batchnorm/ReadVariableOp_2:value:0batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2
batchnorm/sub
batchnorm/add_1AddV2batchnorm/mul_1:z:0batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
batchnorm/add_1µ
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp%batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul±
&beta/Regularizer/Square/ReadVariableOpReadVariableOp#batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¯
IdentityIdentitybatchnorm/add_1:z:0^batchnorm/ReadVariableOp^batchnorm/ReadVariableOp_1^batchnorm/ReadVariableOp_2^batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::24
batchnorm/ReadVariableOpbatchnorm/ReadVariableOp28
batchnorm/ReadVariableOp_1batchnorm/ReadVariableOp_128
batchnorm/ReadVariableOp_2batchnorm/ReadVariableOp_22<
batchnorm/mul/ReadVariableOpbatchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs



__inference_loss_fn_1_811323
/beta_regularizer_square_readvariableop_resource
identity¢&beta/Regularizer/Square/ReadVariableOp¼
&beta/Regularizer/Square/ReadVariableOpReadVariableOp/beta_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul
IdentityIdentitybeta/Regularizer/mul:z:0'^beta/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp
«
«
+__inference_concatenate_layer_call_fn_80914
inputs_0
inputs_1
inputs_2
inputs_3
inputs_4
inputs_5
inputs_6
inputs_7
identity
PartitionedCallPartitionedCallinputs_0inputs_1inputs_2inputs_3inputs_4inputs_5inputs_6inputs_7*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_787972
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*µ
_input_shapes£
 :ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:ÿÿÿÿÿÿÿÿÿÀ:R N
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/0:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/1:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/2:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/3:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/4:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/5:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/6:RN
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ
"
_user_specified_name
inputs/7
¨·

@__inference_model_layer_call_and_return_conditional_losses_79309

inputs
custom_activation_79150
custom_activation_79152
custom_activation_79154
custom_activation_79156
custom_activation_79158
custom_activation_79160
custom_activation_79162
custom_activation_79164
custom_activation_79166
custom_activation_79168
custom_activation_79170
custom_activation_79172
custom_activation_79174
custom_activation_79176
custom_activation_79178
custom_activation_79180
custom_activation_79182
custom_activation_79184
custom_activation_79186
custom_activation_79188
custom_activation_79190
conv2d_1_79194
conv2d_1_79196
conv2d_79199
conv2d_79201
batch_normalization_1_79204
batch_normalization_1_79206
batch_normalization_1_79208
batch_normalization_1_79210
batch_normalization_79213
batch_normalization_79215
batch_normalization_79217
batch_normalization_79219
dense_79243
dense_79245
batch_normalization_2_79248
batch_normalization_2_79250
batch_normalization_2_79252
batch_normalization_2_79254
p_re_lu_79257
dense_1_79261
dense_1_79263
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢)custom_activation/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/StatefulPartitionedCall¿
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinputscustom_activation_79150custom_activation_79152custom_activation_79154custom_activation_79156custom_activation_79158custom_activation_79160custom_activation_79162custom_activation_79164custom_activation_79166custom_activation_79168custom_activation_79170custom_activation_79172custom_activation_79174custom_activation_79176custom_activation_79178custom_activation_79180custom_activation_79182custom_activation_79184custom_activation_79186custom_activation_79188custom_activation_79190*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCallÅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:1conv2d_1_79194conv2d_1_79196*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_784242"
 conv2d_1/StatefulPartitionedCall»
conv2d/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:0conv2d_79199conv2d_79201*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_784502 
conv2d/StatefulPartitionedCall¹
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_79204batch_normalization_1_79206batch_normalization_1_79208batch_normalization_1_79210*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_784972/
-batch_normalization_1/StatefulPartitionedCall©
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_79213batch_normalization_79215batch_normalization_79217batch_normalization_79219*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_785942-
+batch_normalization/StatefulPartitionedCall¤
tf.math.tanh_1/TanhTanh6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh 
tf.nn.relu_1/ReluRelu6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/Relu
#average_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_781512%
#average_pooling2d_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_781392!
max_pooling2d_3/PartitionedCall
#average_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_781272%
#average_pooling2d_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_781152!
max_pooling2d_2/PartitionedCall
#average_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_781032%
#average_pooling2d_1/PartitionedCallÿ
max_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_780912!
max_pooling2d_1/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_780792#
!average_pooling2d/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_780672
max_pooling2d/PartitionedCallñ
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_786782
flatten/PartitionedCallû
flatten_1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_786922
flatten_1/PartitionedCallù
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_787062
flatten_2/PartitionedCallý
flatten_3/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_787202
flatten_3/PartitionedCallù
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_787342
flatten_4/PartitionedCallý
flatten_5/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_787482
flatten_5/PartitionedCallù
flatten_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_787622
flatten_6/PartitionedCallý
flatten_7/PartitionedCallPartitionedCall,average_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_787762
flatten_7/PartitionedCallú
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0"flatten_6/PartitionedCall:output:0"flatten_7/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_787972
concatenate/PartitionedCall¡
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_79243dense_79245*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_788282
dense/StatefulPartitionedCall¯
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_79248batch_normalization_2_79250batch_normalization_2_79252batch_normalization_2_79254*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_782892/
-batch_normalization_2/StatefulPartitionedCall¬
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_79257*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_783582!
p_re_lu/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788942!
dropout/StatefulPartitionedCall®
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_79261dense_1_79263*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_789232!
dense_1/StatefulPartitionedCall¨
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79213*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79215*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul®
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79204*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mul¬
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79206*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79243* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul¯
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79252*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mul­
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79254*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mul¬
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*^custom_activation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp ^p_re_lu/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

h
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_78079

inputs
identity¶
AvgPoolAvgPoolinputs*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
AvgPool
IdentityIdentityAvgPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_78706

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ï
¦
3__inference_batch_normalization_layer_call_fn_80600

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_785942
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ó
Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80687

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ü
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul¿
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_78624

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2
FusedBatchNormV3¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul­
IdentityIdentityFusedBatchNormV3:y:0 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
µ

K__inference_custom_activation_layer_call_and_return_conditional_losses_9127

inputs
sub_readvariableop_resource#
truediv_readvariableop_resource!
sub_1_readvariableop_resource%
!truediv_1_readvariableop_resource!
sub_3_readvariableop_resource%
!truediv_3_readvariableop_resource!
sub_4_readvariableop_resource%
!truediv_4_readvariableop_resource!
sub_6_readvariableop_resource%
!truediv_6_readvariableop_resource!
sub_7_readvariableop_resource%
!truediv_7_readvariableop_resource!
sub_9_readvariableop_resource%
!truediv_9_readvariableop_resource&
"truediv_10_readvariableop_resource&
"truediv_11_readvariableop_resource&
"truediv_13_readvariableop_resource&
"truediv_14_readvariableop_resource&
"truediv_16_readvariableop_resource&
"truediv_17_readvariableop_resource&
"truediv_19_readvariableop_resource
identity

identity_1¢sub/ReadVariableOp¢sub_1/ReadVariableOp¢sub_10/ReadVariableOp¢sub_11/ReadVariableOp¢sub_12/ReadVariableOp¢sub_13/ReadVariableOp¢sub_14/ReadVariableOp¢sub_15/ReadVariableOp¢sub_16/ReadVariableOp¢sub_17/ReadVariableOp¢sub_18/ReadVariableOp¢sub_19/ReadVariableOp¢sub_2/ReadVariableOp¢sub_3/ReadVariableOp¢sub_4/ReadVariableOp¢sub_5/ReadVariableOp¢sub_6/ReadVariableOp¢sub_7/ReadVariableOp¢sub_8/ReadVariableOp¢sub_9/ReadVariableOp¢truediv/ReadVariableOp¢truediv_1/ReadVariableOp¢truediv_10/ReadVariableOp¢truediv_11/ReadVariableOp¢truediv_12/ReadVariableOp¢truediv_13/ReadVariableOp¢truediv_14/ReadVariableOp¢truediv_15/ReadVariableOp¢truediv_16/ReadVariableOp¢truediv_17/ReadVariableOp¢truediv_18/ReadVariableOp¢truediv_19/ReadVariableOp¢truediv_2/ReadVariableOp¢truediv_3/ReadVariableOp¢truediv_4/ReadVariableOp¢truediv_5/ReadVariableOp¢truediv_6/ReadVariableOp¢truediv_7/ReadVariableOp¢truediv_8/ReadVariableOp¢truediv_9/ReadVariableOp
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice|
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype02
sub/ReadVariableOpw
subSubstrided_slice:output:0sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
: *
dtype02
truediv/ReadVariableOpx
truedivRealDivsub:z:0truediv/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivS
TanhTanhtruediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1
sub_1/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_1/ReadVariableOp
sub_1Substrided_slice_1:output:0sub_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_1
truediv_1/ReadVariableOpReadVariableOp!truediv_1_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_1/ReadVariableOp
	truediv_1RealDiv	sub_1:z:0 truediv_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_1Y
Tanh_1Tanhtruediv_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_2/stack_2
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
sub_2/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_2/ReadVariableOp
sub_2Substrided_slice_2:output:0sub_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_2
truediv_2/ReadVariableOpReadVariableOp!truediv_1_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_2/ReadVariableOp
	truediv_2RealDiv	sub_2:z:0 truediv_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_2Y
Tanh_2Tanhtruediv_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_3/stack_2
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3
sub_3/ReadVariableOpReadVariableOpsub_3_readvariableop_resource*
_output_shapes
: *
dtype02
sub_3/ReadVariableOp
sub_3Substrided_slice_3:output:0sub_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_3
truediv_3/ReadVariableOpReadVariableOp!truediv_3_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_3/ReadVariableOp
	truediv_3RealDiv	sub_3:z:0 truediv_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_3Y
Tanh_3Tanhtruediv_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_4/stack_2
strided_slice_4StridedSliceinputsstrided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4
sub_4/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_4/ReadVariableOp
sub_4Substrided_slice_4:output:0sub_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_4
truediv_4/ReadVariableOpReadVariableOp!truediv_4_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_4/ReadVariableOp
	truediv_4RealDiv	sub_4:z:0 truediv_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_4Y
Tanh_4Tanhtruediv_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_4
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_5/stack
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_5/stack_1
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_5/stack_2
strided_slice_5StridedSliceinputsstrided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
sub_5/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_5/ReadVariableOp
sub_5Substrided_slice_5:output:0sub_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_5
truediv_5/ReadVariableOpReadVariableOp!truediv_4_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_5/ReadVariableOp
	truediv_5RealDiv	sub_5:z:0 truediv_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_5Y
Tanh_5Tanhtruediv_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_6/stack_2
strided_slice_6StridedSliceinputsstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6
sub_6/ReadVariableOpReadVariableOpsub_6_readvariableop_resource*
_output_shapes
: *
dtype02
sub_6/ReadVariableOp
sub_6Substrided_slice_6:output:0sub_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_6
truediv_6/ReadVariableOpReadVariableOp!truediv_6_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_6/ReadVariableOp
	truediv_6RealDiv	sub_6:z:0 truediv_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_6Y
Tanh_6Tanhtruediv_6:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_6
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_7/stack_2
strided_slice_7StridedSliceinputsstrided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_7
sub_7/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_7/ReadVariableOp
sub_7Substrided_slice_7:output:0sub_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_7
truediv_7/ReadVariableOpReadVariableOp!truediv_7_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_7/ReadVariableOp
	truediv_7RealDiv	sub_7:z:0 truediv_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_7Y
Tanh_7Tanhtruediv_7:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_7
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_8/stack_2
strided_slice_8StridedSliceinputsstrided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_8
sub_8/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_8/ReadVariableOp
sub_8Substrided_slice_8:output:0sub_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_8
truediv_8/ReadVariableOpReadVariableOp!truediv_7_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_8/ReadVariableOp
	truediv_8RealDiv	sub_8:z:0 truediv_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_8Y
Tanh_8Tanhtruediv_8:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_8
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_9/stack
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_9/stack_1
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_9/stack_2
strided_slice_9StridedSliceinputsstrided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_9
sub_9/ReadVariableOpReadVariableOpsub_9_readvariableop_resource*
_output_shapes
: *
dtype02
sub_9/ReadVariableOp
sub_9Substrided_slice_9:output:0sub_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_9
truediv_9/ReadVariableOpReadVariableOp!truediv_9_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_9/ReadVariableOp
	truediv_9RealDiv	sub_9:z:0 truediv_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_9Y
Tanh_9Tanhtruediv_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_9×
stackPackTanh:y:0
Tanh_1:y:0
Tanh_2:y:0
Tanh_3:y:0
Tanh_4:y:0
Tanh_5:y:0
Tanh_6:y:0
Tanh_7:y:0
Tanh_8:y:0
Tanh_9:y:0*
N
*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

axis2
stack
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_10/stack_2¤
strided_slice_10StridedSlicestack:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_10s
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape/shape
ReshapeReshapestrided_slice_10:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Reshape
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_11/stack
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_11/stack_1
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_11/stack_2¤
strided_slice_11StridedSlicestack:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_11w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_1/shape
	Reshape_1Reshapestrided_slice_11:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_1e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat/axis§
concatConcatV2Reshape_1:output:0stack:output:0Reshape:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
concat{
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿ
         2
Reshape_2/shape
	Reshape_2Reshapeconcat:output:0Reshape_2/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_2
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_12/stack
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_12/stack_1
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_12/stack_2
strided_slice_12StridedSliceinputsstrided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_12
sub_10/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype02
sub_10/ReadVariableOp
sub_10Substrided_slice_12:output:0sub_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_10
truediv_10/ReadVariableOpReadVariableOp"truediv_10_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_10/ReadVariableOp

truediv_10RealDiv
sub_10:z:0!truediv_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_10V
ReluRelutruediv_10:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu]
Log1pLog1pRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Log1p
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_13/stack
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_13/stack_1
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_13/stack_2
strided_slice_13StridedSliceinputsstrided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_13
sub_11/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_11/ReadVariableOp
sub_11Substrided_slice_13:output:0sub_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_11
truediv_11/ReadVariableOpReadVariableOp"truediv_11_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_11/ReadVariableOp

truediv_11RealDiv
sub_11:z:0!truediv_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_11Z
Relu_1Relutruediv_11:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1c
Log1p_1Log1pRelu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_1
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_14/stack
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_14/stack_1
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_14/stack_2
strided_slice_14StridedSliceinputsstrided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_14
sub_12/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_12/ReadVariableOp
sub_12Substrided_slice_14:output:0sub_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_12
truediv_12/ReadVariableOpReadVariableOp"truediv_11_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_12/ReadVariableOp

truediv_12RealDiv
sub_12:z:0!truediv_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_12Z
Relu_2Relutruediv_12:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_2c
Log1p_2Log1pRelu_2:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_2
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_15/stack
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_15/stack_1
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_15/stack_2
strided_slice_15StridedSliceinputsstrided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_15
sub_13/ReadVariableOpReadVariableOpsub_3_readvariableop_resource*
_output_shapes
: *
dtype02
sub_13/ReadVariableOp
sub_13Substrided_slice_15:output:0sub_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_13
truediv_13/ReadVariableOpReadVariableOp"truediv_13_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_13/ReadVariableOp

truediv_13RealDiv
sub_13:z:0!truediv_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_13Z
Relu_3Relutruediv_13:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_3c
Log1p_3Log1pRelu_3:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_3
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_16/stack
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_16/stack_1
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_16/stack_2
strided_slice_16StridedSliceinputsstrided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_16
sub_14/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_14/ReadVariableOp
sub_14Substrided_slice_16:output:0sub_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_14
truediv_14/ReadVariableOpReadVariableOp"truediv_14_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_14/ReadVariableOp

truediv_14RealDiv
sub_14:z:0!truediv_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_14Z
Relu_4Relutruediv_14:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_4c
Log1p_4Log1pRelu_4:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_4
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_17/stack
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_17/stack_1
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_17/stack_2
strided_slice_17StridedSliceinputsstrided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_17
sub_15/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_15/ReadVariableOp
sub_15Substrided_slice_17:output:0sub_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_15
truediv_15/ReadVariableOpReadVariableOp"truediv_14_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_15/ReadVariableOp

truediv_15RealDiv
sub_15:z:0!truediv_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_15Z
Relu_5Relutruediv_15:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_5c
Log1p_5Log1pRelu_5:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_5
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_18/stack
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_18/stack_1
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_18/stack_2
strided_slice_18StridedSliceinputsstrided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_18
sub_16/ReadVariableOpReadVariableOpsub_6_readvariableop_resource*
_output_shapes
: *
dtype02
sub_16/ReadVariableOp
sub_16Substrided_slice_18:output:0sub_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_16
truediv_16/ReadVariableOpReadVariableOp"truediv_16_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_16/ReadVariableOp

truediv_16RealDiv
sub_16:z:0!truediv_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_16Z
Relu_6Relutruediv_16:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_6c
Log1p_6Log1pRelu_6:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_6
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_19/stack
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_19/stack_1
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_19/stack_2
strided_slice_19StridedSliceinputsstrided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_19
sub_17/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_17/ReadVariableOp
sub_17Substrided_slice_19:output:0sub_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_17
truediv_17/ReadVariableOpReadVariableOp"truediv_17_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_17/ReadVariableOp

truediv_17RealDiv
sub_17:z:0!truediv_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_17Z
Relu_7Relutruediv_17:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_7c
Log1p_7Log1pRelu_7:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_7
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_20/stack
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_20/stack_1
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_20/stack_2
strided_slice_20StridedSliceinputsstrided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_20
sub_18/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_18/ReadVariableOp
sub_18Substrided_slice_20:output:0sub_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_18
truediv_18/ReadVariableOpReadVariableOp"truediv_17_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_18/ReadVariableOp

truediv_18RealDiv
sub_18:z:0!truediv_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_18Z
Relu_8Relutruediv_18:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_8c
Log1p_8Log1pRelu_8:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_8
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_21/stack
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_21/stack_1
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_21/stack_2
strided_slice_21StridedSliceinputsstrided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_21
sub_19/ReadVariableOpReadVariableOpsub_9_readvariableop_resource*
_output_shapes
: *
dtype02
sub_19/ReadVariableOp
sub_19Substrided_slice_21:output:0sub_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_19
truediv_19/ReadVariableOpReadVariableOp"truediv_19_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_19/ReadVariableOp

truediv_19RealDiv
sub_19:z:0!truediv_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_19Z
Relu_9Relutruediv_19:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_9c
Log1p_9Log1pRelu_9:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_9å
stack_1Pack	Log1p:y:0Log1p_1:y:0Log1p_2:y:0Log1p_3:y:0Log1p_4:y:0Log1p_5:y:0Log1p_6:y:0Log1p_7:y:0Log1p_8:y:0Log1p_9:y:0*
N
*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

axis2	
stack_1
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_22/stack
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_22/stack_1
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_22/stack_2¦
strided_slice_22StridedSlicestack_1:output:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_22w
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_3/shape
	Reshape_3Reshapestrided_slice_22:output:0Reshape_3/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_3
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_23/stack
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_23/stack_1
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_23/stack_2¦
strided_slice_23StridedSlicestack_1:output:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_23w
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_4/shape
	Reshape_4Reshapestrided_slice_23:output:0Reshape_4/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_4i
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_1/axis±
concat_1ConcatV2Reshape_4:output:0stack_1:output:0Reshape_3:output:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

concat_1{
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿ
         2
Reshape_5/shape
	Reshape_5Reshapeconcat_1:output:0Reshape_5/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_5æ
IdentityIdentityReshape_2:output:0^sub/ReadVariableOp^sub_1/ReadVariableOp^sub_10/ReadVariableOp^sub_11/ReadVariableOp^sub_12/ReadVariableOp^sub_13/ReadVariableOp^sub_14/ReadVariableOp^sub_15/ReadVariableOp^sub_16/ReadVariableOp^sub_17/ReadVariableOp^sub_18/ReadVariableOp^sub_19/ReadVariableOp^sub_2/ReadVariableOp^sub_3/ReadVariableOp^sub_4/ReadVariableOp^sub_5/ReadVariableOp^sub_6/ReadVariableOp^sub_7/ReadVariableOp^sub_8/ReadVariableOp^sub_9/ReadVariableOp^truediv/ReadVariableOp^truediv_1/ReadVariableOp^truediv_10/ReadVariableOp^truediv_11/ReadVariableOp^truediv_12/ReadVariableOp^truediv_13/ReadVariableOp^truediv_14/ReadVariableOp^truediv_15/ReadVariableOp^truediv_16/ReadVariableOp^truediv_17/ReadVariableOp^truediv_18/ReadVariableOp^truediv_19/ReadVariableOp^truediv_2/ReadVariableOp^truediv_3/ReadVariableOp^truediv_4/ReadVariableOp^truediv_5/ReadVariableOp^truediv_6/ReadVariableOp^truediv_7/ReadVariableOp^truediv_8/ReadVariableOp^truediv_9/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityê

Identity_1IdentityReshape_5:output:0^sub/ReadVariableOp^sub_1/ReadVariableOp^sub_10/ReadVariableOp^sub_11/ReadVariableOp^sub_12/ReadVariableOp^sub_13/ReadVariableOp^sub_14/ReadVariableOp^sub_15/ReadVariableOp^sub_16/ReadVariableOp^sub_17/ReadVariableOp^sub_18/ReadVariableOp^sub_19/ReadVariableOp^sub_2/ReadVariableOp^sub_3/ReadVariableOp^sub_4/ReadVariableOp^sub_5/ReadVariableOp^sub_6/ReadVariableOp^sub_7/ReadVariableOp^sub_8/ReadVariableOp^sub_9/ReadVariableOp^truediv/ReadVariableOp^truediv_1/ReadVariableOp^truediv_10/ReadVariableOp^truediv_11/ReadVariableOp^truediv_12/ReadVariableOp^truediv_13/ReadVariableOp^truediv_14/ReadVariableOp^truediv_15/ReadVariableOp^truediv_16/ReadVariableOp^truediv_17/ReadVariableOp^truediv_18/ReadVariableOp^truediv_19/ReadVariableOp^truediv_2/ReadVariableOp^truediv_3/ReadVariableOp^truediv_4/ReadVariableOp^truediv_5/ReadVariableOp^truediv_6/ReadVariableOp^truediv_7/ReadVariableOp^truediv_8/ReadVariableOp^truediv_9/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*~
_input_shapesm
k:ÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::2(
sub/ReadVariableOpsub/ReadVariableOp2,
sub_1/ReadVariableOpsub_1/ReadVariableOp2.
sub_10/ReadVariableOpsub_10/ReadVariableOp2.
sub_11/ReadVariableOpsub_11/ReadVariableOp2.
sub_12/ReadVariableOpsub_12/ReadVariableOp2.
sub_13/ReadVariableOpsub_13/ReadVariableOp2.
sub_14/ReadVariableOpsub_14/ReadVariableOp2.
sub_15/ReadVariableOpsub_15/ReadVariableOp2.
sub_16/ReadVariableOpsub_16/ReadVariableOp2.
sub_17/ReadVariableOpsub_17/ReadVariableOp2.
sub_18/ReadVariableOpsub_18/ReadVariableOp2.
sub_19/ReadVariableOpsub_19/ReadVariableOp2,
sub_2/ReadVariableOpsub_2/ReadVariableOp2,
sub_3/ReadVariableOpsub_3/ReadVariableOp2,
sub_4/ReadVariableOpsub_4/ReadVariableOp2,
sub_5/ReadVariableOpsub_5/ReadVariableOp2,
sub_6/ReadVariableOpsub_6/ReadVariableOp2,
sub_7/ReadVariableOpsub_7/ReadVariableOp2,
sub_8/ReadVariableOpsub_8/ReadVariableOp2,
sub_9/ReadVariableOpsub_9/ReadVariableOp20
truediv/ReadVariableOptruediv/ReadVariableOp24
truediv_1/ReadVariableOptruediv_1/ReadVariableOp26
truediv_10/ReadVariableOptruediv_10/ReadVariableOp26
truediv_11/ReadVariableOptruediv_11/ReadVariableOp26
truediv_12/ReadVariableOptruediv_12/ReadVariableOp26
truediv_13/ReadVariableOptruediv_13/ReadVariableOp26
truediv_14/ReadVariableOptruediv_14/ReadVariableOp26
truediv_15/ReadVariableOptruediv_15/ReadVariableOp26
truediv_16/ReadVariableOptruediv_16/ReadVariableOp26
truediv_17/ReadVariableOptruediv_17/ReadVariableOp26
truediv_18/ReadVariableOptruediv_18/ReadVariableOp26
truediv_19/ReadVariableOptruediv_19/ReadVariableOp24
truediv_2/ReadVariableOptruediv_2/ReadVariableOp24
truediv_3/ReadVariableOptruediv_3/ReadVariableOp24
truediv_4/ReadVariableOptruediv_4/ReadVariableOp24
truediv_5/ReadVariableOptruediv_5/ReadVariableOp24
truediv_6/ReadVariableOptruediv_6/ReadVariableOp24
truediv_7/ReadVariableOptruediv_7/ReadVariableOp24
truediv_8/ReadVariableOptruediv_8/ReadVariableOp24
truediv_9/ReadVariableOptruediv_9/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¦
3__inference_batch_normalization_layer_call_fn_80512

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_778552
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
K
/__inference_max_pooling2d_1_layer_call_fn_78097

inputs
identityë
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_780912
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
·

 __inference__wrapped_model_77757
input_1!
model_custom_activation_77604!
model_custom_activation_77606!
model_custom_activation_77608!
model_custom_activation_77610!
model_custom_activation_77612!
model_custom_activation_77614!
model_custom_activation_77616!
model_custom_activation_77618!
model_custom_activation_77620!
model_custom_activation_77622!
model_custom_activation_77624!
model_custom_activation_77626!
model_custom_activation_77628!
model_custom_activation_77630!
model_custom_activation_77632!
model_custom_activation_77634!
model_custom_activation_77636!
model_custom_activation_77638!
model_custom_activation_77640!
model_custom_activation_77642!
model_custom_activation_776441
-model_conv2d_1_conv2d_readvariableop_resource2
.model_conv2d_1_biasadd_readvariableop_resource/
+model_conv2d_conv2d_readvariableop_resource0
,model_conv2d_biasadd_readvariableop_resource7
3model_batch_normalization_1_readvariableop_resource9
5model_batch_normalization_1_readvariableop_1_resourceH
Dmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resourceJ
Fmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource5
1model_batch_normalization_readvariableop_resource7
3model_batch_normalization_readvariableop_1_resourceF
Bmodel_batch_normalization_fusedbatchnormv3_readvariableop_resourceH
Dmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource.
*model_dense_matmul_readvariableop_resource/
+model_dense_biasadd_readvariableop_resourceA
=model_batch_normalization_2_batchnorm_readvariableop_resourceE
Amodel_batch_normalization_2_batchnorm_mul_readvariableop_resourceC
?model_batch_normalization_2_batchnorm_readvariableop_1_resourceC
?model_batch_normalization_2_batchnorm_readvariableop_2_resource)
%model_p_re_lu_readvariableop_resource0
,model_dense_1_matmul_readvariableop_resource1
-model_dense_1_biasadd_readvariableop_resource
identity¢9model/batch_normalization/FusedBatchNormV3/ReadVariableOp¢;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1¢(model/batch_normalization/ReadVariableOp¢*model/batch_normalization/ReadVariableOp_1¢;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp¢=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1¢*model/batch_normalization_1/ReadVariableOp¢,model/batch_normalization_1/ReadVariableOp_1¢4model/batch_normalization_2/batchnorm/ReadVariableOp¢6model/batch_normalization_2/batchnorm/ReadVariableOp_1¢6model/batch_normalization_2/batchnorm/ReadVariableOp_2¢8model/batch_normalization_2/batchnorm/mul/ReadVariableOp¢#model/conv2d/BiasAdd/ReadVariableOp¢"model/conv2d/Conv2D/ReadVariableOp¢%model/conv2d_1/BiasAdd/ReadVariableOp¢$model/conv2d_1/Conv2D/ReadVariableOp¢/model/custom_activation/StatefulPartitionedCall¢"model/dense/BiasAdd/ReadVariableOp¢!model/dense/MatMul/ReadVariableOp¢$model/dense_1/BiasAdd/ReadVariableOp¢#model/dense_1/MatMul/ReadVariableOp¢model/p_re_lu/ReadVariableOpÊ
/model/custom_activation/StatefulPartitionedCallStatefulPartitionedCallinput_1model_custom_activation_77604model_custom_activation_77606model_custom_activation_77608model_custom_activation_77610model_custom_activation_77612model_custom_activation_77614model_custom_activation_77616model_custom_activation_77618model_custom_activation_77620model_custom_activation_77622model_custom_activation_77624model_custom_activation_77626model_custom_activation_77628model_custom_activation_77630model_custom_activation_77632model_custom_activation_77634model_custom_activation_77636model_custom_activation_77638model_custom_activation_77640model_custom_activation_77642model_custom_activation_77644*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_7760321
/model/custom_activation/StatefulPartitionedCallÂ
$model/conv2d_1/Conv2D/ReadVariableOpReadVariableOp-model_conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02&
$model/conv2d_1/Conv2D/ReadVariableOp
model/conv2d_1/Conv2DConv2D8model/custom_activation/StatefulPartitionedCall:output:1,model/conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
model/conv2d_1/Conv2D¹
%model/conv2d_1/BiasAdd/ReadVariableOpReadVariableOp.model_conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02'
%model/conv2d_1/BiasAdd/ReadVariableOpÄ
model/conv2d_1/BiasAddBiasAddmodel/conv2d_1/Conv2D:output:0-model/conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d_1/BiasAdd¼
"model/conv2d/Conv2D/ReadVariableOpReadVariableOp+model_conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02$
"model/conv2d/Conv2D/ReadVariableOpý
model/conv2d/Conv2DConv2D8model/custom_activation/StatefulPartitionedCall:output:0*model/conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
model/conv2d/Conv2D³
#model/conv2d/BiasAdd/ReadVariableOpReadVariableOp,model_conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02%
#model/conv2d/BiasAdd/ReadVariableOp¼
model/conv2d/BiasAddBiasAddmodel/conv2d/Conv2D:output:0+model/conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/conv2d/BiasAddÈ
*model/batch_normalization_1/ReadVariableOpReadVariableOp3model_batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02,
*model/batch_normalization_1/ReadVariableOpÎ
,model/batch_normalization_1/ReadVariableOp_1ReadVariableOp5model_batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02.
,model/batch_normalization_1/ReadVariableOp_1û
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOpDmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02=
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpFmodel_batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02?
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1
,model/batch_normalization_1/FusedBatchNormV3FusedBatchNormV3model/conv2d_1/BiasAdd:output:02model/batch_normalization_1/ReadVariableOp:value:04model/batch_normalization_1/ReadVariableOp_1:value:0Cmodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0Emodel/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2.
,model/batch_normalization_1/FusedBatchNormV3Â
(model/batch_normalization/ReadVariableOpReadVariableOp1model_batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02*
(model/batch_normalization/ReadVariableOpÈ
*model/batch_normalization/ReadVariableOp_1ReadVariableOp3model_batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02,
*model/batch_normalization/ReadVariableOp_1õ
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOpBmodel_batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02;
9model/batch_normalization/FusedBatchNormV3/ReadVariableOpû
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOpDmodel_batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02=
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1ý
*model/batch_normalization/FusedBatchNormV3FusedBatchNormV3model/conv2d/BiasAdd:output:00model/batch_normalization/ReadVariableOp:value:02model/batch_normalization/ReadVariableOp_1:value:0Amodel/batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0Cmodel/batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2,
*model/batch_normalization/FusedBatchNormV3ª
model/tf.math.tanh_1/TanhTanh0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.tanh_1/Tanh¦
model/tf.nn.relu_1/ReluRelu0model/batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.nn.relu_1/Relu¤
model/tf.math.tanh/TanhTanh.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.math.tanh/Tanh 
model/tf.nn.relu/ReluRelu.model/batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/tf.nn.relu/Reluæ
!model/average_pooling2d_3/AvgPoolAvgPoolmodel/tf.math.tanh_1/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2#
!model/average_pooling2d_3/AvgPoolÕ
model/max_pooling2d_3/MaxPoolMaxPoolmodel/tf.math.tanh_1/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_3/MaxPoolî
!model/average_pooling2d_2/AvgPoolAvgPool%model/tf.nn.relu_1/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2#
!model/average_pooling2d_2/AvgPoolÝ
model/max_pooling2d_2/MaxPoolMaxPool%model/tf.nn.relu_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_2/MaxPoolä
!model/average_pooling2d_1/AvgPoolAvgPoolmodel/tf.math.tanh/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2#
!model/average_pooling2d_1/AvgPoolÓ
model/max_pooling2d_1/MaxPoolMaxPoolmodel/tf.math.tanh/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d_1/MaxPoolè
model/average_pooling2d/AvgPoolAvgPool#model/tf.nn.relu/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2!
model/average_pooling2d/AvgPool×
model/max_pooling2d/MaxPoolMaxPool#model/tf.nn.relu/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
model/max_pooling2d/MaxPool{
model/flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten/Const°
model/flatten/ReshapeReshape$model/max_pooling2d/MaxPool:output:0model/flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten/Reshape
model/flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_1/Constº
model/flatten_1/ReshapeReshape(model/average_pooling2d/AvgPool:output:0model/flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_1/Reshape
model/flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_2/Const¸
model/flatten_2/ReshapeReshape&model/max_pooling2d_1/MaxPool:output:0model/flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_2/Reshape
model/flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_3/Const¼
model/flatten_3/ReshapeReshape*model/average_pooling2d_1/AvgPool:output:0model/flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_3/Reshape
model/flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_4/Const¸
model/flatten_4/ReshapeReshape&model/max_pooling2d_2/MaxPool:output:0model/flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_4/Reshape
model/flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_5/Const¼
model/flatten_5/ReshapeReshape*model/average_pooling2d_2/AvgPool:output:0model/flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_5/Reshape
model/flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_6/Const¸
model/flatten_6/ReshapeReshape&model/max_pooling2d_3/MaxPool:output:0model/flatten_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_6/Reshape
model/flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
model/flatten_7/Const¼
model/flatten_7/ReshapeReshape*model/average_pooling2d_3/AvgPool:output:0model/flatten_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
model/flatten_7/Reshape
model/concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
model/concatenate/concat/axis²
model/concatenate/concatConcatV2model/flatten/Reshape:output:0 model/flatten_1/Reshape:output:0 model/flatten_2/Reshape:output:0 model/flatten_3/Reshape:output:0 model/flatten_4/Reshape:output:0 model/flatten_5/Reshape:output:0 model/flatten_6/Reshape:output:0 model/flatten_7/Reshape:output:0&model/concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/concatenate/concat³
!model/dense/MatMul/ReadVariableOpReadVariableOp*model_dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02#
!model/dense/MatMul/ReadVariableOp³
model/dense/MatMulMatMul!model/concatenate/concat:output:0)model/dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense/MatMul±
"model/dense/BiasAdd/ReadVariableOpReadVariableOp+model_dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02$
"model/dense/BiasAdd/ReadVariableOp²
model/dense/BiasAddBiasAddmodel/dense/MatMul:product:0*model/dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense/BiasAddç
4model/batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp=model_batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype026
4model/batch_normalization_2/batchnorm/ReadVariableOp
+model/batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2-
+model/batch_normalization_2/batchnorm/add/yù
)model/batch_normalization_2/batchnorm/addAddV2<model/batch_normalization_2/batchnorm/ReadVariableOp:value:04model/batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2+
)model/batch_normalization_2/batchnorm/add¸
+model/batch_normalization_2/batchnorm/RsqrtRsqrt-model/batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2-
+model/batch_normalization_2/batchnorm/Rsqrtó
8model/batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOpAmodel_batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02:
8model/batch_normalization_2/batchnorm/mul/ReadVariableOpö
)model/batch_normalization_2/batchnorm/mulMul/model/batch_normalization_2/batchnorm/Rsqrt:y:0@model/batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2+
)model/batch_normalization_2/batchnorm/mulá
+model/batch_normalization_2/batchnorm/mul_1Mulmodel/dense/BiasAdd:output:0-model/batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model/batch_normalization_2/batchnorm/mul_1í
6model/batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp?model_batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype028
6model/batch_normalization_2/batchnorm/ReadVariableOp_1ö
+model/batch_normalization_2/batchnorm/mul_2Mul>model/batch_normalization_2/batchnorm/ReadVariableOp_1:value:0-model/batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2-
+model/batch_normalization_2/batchnorm/mul_2í
6model/batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp?model_batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype028
6model/batch_normalization_2/batchnorm/ReadVariableOp_2ô
)model/batch_normalization_2/batchnorm/subSub>model/batch_normalization_2/batchnorm/ReadVariableOp_2:value:0/model/batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2+
)model/batch_normalization_2/batchnorm/subö
+model/batch_normalization_2/batchnorm/add_1AddV2/model/batch_normalization_2/batchnorm/mul_1:z:0-model/batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2-
+model/batch_normalization_2/batchnorm/add_1
model/p_re_lu/ReluRelu/model/batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/p_re_lu/Relu
model/p_re_lu/ReadVariableOpReadVariableOp%model_p_re_lu_readvariableop_resource*
_output_shapes	
:*
dtype02
model/p_re_lu/ReadVariableOpy
model/p_re_lu/NegNeg$model/p_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
model/p_re_lu/Neg
model/p_re_lu/Neg_1Neg/model/batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/p_re_lu/Neg_1
model/p_re_lu/Relu_1Relumodel/p_re_lu/Neg_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/p_re_lu/Relu_1
model/p_re_lu/mulMulmodel/p_re_lu/Neg:y:0"model/p_re_lu/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/p_re_lu/mul
model/p_re_lu/addAddV2 model/p_re_lu/Relu:activations:0model/p_re_lu/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/p_re_lu/add
model/dropout/IdentityIdentitymodel/p_re_lu/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dropout/Identity¸
#model/dense_1/MatMul/ReadVariableOpReadVariableOp,model_dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02%
#model/dense_1/MatMul/ReadVariableOp¶
model/dense_1/MatMulMatMulmodel/dropout/Identity:output:0+model/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/MatMul¶
$model/dense_1/BiasAdd/ReadVariableOpReadVariableOp-model_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02&
$model/dense_1/BiasAdd/ReadVariableOp¹
model/dense_1/BiasAddBiasAddmodel/dense_1/MatMul:product:0,model/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/BiasAdd
model/dense_1/SoftmaxSoftmaxmodel/dense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
model/dense_1/Softmax	
IdentityIdentitymodel/dense_1/Softmax:softmax:0:^model/batch_normalization/FusedBatchNormV3/ReadVariableOp<^model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1)^model/batch_normalization/ReadVariableOp+^model/batch_normalization/ReadVariableOp_1<^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp>^model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1+^model/batch_normalization_1/ReadVariableOp-^model/batch_normalization_1/ReadVariableOp_15^model/batch_normalization_2/batchnorm/ReadVariableOp7^model/batch_normalization_2/batchnorm/ReadVariableOp_17^model/batch_normalization_2/batchnorm/ReadVariableOp_29^model/batch_normalization_2/batchnorm/mul/ReadVariableOp$^model/conv2d/BiasAdd/ReadVariableOp#^model/conv2d/Conv2D/ReadVariableOp&^model/conv2d_1/BiasAdd/ReadVariableOp%^model/conv2d_1/Conv2D/ReadVariableOp0^model/custom_activation/StatefulPartitionedCall#^model/dense/BiasAdd/ReadVariableOp"^model/dense/MatMul/ReadVariableOp%^model/dense_1/BiasAdd/ReadVariableOp$^model/dense_1/MatMul/ReadVariableOp^model/p_re_lu/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2v
9model/batch_normalization/FusedBatchNormV3/ReadVariableOp9model/batch_normalization/FusedBatchNormV3/ReadVariableOp2z
;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_1;model/batch_normalization/FusedBatchNormV3/ReadVariableOp_12T
(model/batch_normalization/ReadVariableOp(model/batch_normalization/ReadVariableOp2X
*model/batch_normalization/ReadVariableOp_1*model/batch_normalization/ReadVariableOp_12z
;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp;model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp2~
=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1=model/batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12X
*model/batch_normalization_1/ReadVariableOp*model/batch_normalization_1/ReadVariableOp2\
,model/batch_normalization_1/ReadVariableOp_1,model/batch_normalization_1/ReadVariableOp_12l
4model/batch_normalization_2/batchnorm/ReadVariableOp4model/batch_normalization_2/batchnorm/ReadVariableOp2p
6model/batch_normalization_2/batchnorm/ReadVariableOp_16model/batch_normalization_2/batchnorm/ReadVariableOp_12p
6model/batch_normalization_2/batchnorm/ReadVariableOp_26model/batch_normalization_2/batchnorm/ReadVariableOp_22t
8model/batch_normalization_2/batchnorm/mul/ReadVariableOp8model/batch_normalization_2/batchnorm/mul/ReadVariableOp2J
#model/conv2d/BiasAdd/ReadVariableOp#model/conv2d/BiasAdd/ReadVariableOp2H
"model/conv2d/Conv2D/ReadVariableOp"model/conv2d/Conv2D/ReadVariableOp2N
%model/conv2d_1/BiasAdd/ReadVariableOp%model/conv2d_1/BiasAdd/ReadVariableOp2L
$model/conv2d_1/Conv2D/ReadVariableOp$model/conv2d_1/Conv2D/ReadVariableOp2b
/model/custom_activation/StatefulPartitionedCall/model/custom_activation/StatefulPartitionedCall2H
"model/dense/BiasAdd/ReadVariableOp"model/dense/BiasAdd/ReadVariableOp2F
!model/dense/MatMul/ReadVariableOp!model/dense/MatMul/ReadVariableOp2L
$model/dense_1/BiasAdd/ReadVariableOp$model/dense_1/BiasAdd/ReadVariableOp2J
#model/dense_1/MatMul/ReadVariableOp#model/dense_1/MatMul/ReadVariableOp2<
model/p_re_lu/ReadVariableOpmodel/p_re_lu/ReadVariableOp:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¼
`
D__inference_flatten_2_layer_call_and_return_conditional_losses_80829

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
%
è
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80557

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1Ø
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÑ
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*>
_input_shapes-
+:ÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
«
K
/__inference_max_pooling2d_2_layer_call_fn_78121

inputs
identityë
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_781152
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¶
ú
@__inference_model_layer_call_and_return_conditional_losses_79144
input_1
custom_activation_78985
custom_activation_78987
custom_activation_78989
custom_activation_78991
custom_activation_78993
custom_activation_78995
custom_activation_78997
custom_activation_78999
custom_activation_79001
custom_activation_79003
custom_activation_79005
custom_activation_79007
custom_activation_79009
custom_activation_79011
custom_activation_79013
custom_activation_79015
custom_activation_79017
custom_activation_79019
custom_activation_79021
custom_activation_79023
custom_activation_79025
conv2d_1_79029
conv2d_1_79031
conv2d_79034
conv2d_79036
batch_normalization_1_79039
batch_normalization_1_79041
batch_normalization_1_79043
batch_normalization_1_79045
batch_normalization_79048
batch_normalization_79050
batch_normalization_79052
batch_normalization_79054
dense_79078
dense_79080
batch_normalization_2_79083
batch_normalization_2_79085
batch_normalization_2_79087
batch_normalization_2_79089
p_re_lu_79092
dense_1_79096
dense_1_79098
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢)custom_activation/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/StatefulPartitionedCallÀ
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinput_1custom_activation_78985custom_activation_78987custom_activation_78989custom_activation_78991custom_activation_78993custom_activation_78995custom_activation_78997custom_activation_78999custom_activation_79001custom_activation_79003custom_activation_79005custom_activation_79007custom_activation_79009custom_activation_79011custom_activation_79013custom_activation_79015custom_activation_79017custom_activation_79019custom_activation_79021custom_activation_79023custom_activation_79025*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCallÅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:1conv2d_1_79029conv2d_1_79031*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_784242"
 conv2d_1/StatefulPartitionedCall»
conv2d/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:0conv2d_79034conv2d_79036*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_784502 
conv2d/StatefulPartitionedCall»
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_79039batch_normalization_1_79041batch_normalization_1_79043batch_normalization_1_79045*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_785272/
-batch_normalization_1/StatefulPartitionedCall«
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_79048batch_normalization_79050batch_normalization_79052batch_normalization_79054*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_786242-
+batch_normalization/StatefulPartitionedCall¤
tf.math.tanh_1/TanhTanh6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh 
tf.nn.relu_1/ReluRelu6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/Relu
#average_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_781512%
#average_pooling2d_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_781392!
max_pooling2d_3/PartitionedCall
#average_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_781272%
#average_pooling2d_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_781152!
max_pooling2d_2/PartitionedCall
#average_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_781032%
#average_pooling2d_1/PartitionedCallÿ
max_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_780912!
max_pooling2d_1/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_780792#
!average_pooling2d/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_780672
max_pooling2d/PartitionedCallñ
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_786782
flatten/PartitionedCallû
flatten_1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_786922
flatten_1/PartitionedCallù
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_787062
flatten_2/PartitionedCallý
flatten_3/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_787202
flatten_3/PartitionedCallù
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_787342
flatten_4/PartitionedCallý
flatten_5/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_787482
flatten_5/PartitionedCallù
flatten_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_787622
flatten_6/PartitionedCallý
flatten_7/PartitionedCallPartitionedCall,average_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_787762
flatten_7/PartitionedCallú
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0"flatten_6/PartitionedCall:output:0"flatten_7/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_787972
concatenate/PartitionedCall¡
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_79078dense_79080*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_788282
dense/StatefulPartitionedCall±
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_79083batch_normalization_2_79085batch_normalization_2_79087batch_normalization_2_79089*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_783342/
-batch_normalization_2/StatefulPartitionedCall¬
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_79092*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_783582!
p_re_lu/StatefulPartitionedCalló
dropout/PartitionedCallPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788992
dropout/PartitionedCall¦
dense_1/StatefulPartitionedCallStatefulPartitionedCall dropout/PartitionedCall:output:0dense_1_79096dense_1_79098*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_789232!
dense_1/StatefulPartitionedCall¨
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79048*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_79050*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul®
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79039*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mul¬
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_79041*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_79078* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul¯
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79085*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mul­
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_79089*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mul
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*^custom_activation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp ^p_re_lu/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
¼
`
D__inference_flatten_1_layer_call_and_return_conditional_losses_80818

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
ª


__inference_loss_fn_2_811434
0gamma_regularizer_square_readvariableop_resource
identity¢'gamma/Regularizer/Square/ReadVariableOp¿
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp0gamma_regularizer_square_readvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul
IdentityIdentitygamma/Regularizer/mul:z:0(^gamma/Regularizer/Square/ReadVariableOp*
T0*
_output_shapes
: 2

Identity"
identityIdentity:output:0*
_input_shapes
:2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp
«·

@__inference_model_layer_call_and_return_conditional_losses_78982
input_1
custom_activation_78370
custom_activation_78372
custom_activation_78374
custom_activation_78376
custom_activation_78378
custom_activation_78380
custom_activation_78382
custom_activation_78384
custom_activation_78386
custom_activation_78388
custom_activation_78390
custom_activation_78392
custom_activation_78394
custom_activation_78396
custom_activation_78398
custom_activation_78400
custom_activation_78402
custom_activation_78404
custom_activation_78406
custom_activation_78408
custom_activation_78410
conv2d_1_78435
conv2d_1_78437
conv2d_78461
conv2d_78463
batch_normalization_1_78554
batch_normalization_1_78556
batch_normalization_1_78558
batch_normalization_1_78560
batch_normalization_78651
batch_normalization_78653
batch_normalization_78655
batch_normalization_78657
dense_78839
dense_78841
batch_normalization_2_78870
batch_normalization_2_78872
batch_normalization_2_78874
batch_normalization_2_78876
p_re_lu_78879
dense_1_78934
dense_1_78936
identity¢+batch_normalization/StatefulPartitionedCall¢-batch_normalization_1/StatefulPartitionedCall¢-batch_normalization_2/StatefulPartitionedCall¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/StatefulPartitionedCall¢ conv2d_1/StatefulPartitionedCall¢)custom_activation/StatefulPartitionedCall¢dense/StatefulPartitionedCall¢dense_1/StatefulPartitionedCall¢dropout/StatefulPartitionedCall¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/StatefulPartitionedCallÀ
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinput_1custom_activation_78370custom_activation_78372custom_activation_78374custom_activation_78376custom_activation_78378custom_activation_78380custom_activation_78382custom_activation_78384custom_activation_78386custom_activation_78388custom_activation_78390custom_activation_78392custom_activation_78394custom_activation_78396custom_activation_78398custom_activation_78400custom_activation_78402custom_activation_78404custom_activation_78406custom_activation_78408custom_activation_78410*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCallÅ
 conv2d_1/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:1conv2d_1_78435conv2d_1_78437*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_conv2d_1_layer_call_and_return_conditional_losses_784242"
 conv2d_1/StatefulPartitionedCall»
conv2d/StatefulPartitionedCallStatefulPartitionedCall2custom_activation/StatefulPartitionedCall:output:0conv2d_78461conv2d_78463*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *J
fERC
A__inference_conv2d_layer_call_and_return_conditional_losses_784502 
conv2d/StatefulPartitionedCall¹
-batch_normalization_1/StatefulPartitionedCallStatefulPartitionedCall)conv2d_1/StatefulPartitionedCall:output:0batch_normalization_1_78554batch_normalization_1_78556batch_normalization_1_78558batch_normalization_1_78560*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_784972/
-batch_normalization_1/StatefulPartitionedCall©
+batch_normalization/StatefulPartitionedCallStatefulPartitionedCall'conv2d/StatefulPartitionedCall:output:0batch_normalization_78651batch_normalization_78653batch_normalization_78655batch_normalization_78657*
Tin	
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_batch_normalization_layer_call_and_return_conditional_losses_785942-
+batch_normalization/StatefulPartitionedCall¤
tf.math.tanh_1/TanhTanh6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh 
tf.nn.relu_1/ReluRelu6batch_normalization_1/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu4batch_normalization/StatefulPartitionedCall:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/Relu
#average_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_781512%
#average_pooling2d_3/PartitionedCall
max_pooling2d_3/PartitionedCallPartitionedCalltf.math.tanh_1/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_781392!
max_pooling2d_3/PartitionedCall
#average_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_781272%
#average_pooling2d_2/PartitionedCall
max_pooling2d_2/PartitionedCallPartitionedCalltf.nn.relu_1/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_781152!
max_pooling2d_2/PartitionedCall
#average_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *W
fRRP
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_781032%
#average_pooling2d_1/PartitionedCallÿ
max_pooling2d_1/PartitionedCallPartitionedCalltf.math.tanh/Tanh:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_780912!
max_pooling2d_1/PartitionedCall
!average_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *U
fPRN
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_780792#
!average_pooling2d/PartitionedCall
max_pooling2d/PartitionedCallPartitionedCalltf.nn.relu/Relu:activations:0*
Tin
2*
Tout
2*
_collective_manager_ids
 */
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *Q
fLRJ
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_780672
max_pooling2d/PartitionedCallñ
flatten/PartitionedCallPartitionedCall&max_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_flatten_layer_call_and_return_conditional_losses_786782
flatten/PartitionedCallû
flatten_1/PartitionedCallPartitionedCall*average_pooling2d/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_786922
flatten_1/PartitionedCallù
flatten_2/PartitionedCallPartitionedCall(max_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_2_layer_call_and_return_conditional_losses_787062
flatten_2/PartitionedCallý
flatten_3/PartitionedCallPartitionedCall,average_pooling2d_1/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_787202
flatten_3/PartitionedCallù
flatten_4/PartitionedCallPartitionedCall(max_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_4_layer_call_and_return_conditional_losses_787342
flatten_4/PartitionedCallý
flatten_5/PartitionedCallPartitionedCall,average_pooling2d_2/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_5_layer_call_and_return_conditional_losses_787482
flatten_5/PartitionedCallù
flatten_6/PartitionedCallPartitionedCall(max_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_6_layer_call_and_return_conditional_losses_787622
flatten_6/PartitionedCallý
flatten_7/PartitionedCallPartitionedCall,average_pooling2d_3/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_7_layer_call_and_return_conditional_losses_787762
flatten_7/PartitionedCallú
concatenate/PartitionedCallPartitionedCall flatten/PartitionedCall:output:0"flatten_1/PartitionedCall:output:0"flatten_2/PartitionedCall:output:0"flatten_3/PartitionedCall:output:0"flatten_4/PartitionedCall:output:0"flatten_5/PartitionedCall:output:0"flatten_6/PartitionedCall:output:0"flatten_7/PartitionedCall:output:0*
Tin

2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *O
fJRH
F__inference_concatenate_layer_call_and_return_conditional_losses_787972
concatenate/PartitionedCall¡
dense/StatefulPartitionedCallStatefulPartitionedCall$concatenate/PartitionedCall:output:0dense_78839dense_78841*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_dense_layer_call_and_return_conditional_losses_788282
dense/StatefulPartitionedCall¯
-batch_normalization_2/StatefulPartitionedCallStatefulPartitionedCall&dense/StatefulPartitionedCall:output:0batch_normalization_2_78870batch_normalization_2_78872batch_normalization_2_78874batch_normalization_2_78876*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_782892/
-batch_normalization_2/StatefulPartitionedCall¬
p_re_lu/StatefulPartitionedCallStatefulPartitionedCall6batch_normalization_2/StatefulPartitionedCall:output:0p_re_lu_78879*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*#
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_p_re_lu_layer_call_and_return_conditional_losses_783582!
p_re_lu/StatefulPartitionedCall
dropout/StatefulPartitionedCallStatefulPartitionedCall(p_re_lu/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dropout_layer_call_and_return_conditional_losses_788942!
dropout/StatefulPartitionedCall®
dense_1/StatefulPartitionedCallStatefulPartitionedCall(dropout/StatefulPartitionedCall:output:0dense_1_78934dense_1_78936*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_dense_1_layer_call_and_return_conditional_losses_789232!
dense_1/StatefulPartitionedCall¨
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_78651*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpbatch_normalization_78653*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mul®
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_78554*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mul¬
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOpbatch_normalization_1_78556*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul¢
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_78839* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mul¯
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_78874*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mul­
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOpbatch_normalization_2_78876*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mul¬
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0,^batch_normalization/StatefulPartitionedCall.^batch_normalization_1/StatefulPartitionedCall.^batch_normalization_2/StatefulPartitionedCall'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/StatefulPartitionedCall!^conv2d_1/StatefulPartitionedCall*^custom_activation/StatefulPartitionedCall^dense/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall ^dropout/StatefulPartitionedCall(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp ^p_re_lu/StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2Z
+batch_normalization/StatefulPartitionedCall+batch_normalization/StatefulPartitionedCall2^
-batch_normalization_1/StatefulPartitionedCall-batch_normalization_1/StatefulPartitionedCall2^
-batch_normalization_2/StatefulPartitionedCall-batch_normalization_2/StatefulPartitionedCall2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2@
conv2d/StatefulPartitionedCallconv2d/StatefulPartitionedCall2D
 conv2d_1/StatefulPartitionedCall conv2d_1/StatefulPartitionedCall2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2>
dense/StatefulPartitionedCalldense/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2B
dropout/StatefulPartitionedCalldropout/StatefulPartitionedCall2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp2B
p_re_lu/StatefulPartitionedCallp_re_lu/StatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
µ

K__inference_custom_activation_layer_call_and_return_conditional_losses_7676

inputs
sub_readvariableop_resource#
truediv_readvariableop_resource!
sub_1_readvariableop_resource%
!truediv_1_readvariableop_resource!
sub_3_readvariableop_resource%
!truediv_3_readvariableop_resource!
sub_4_readvariableop_resource%
!truediv_4_readvariableop_resource!
sub_6_readvariableop_resource%
!truediv_6_readvariableop_resource!
sub_7_readvariableop_resource%
!truediv_7_readvariableop_resource!
sub_9_readvariableop_resource%
!truediv_9_readvariableop_resource&
"truediv_10_readvariableop_resource&
"truediv_11_readvariableop_resource&
"truediv_13_readvariableop_resource&
"truediv_14_readvariableop_resource&
"truediv_16_readvariableop_resource&
"truediv_17_readvariableop_resource&
"truediv_19_readvariableop_resource
identity

identity_1¢sub/ReadVariableOp¢sub_1/ReadVariableOp¢sub_10/ReadVariableOp¢sub_11/ReadVariableOp¢sub_12/ReadVariableOp¢sub_13/ReadVariableOp¢sub_14/ReadVariableOp¢sub_15/ReadVariableOp¢sub_16/ReadVariableOp¢sub_17/ReadVariableOp¢sub_18/ReadVariableOp¢sub_19/ReadVariableOp¢sub_2/ReadVariableOp¢sub_3/ReadVariableOp¢sub_4/ReadVariableOp¢sub_5/ReadVariableOp¢sub_6/ReadVariableOp¢sub_7/ReadVariableOp¢sub_8/ReadVariableOp¢sub_9/ReadVariableOp¢truediv/ReadVariableOp¢truediv_1/ReadVariableOp¢truediv_10/ReadVariableOp¢truediv_11/ReadVariableOp¢truediv_12/ReadVariableOp¢truediv_13/ReadVariableOp¢truediv_14/ReadVariableOp¢truediv_15/ReadVariableOp¢truediv_16/ReadVariableOp¢truediv_17/ReadVariableOp¢truediv_18/ReadVariableOp¢truediv_19/ReadVariableOp¢truediv_2/ReadVariableOp¢truediv_3/ReadVariableOp¢truediv_4/ReadVariableOp¢truediv_5/ReadVariableOp¢truediv_6/ReadVariableOp¢truediv_7/ReadVariableOp¢truediv_8/ReadVariableOp¢truediv_9/ReadVariableOp
strided_slice/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice/stack
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice/stack_1
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice/stack_2
strided_sliceStridedSliceinputsstrided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice|
sub/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype02
sub/ReadVariableOpw
subSubstrided_slice:output:0sub/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub
truediv/ReadVariableOpReadVariableOptruediv_readvariableop_resource*
_output_shapes
: *
dtype02
truediv/ReadVariableOpx
truedivRealDivsub:z:0truediv/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
truedivS
TanhTanhtruediv:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_1/stack
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_1/stack_1
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_1/stack_2
strided_slice_1StridedSliceinputsstrided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_1
sub_1/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_1/ReadVariableOp
sub_1Substrided_slice_1:output:0sub_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_1
truediv_1/ReadVariableOpReadVariableOp!truediv_1_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_1/ReadVariableOp
	truediv_1RealDiv	sub_1:z:0 truediv_1/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_1Y
Tanh_1Tanhtruediv_1:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_1
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_2/stack
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_2/stack_1
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_2/stack_2
strided_slice_2StridedSliceinputsstrided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_2
sub_2/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_2/ReadVariableOp
sub_2Substrided_slice_2:output:0sub_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_2
truediv_2/ReadVariableOpReadVariableOp!truediv_1_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_2/ReadVariableOp
	truediv_2RealDiv	sub_2:z:0 truediv_2/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_2Y
Tanh_2Tanhtruediv_2:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_2
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_3/stack
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_3/stack_1
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_3/stack_2
strided_slice_3StridedSliceinputsstrided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_3
sub_3/ReadVariableOpReadVariableOpsub_3_readvariableop_resource*
_output_shapes
: *
dtype02
sub_3/ReadVariableOp
sub_3Substrided_slice_3:output:0sub_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_3
truediv_3/ReadVariableOpReadVariableOp!truediv_3_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_3/ReadVariableOp
	truediv_3RealDiv	sub_3:z:0 truediv_3/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_3Y
Tanh_3Tanhtruediv_3:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_3
strided_slice_4/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_4/stack
strided_slice_4/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_4/stack_1
strided_slice_4/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_4/stack_2
strided_slice_4StridedSliceinputsstrided_slice_4/stack:output:0 strided_slice_4/stack_1:output:0 strided_slice_4/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_4
sub_4/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_4/ReadVariableOp
sub_4Substrided_slice_4:output:0sub_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_4
truediv_4/ReadVariableOpReadVariableOp!truediv_4_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_4/ReadVariableOp
	truediv_4RealDiv	sub_4:z:0 truediv_4/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_4Y
Tanh_4Tanhtruediv_4:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_4
strided_slice_5/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_5/stack
strided_slice_5/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_5/stack_1
strided_slice_5/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_5/stack_2
strided_slice_5StridedSliceinputsstrided_slice_5/stack:output:0 strided_slice_5/stack_1:output:0 strided_slice_5/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_5
sub_5/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_5/ReadVariableOp
sub_5Substrided_slice_5:output:0sub_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_5
truediv_5/ReadVariableOpReadVariableOp!truediv_4_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_5/ReadVariableOp
	truediv_5RealDiv	sub_5:z:0 truediv_5/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_5Y
Tanh_5Tanhtruediv_5:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_5
strided_slice_6/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_6/stack
strided_slice_6/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_6/stack_1
strided_slice_6/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_6/stack_2
strided_slice_6StridedSliceinputsstrided_slice_6/stack:output:0 strided_slice_6/stack_1:output:0 strided_slice_6/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_6
sub_6/ReadVariableOpReadVariableOpsub_6_readvariableop_resource*
_output_shapes
: *
dtype02
sub_6/ReadVariableOp
sub_6Substrided_slice_6:output:0sub_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_6
truediv_6/ReadVariableOpReadVariableOp!truediv_6_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_6/ReadVariableOp
	truediv_6RealDiv	sub_6:z:0 truediv_6/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_6Y
Tanh_6Tanhtruediv_6:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_6
strided_slice_7/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_7/stack
strided_slice_7/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_7/stack_1
strided_slice_7/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_7/stack_2
strided_slice_7StridedSliceinputsstrided_slice_7/stack:output:0 strided_slice_7/stack_1:output:0 strided_slice_7/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_7
sub_7/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_7/ReadVariableOp
sub_7Substrided_slice_7:output:0sub_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_7
truediv_7/ReadVariableOpReadVariableOp!truediv_7_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_7/ReadVariableOp
	truediv_7RealDiv	sub_7:z:0 truediv_7/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_7Y
Tanh_7Tanhtruediv_7:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_7
strided_slice_8/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_8/stack
strided_slice_8/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_8/stack_1
strided_slice_8/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_8/stack_2
strided_slice_8StridedSliceinputsstrided_slice_8/stack:output:0 strided_slice_8/stack_1:output:0 strided_slice_8/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_8
sub_8/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_8/ReadVariableOp
sub_8Substrided_slice_8:output:0sub_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_8
truediv_8/ReadVariableOpReadVariableOp!truediv_7_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_8/ReadVariableOp
	truediv_8RealDiv	sub_8:z:0 truediv_8/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_8Y
Tanh_8Tanhtruediv_8:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_8
strided_slice_9/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_9/stack
strided_slice_9/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_9/stack_1
strided_slice_9/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_9/stack_2
strided_slice_9StridedSliceinputsstrided_slice_9/stack:output:0 strided_slice_9/stack_1:output:0 strided_slice_9/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_9
sub_9/ReadVariableOpReadVariableOpsub_9_readvariableop_resource*
_output_shapes
: *
dtype02
sub_9/ReadVariableOp
sub_9Substrided_slice_9:output:0sub_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_9
truediv_9/ReadVariableOpReadVariableOp!truediv_9_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_9/ReadVariableOp
	truediv_9RealDiv	sub_9:z:0 truediv_9/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
	truediv_9Y
Tanh_9Tanhtruediv_9:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Tanh_9×
stackPackTanh:y:0
Tanh_1:y:0
Tanh_2:y:0
Tanh_3:y:0
Tanh_4:y:0
Tanh_5:y:0
Tanh_6:y:0
Tanh_7:y:0
Tanh_8:y:0
Tanh_9:y:0*
N
*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

axis2
stack
strided_slice_10/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_10/stack
strided_slice_10/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_10/stack_1
strided_slice_10/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_10/stack_2¤
strided_slice_10StridedSlicestack:output:0strided_slice_10/stack:output:0!strided_slice_10/stack_1:output:0!strided_slice_10/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_10s
Reshape/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape/shape
ReshapeReshapestrided_slice_10:output:0Reshape/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2	
Reshape
strided_slice_11/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_11/stack
strided_slice_11/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_11/stack_1
strided_slice_11/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_11/stack_2¤
strided_slice_11StridedSlicestack:output:0strided_slice_11/stack:output:0!strided_slice_11/stack_1:output:0!strided_slice_11/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_11w
Reshape_1/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_1/shape
	Reshape_1Reshapestrided_slice_11:output:0Reshape_1/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_1e
concat/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat/axis§
concatConcatV2Reshape_1:output:0stack:output:0Reshape:output:0concat/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
concat{
Reshape_2/shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿ
         2
Reshape_2/shape
	Reshape_2Reshapeconcat:output:0Reshape_2/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_2
strided_slice_12/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_12/stack
strided_slice_12/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_12/stack_1
strided_slice_12/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_12/stack_2
strided_slice_12StridedSliceinputsstrided_slice_12/stack:output:0!strided_slice_12/stack_1:output:0!strided_slice_12/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_12
sub_10/ReadVariableOpReadVariableOpsub_readvariableop_resource*
_output_shapes
: *
dtype02
sub_10/ReadVariableOp
sub_10Substrided_slice_12:output:0sub_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_10
truediv_10/ReadVariableOpReadVariableOp"truediv_10_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_10/ReadVariableOp

truediv_10RealDiv
sub_10:z:0!truediv_10/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_10V
ReluRelutruediv_10:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu]
Log1pLog1pRelu:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Log1p
strided_slice_13/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_13/stack
strided_slice_13/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_13/stack_1
strided_slice_13/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_13/stack_2
strided_slice_13StridedSliceinputsstrided_slice_13/stack:output:0!strided_slice_13/stack_1:output:0!strided_slice_13/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_13
sub_11/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_11/ReadVariableOp
sub_11Substrided_slice_13:output:0sub_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_11
truediv_11/ReadVariableOpReadVariableOp"truediv_11_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_11/ReadVariableOp

truediv_11RealDiv
sub_11:z:0!truediv_11/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_11Z
Relu_1Relutruediv_11:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_1c
Log1p_1Log1pRelu_1:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_1
strided_slice_14/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_14/stack
strided_slice_14/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_14/stack_1
strided_slice_14/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_14/stack_2
strided_slice_14StridedSliceinputsstrided_slice_14/stack:output:0!strided_slice_14/stack_1:output:0!strided_slice_14/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_14
sub_12/ReadVariableOpReadVariableOpsub_1_readvariableop_resource*
_output_shapes
: *
dtype02
sub_12/ReadVariableOp
sub_12Substrided_slice_14:output:0sub_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_12
truediv_12/ReadVariableOpReadVariableOp"truediv_11_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_12/ReadVariableOp

truediv_12RealDiv
sub_12:z:0!truediv_12/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_12Z
Relu_2Relutruediv_12:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_2c
Log1p_2Log1pRelu_2:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_2
strided_slice_15/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_15/stack
strided_slice_15/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_15/stack_1
strided_slice_15/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_15/stack_2
strided_slice_15StridedSliceinputsstrided_slice_15/stack:output:0!strided_slice_15/stack_1:output:0!strided_slice_15/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_15
sub_13/ReadVariableOpReadVariableOpsub_3_readvariableop_resource*
_output_shapes
: *
dtype02
sub_13/ReadVariableOp
sub_13Substrided_slice_15:output:0sub_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_13
truediv_13/ReadVariableOpReadVariableOp"truediv_13_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_13/ReadVariableOp

truediv_13RealDiv
sub_13:z:0!truediv_13/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_13Z
Relu_3Relutruediv_13:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_3c
Log1p_3Log1pRelu_3:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_3
strided_slice_16/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_16/stack
strided_slice_16/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_16/stack_1
strided_slice_16/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_16/stack_2
strided_slice_16StridedSliceinputsstrided_slice_16/stack:output:0!strided_slice_16/stack_1:output:0!strided_slice_16/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_16
sub_14/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_14/ReadVariableOp
sub_14Substrided_slice_16:output:0sub_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_14
truediv_14/ReadVariableOpReadVariableOp"truediv_14_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_14/ReadVariableOp

truediv_14RealDiv
sub_14:z:0!truediv_14/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_14Z
Relu_4Relutruediv_14:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_4c
Log1p_4Log1pRelu_4:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_4
strided_slice_17/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_17/stack
strided_slice_17/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_17/stack_1
strided_slice_17/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_17/stack_2
strided_slice_17StridedSliceinputsstrided_slice_17/stack:output:0!strided_slice_17/stack_1:output:0!strided_slice_17/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_17
sub_15/ReadVariableOpReadVariableOpsub_4_readvariableop_resource*
_output_shapes
: *
dtype02
sub_15/ReadVariableOp
sub_15Substrided_slice_17:output:0sub_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_15
truediv_15/ReadVariableOpReadVariableOp"truediv_14_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_15/ReadVariableOp

truediv_15RealDiv
sub_15:z:0!truediv_15/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_15Z
Relu_5Relutruediv_15:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_5c
Log1p_5Log1pRelu_5:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_5
strided_slice_18/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_18/stack
strided_slice_18/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_18/stack_1
strided_slice_18/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_18/stack_2
strided_slice_18StridedSliceinputsstrided_slice_18/stack:output:0!strided_slice_18/stack_1:output:0!strided_slice_18/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_18
sub_16/ReadVariableOpReadVariableOpsub_6_readvariableop_resource*
_output_shapes
: *
dtype02
sub_16/ReadVariableOp
sub_16Substrided_slice_18:output:0sub_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_16
truediv_16/ReadVariableOpReadVariableOp"truediv_16_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_16/ReadVariableOp

truediv_16RealDiv
sub_16:z:0!truediv_16/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_16Z
Relu_6Relutruediv_16:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_6c
Log1p_6Log1pRelu_6:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_6
strided_slice_19/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_19/stack
strided_slice_19/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_19/stack_1
strided_slice_19/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_19/stack_2
strided_slice_19StridedSliceinputsstrided_slice_19/stack:output:0!strided_slice_19/stack_1:output:0!strided_slice_19/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_19
sub_17/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_17/ReadVariableOp
sub_17Substrided_slice_19:output:0sub_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_17
truediv_17/ReadVariableOpReadVariableOp"truediv_17_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_17/ReadVariableOp

truediv_17RealDiv
sub_17:z:0!truediv_17/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_17Z
Relu_7Relutruediv_17:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_7c
Log1p_7Log1pRelu_7:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_7
strided_slice_20/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_20/stack
strided_slice_20/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_20/stack_1
strided_slice_20/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_20/stack_2
strided_slice_20StridedSliceinputsstrided_slice_20/stack:output:0!strided_slice_20/stack_1:output:0!strided_slice_20/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_20
sub_18/ReadVariableOpReadVariableOpsub_7_readvariableop_resource*
_output_shapes
: *
dtype02
sub_18/ReadVariableOp
sub_18Substrided_slice_20:output:0sub_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_18
truediv_18/ReadVariableOpReadVariableOp"truediv_17_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_18/ReadVariableOp

truediv_18RealDiv
sub_18:z:0!truediv_18/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_18Z
Relu_8Relutruediv_18:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_8c
Log1p_8Log1pRelu_8:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_8
strided_slice_21/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_21/stack
strided_slice_21/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_21/stack_1
strided_slice_21/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_21/stack_2
strided_slice_21StridedSliceinputsstrided_slice_21/stack:output:0!strided_slice_21/stack_1:output:0!strided_slice_21/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_21
sub_19/ReadVariableOpReadVariableOpsub_9_readvariableop_resource*
_output_shapes
: *
dtype02
sub_19/ReadVariableOp
sub_19Substrided_slice_21:output:0sub_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
sub_19
truediv_19/ReadVariableOpReadVariableOp"truediv_19_readvariableop_resource*
_output_shapes
: *
dtype02
truediv_19/ReadVariableOp

truediv_19RealDiv
sub_19:z:0!truediv_19/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

truediv_19Z
Relu_9Relutruediv_19:z:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
Relu_9c
Log1p_9Log1pRelu_9:activations:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
Log1p_9å
stack_1Pack	Log1p:y:0Log1p_1:y:0Log1p_2:y:0Log1p_3:y:0Log1p_4:y:0Log1p_5:y:0Log1p_6:y:0Log1p_7:y:0Log1p_8:y:0Log1p_9:y:0*
N
*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

axis2	
stack_1
strided_slice_22/stackConst*
_output_shapes
:*
dtype0*!
valueB"            2
strided_slice_22/stack
strided_slice_22/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_22/stack_1
strided_slice_22/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_22/stack_2¦
strided_slice_22StridedSlicestack_1:output:0strided_slice_22/stack:output:0!strided_slice_22/stack_1:output:0!strided_slice_22/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_22w
Reshape_3/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_3/shape
	Reshape_3Reshapestrided_slice_22:output:0Reshape_3/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_3
strided_slice_23/stackConst*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_23/stack
strided_slice_23/stack_1Const*
_output_shapes
:*
dtype0*!
valueB"           2
strided_slice_23/stack_1
strided_slice_23/stack_2Const*
_output_shapes
:*
dtype0*!
valueB"         2
strided_slice_23/stack_2¦
strided_slice_23StridedSlicestack_1:output:0strided_slice_23/stack:output:0!strided_slice_23/stack_1:output:0!strided_slice_23/stack_2:output:0*
Index0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
*

begin_mask*
end_mask*
shrink_axis_mask2
strided_slice_23w
Reshape_4/shapeConst*
_output_shapes
:*
dtype0*!
valueB"ÿÿÿÿ
      2
Reshape_4/shape
	Reshape_4Reshapestrided_slice_23:output:0Reshape_4/shape:output:0*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_4i
concat_1/axisConst*
_output_shapes
: *
dtype0*
valueB :
ÿÿÿÿÿÿÿÿÿ2
concat_1/axis±
concat_1ConcatV2Reshape_4:output:0stack_1:output:0Reshape_3:output:0concat_1/axis:output:0*
N*
T0*+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

concat_1{
Reshape_5/shapeConst*
_output_shapes
:*
dtype0*%
valueB"ÿÿÿÿ
         2
Reshape_5/shape
	Reshape_5Reshapeconcat_1:output:0Reshape_5/shape:output:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2
	Reshape_5æ
IdentityIdentityReshape_2:output:0^sub/ReadVariableOp^sub_1/ReadVariableOp^sub_10/ReadVariableOp^sub_11/ReadVariableOp^sub_12/ReadVariableOp^sub_13/ReadVariableOp^sub_14/ReadVariableOp^sub_15/ReadVariableOp^sub_16/ReadVariableOp^sub_17/ReadVariableOp^sub_18/ReadVariableOp^sub_19/ReadVariableOp^sub_2/ReadVariableOp^sub_3/ReadVariableOp^sub_4/ReadVariableOp^sub_5/ReadVariableOp^sub_6/ReadVariableOp^sub_7/ReadVariableOp^sub_8/ReadVariableOp^sub_9/ReadVariableOp^truediv/ReadVariableOp^truediv_1/ReadVariableOp^truediv_10/ReadVariableOp^truediv_11/ReadVariableOp^truediv_12/ReadVariableOp^truediv_13/ReadVariableOp^truediv_14/ReadVariableOp^truediv_15/ReadVariableOp^truediv_16/ReadVariableOp^truediv_17/ReadVariableOp^truediv_18/ReadVariableOp^truediv_19/ReadVariableOp^truediv_2/ReadVariableOp^truediv_3/ReadVariableOp^truediv_4/ReadVariableOp^truediv_5/ReadVariableOp^truediv_6/ReadVariableOp^truediv_7/ReadVariableOp^truediv_8/ReadVariableOp^truediv_9/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identityê

Identity_1IdentityReshape_5:output:0^sub/ReadVariableOp^sub_1/ReadVariableOp^sub_10/ReadVariableOp^sub_11/ReadVariableOp^sub_12/ReadVariableOp^sub_13/ReadVariableOp^sub_14/ReadVariableOp^sub_15/ReadVariableOp^sub_16/ReadVariableOp^sub_17/ReadVariableOp^sub_18/ReadVariableOp^sub_19/ReadVariableOp^sub_2/ReadVariableOp^sub_3/ReadVariableOp^sub_4/ReadVariableOp^sub_5/ReadVariableOp^sub_6/ReadVariableOp^sub_7/ReadVariableOp^sub_8/ReadVariableOp^sub_9/ReadVariableOp^truediv/ReadVariableOp^truediv_1/ReadVariableOp^truediv_10/ReadVariableOp^truediv_11/ReadVariableOp^truediv_12/ReadVariableOp^truediv_13/ReadVariableOp^truediv_14/ReadVariableOp^truediv_15/ReadVariableOp^truediv_16/ReadVariableOp^truediv_17/ReadVariableOp^truediv_18/ReadVariableOp^truediv_19/ReadVariableOp^truediv_2/ReadVariableOp^truediv_3/ReadVariableOp^truediv_4/ReadVariableOp^truediv_5/ReadVariableOp^truediv_6/ReadVariableOp^truediv_7/ReadVariableOp^truediv_8/ReadVariableOp^truediv_9/ReadVariableOp*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
2

Identity_1"
identityIdentity:output:0"!

identity_1Identity_1:output:0*~
_input_shapesm
k:ÿÿÿÿÿÿÿÿÿ:::::::::::::::::::::2(
sub/ReadVariableOpsub/ReadVariableOp2,
sub_1/ReadVariableOpsub_1/ReadVariableOp2.
sub_10/ReadVariableOpsub_10/ReadVariableOp2.
sub_11/ReadVariableOpsub_11/ReadVariableOp2.
sub_12/ReadVariableOpsub_12/ReadVariableOp2.
sub_13/ReadVariableOpsub_13/ReadVariableOp2.
sub_14/ReadVariableOpsub_14/ReadVariableOp2.
sub_15/ReadVariableOpsub_15/ReadVariableOp2.
sub_16/ReadVariableOpsub_16/ReadVariableOp2.
sub_17/ReadVariableOpsub_17/ReadVariableOp2.
sub_18/ReadVariableOpsub_18/ReadVariableOp2.
sub_19/ReadVariableOpsub_19/ReadVariableOp2,
sub_2/ReadVariableOpsub_2/ReadVariableOp2,
sub_3/ReadVariableOpsub_3/ReadVariableOp2,
sub_4/ReadVariableOpsub_4/ReadVariableOp2,
sub_5/ReadVariableOpsub_5/ReadVariableOp2,
sub_6/ReadVariableOpsub_6/ReadVariableOp2,
sub_7/ReadVariableOpsub_7/ReadVariableOp2,
sub_8/ReadVariableOpsub_8/ReadVariableOp2,
sub_9/ReadVariableOpsub_9/ReadVariableOp20
truediv/ReadVariableOptruediv/ReadVariableOp24
truediv_1/ReadVariableOptruediv_1/ReadVariableOp26
truediv_10/ReadVariableOptruediv_10/ReadVariableOp26
truediv_11/ReadVariableOptruediv_11/ReadVariableOp26
truediv_12/ReadVariableOptruediv_12/ReadVariableOp26
truediv_13/ReadVariableOptruediv_13/ReadVariableOp26
truediv_14/ReadVariableOptruediv_14/ReadVariableOp26
truediv_15/ReadVariableOptruediv_15/ReadVariableOp26
truediv_16/ReadVariableOptruediv_16/ReadVariableOp26
truediv_17/ReadVariableOptruediv_17/ReadVariableOp26
truediv_18/ReadVariableOptruediv_18/ReadVariableOp26
truediv_19/ReadVariableOptruediv_19/ReadVariableOp24
truediv_2/ReadVariableOptruediv_2/ReadVariableOp24
truediv_3/ReadVariableOptruediv_3/ReadVariableOp24
truediv_4/ReadVariableOptruediv_4/ReadVariableOp24
truediv_5/ReadVariableOptruediv_5/ReadVariableOp24
truediv_6/ReadVariableOptruediv_6/ReadVariableOp24
truediv_7/ReadVariableOptruediv_7/ReadVariableOp24
truediv_8/ReadVariableOptruediv_8/ReadVariableOp24
truediv_9/ReadVariableOptruediv_9/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¹
¨
5__inference_batch_normalization_2_layer_call_fn_81063

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*&
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_783342
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*7
_input_shapes&
$:ÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ù

@__inference_dense_layer_call_and_return_conditional_losses_80936

inputs"
matmul_readvariableop_resource#
biasadd_readvariableop_resource
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
MatMul/ReadVariableOpt
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
MatMul
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
BiasAdd/ReadVariableOp
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2	
BiasAddµ
(kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulÁ
IdentityIdentityBiasAdd:output:0^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*/
_input_shapes
:ÿÿÿÿÿÿÿÿÿ::20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
þ
d
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_78067

inputs
identity­
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2	
MaxPool
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_3_layer_call_and_return_conditional_losses_78720

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_1_layer_call_fn_80823

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_1_layer_call_and_return_conditional_losses_786922
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¼
`
D__inference_flatten_7_layer_call_and_return_conditional_losses_80884

inputs
identity_
ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
Consth
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2	
Reshapee
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¡
ò
%__inference_model_layer_call_fn_79647
input_1
unknown
	unknown_0
	unknown_1
	unknown_2
	unknown_3
	unknown_4
	unknown_5
	unknown_6
	unknown_7
	unknown_8
	unknown_9

unknown_10

unknown_11

unknown_12

unknown_13

unknown_14

unknown_15

unknown_16

unknown_17

unknown_18

unknown_19

unknown_20

unknown_21

unknown_22

unknown_23

unknown_24

unknown_25

unknown_26

unknown_27

unknown_28

unknown_29

unknown_30

unknown_31

unknown_32

unknown_33

unknown_34

unknown_35

unknown_36

unknown_37

unknown_38

unknown_39

unknown_40
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinput_1unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15
unknown_16
unknown_17
unknown_18
unknown_19
unknown_20
unknown_21
unknown_22
unknown_23
unknown_24
unknown_25
unknown_26
unknown_27
unknown_28
unknown_29
unknown_30
unknown_31
unknown_32
unknown_33
unknown_34
unknown_35
unknown_36
unknown_37
unknown_38
unknown_39
unknown_40*6
Tin/
-2+*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*L
_read_only_resource_inputs.
,*	
 !"#$%&'()**-
config_proto

CPU

GPU 2J 8 *I
fDRB
@__inference_model_layer_call_and_return_conditional_losses_795602
StatefulPartitionedCall
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::22
StatefulPartitionedCallStatefulPartitionedCall:T P
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
!
_user_specified_name	input_1
«
K
/__inference_max_pooling2d_3_layer_call_fn_78145

inputs
identityë
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *S
fNRL
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_781392
PartitionedCall
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*I
_input_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:r n
J
_output_shapes8
6:4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¸ß
Ö
@__inference_model_layer_call_and_return_conditional_losses_80209

inputs
custom_activation_80014
custom_activation_80016
custom_activation_80018
custom_activation_80020
custom_activation_80022
custom_activation_80024
custom_activation_80026
custom_activation_80028
custom_activation_80030
custom_activation_80032
custom_activation_80034
custom_activation_80036
custom_activation_80038
custom_activation_80040
custom_activation_80042
custom_activation_80044
custom_activation_80046
custom_activation_80048
custom_activation_80050
custom_activation_80052
custom_activation_80054+
'conv2d_1_conv2d_readvariableop_resource,
(conv2d_1_biasadd_readvariableop_resource)
%conv2d_conv2d_readvariableop_resource*
&conv2d_biasadd_readvariableop_resource1
-batch_normalization_1_readvariableop_resource3
/batch_normalization_1_readvariableop_1_resourceB
>batch_normalization_1_fusedbatchnormv3_readvariableop_resourceD
@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource/
+batch_normalization_readvariableop_resource1
-batch_normalization_readvariableop_1_resource@
<batch_normalization_fusedbatchnormv3_readvariableop_resourceB
>batch_normalization_fusedbatchnormv3_readvariableop_1_resource(
$dense_matmul_readvariableop_resource)
%dense_biasadd_readvariableop_resource;
7batch_normalization_2_batchnorm_readvariableop_resource?
;batch_normalization_2_batchnorm_mul_readvariableop_resource=
9batch_normalization_2_batchnorm_readvariableop_1_resource=
9batch_normalization_2_batchnorm_readvariableop_2_resource#
p_re_lu_readvariableop_resource*
&dense_1_matmul_readvariableop_resource+
'dense_1_biasadd_readvariableop_resource
identity¢3batch_normalization/FusedBatchNormV3/ReadVariableOp¢5batch_normalization/FusedBatchNormV3/ReadVariableOp_1¢"batch_normalization/ReadVariableOp¢$batch_normalization/ReadVariableOp_1¢5batch_normalization_1/FusedBatchNormV3/ReadVariableOp¢7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1¢$batch_normalization_1/ReadVariableOp¢&batch_normalization_1/ReadVariableOp_1¢.batch_normalization_2/batchnorm/ReadVariableOp¢0batch_normalization_2/batchnorm/ReadVariableOp_1¢0batch_normalization_2/batchnorm/ReadVariableOp_2¢2batch_normalization_2/batchnorm/mul/ReadVariableOp¢&beta/Regularizer/Square/ReadVariableOp¢(beta/Regularizer_1/Square/ReadVariableOp¢(beta/Regularizer_2/Square/ReadVariableOp¢conv2d/BiasAdd/ReadVariableOp¢conv2d/Conv2D/ReadVariableOp¢conv2d_1/BiasAdd/ReadVariableOp¢conv2d_1/Conv2D/ReadVariableOp¢)custom_activation/StatefulPartitionedCall¢dense/BiasAdd/ReadVariableOp¢dense/MatMul/ReadVariableOp¢dense_1/BiasAdd/ReadVariableOp¢dense_1/MatMul/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOp¢)gamma/Regularizer_1/Square/ReadVariableOp¢)gamma/Regularizer_2/Square/ReadVariableOp¢(kernel/Regularizer/Square/ReadVariableOp¢p_re_lu/ReadVariableOp¿
)custom_activation/StatefulPartitionedCallStatefulPartitionedCallinputscustom_activation_80014custom_activation_80016custom_activation_80018custom_activation_80020custom_activation_80022custom_activation_80024custom_activation_80026custom_activation_80028custom_activation_80030custom_activation_80032custom_activation_80034custom_activation_80036custom_activation_80038custom_activation_80040custom_activation_80042custom_activation_80044custom_activation_80046custom_activation_80048custom_activation_80050custom_activation_80052custom_activation_80054*!
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:ÿÿÿÿÿÿÿÿÿ
:ÿÿÿÿÿÿÿÿÿ
*7
_read_only_resource_inputs
	
*-
config_proto

CPU

GPU 2J 8 *1
f,R*
(__inference_restored_function_body_776032+
)custom_activation/StatefulPartitionedCall°
conv2d_1/Conv2D/ReadVariableOpReadVariableOp'conv2d_1_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02 
conv2d_1/Conv2D/ReadVariableOpë
conv2d_1/Conv2DConv2D2custom_activation/StatefulPartitionedCall:output:1&conv2d_1/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d_1/Conv2D§
conv2d_1/BiasAdd/ReadVariableOpReadVariableOp(conv2d_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02!
conv2d_1/BiasAdd/ReadVariableOp¬
conv2d_1/BiasAddBiasAddconv2d_1/Conv2D:output:0'conv2d_1/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d_1/BiasAddª
conv2d/Conv2D/ReadVariableOpReadVariableOp%conv2d_conv2d_readvariableop_resource*&
_output_shapes
:*
dtype02
conv2d/Conv2D/ReadVariableOpå
conv2d/Conv2DConv2D2custom_activation/StatefulPartitionedCall:output:0$conv2d/Conv2D/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
paddingVALID*
strides
2
conv2d/Conv2D¡
conv2d/BiasAdd/ReadVariableOpReadVariableOp&conv2d_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02
conv2d/BiasAdd/ReadVariableOp¤
conv2d/BiasAddBiasAddconv2d/Conv2D:output:0%conv2d/BiasAdd/ReadVariableOp:value:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
conv2d/BiasAdd¶
$batch_normalization_1/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02&
$batch_normalization_1/ReadVariableOp¼
&batch_normalization_1/ReadVariableOp_1ReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&batch_normalization_1/ReadVariableOp_1é
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpReadVariableOp>batch_normalization_1_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype027
5batch_normalization_1/FusedBatchNormV3/ReadVariableOpï
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp@batch_normalization_1_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype029
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1á
&batch_normalization_1/FusedBatchNormV3FusedBatchNormV3conv2d_1/BiasAdd:output:0,batch_normalization_1/ReadVariableOp:value:0.batch_normalization_1/ReadVariableOp_1:value:0=batch_normalization_1/FusedBatchNormV3/ReadVariableOp:value:0?batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2(
&batch_normalization_1/FusedBatchNormV3°
"batch_normalization/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02$
"batch_normalization/ReadVariableOp¶
$batch_normalization/ReadVariableOp_1ReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02&
$batch_normalization/ReadVariableOp_1ã
3batch_normalization/FusedBatchNormV3/ReadVariableOpReadVariableOp<batch_normalization_fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype025
3batch_normalization/FusedBatchNormV3/ReadVariableOpé
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1ReadVariableOp>batch_normalization_fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype027
5batch_normalization/FusedBatchNormV3/ReadVariableOp_1Ó
$batch_normalization/FusedBatchNormV3FusedBatchNormV3conv2d/BiasAdd:output:0*batch_normalization/ReadVariableOp:value:0,batch_normalization/ReadVariableOp_1:value:0;batch_normalization/FusedBatchNormV3/ReadVariableOp:value:0=batch_normalization/FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*K
_output_shapes9
7:ÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
is_training( 2&
$batch_normalization/FusedBatchNormV3
tf.math.tanh_1/TanhTanh*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh_1/Tanh
tf.nn.relu_1/ReluRelu*batch_normalization_1/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu_1/Relu
tf.math.tanh/TanhTanh(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.math.tanh/Tanh
tf.nn.relu/ReluRelu(batch_normalization/FusedBatchNormV3:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
tf.nn.relu/ReluÔ
average_pooling2d_3/AvgPoolAvgPooltf.math.tanh_1/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_3/AvgPoolÃ
max_pooling2d_3/MaxPoolMaxPooltf.math.tanh_1/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_3/MaxPoolÜ
average_pooling2d_2/AvgPoolAvgPooltf.nn.relu_1/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_2/AvgPoolË
max_pooling2d_2/MaxPoolMaxPooltf.nn.relu_1/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_2/MaxPoolÒ
average_pooling2d_1/AvgPoolAvgPooltf.math.tanh/Tanh:y:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d_1/AvgPoolÁ
max_pooling2d_1/MaxPoolMaxPooltf.math.tanh/Tanh:y:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d_1/MaxPoolÖ
average_pooling2d/AvgPoolAvgPooltf.nn.relu/Relu:activations:0*
T0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
average_pooling2d/AvgPoolÅ
max_pooling2d/MaxPoolMaxPooltf.nn.relu/Relu:activations:0*/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ*
ksize
*
paddingVALID*
strides
2
max_pooling2d/MaxPoolo
flatten/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten/Const
flatten/ReshapeReshapemax_pooling2d/MaxPool:output:0flatten/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten/Reshapes
flatten_1/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_1/Const¢
flatten_1/ReshapeReshape"average_pooling2d/AvgPool:output:0flatten_1/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_1/Reshapes
flatten_2/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_2/Const 
flatten_2/ReshapeReshape max_pooling2d_1/MaxPool:output:0flatten_2/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_2/Reshapes
flatten_3/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_3/Const¤
flatten_3/ReshapeReshape$average_pooling2d_1/AvgPool:output:0flatten_3/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_3/Reshapes
flatten_4/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_4/Const 
flatten_4/ReshapeReshape max_pooling2d_2/MaxPool:output:0flatten_4/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_4/Reshapes
flatten_5/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_5/Const¤
flatten_5/ReshapeReshape$average_pooling2d_2/AvgPool:output:0flatten_5/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_5/Reshapes
flatten_6/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_6/Const 
flatten_6/ReshapeReshape max_pooling2d_3/MaxPool:output:0flatten_6/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_6/Reshapes
flatten_7/ConstConst*
_output_shapes
:*
dtype0*
valueB"ÿÿÿÿÀ   2
flatten_7/Const¤
flatten_7/ReshapeReshape$average_pooling2d_3/AvgPool:output:0flatten_7/Const:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2
flatten_7/Reshapet
concatenate/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :2
concatenate/concat/axisð
concatenate/concatConcatV2flatten/Reshape:output:0flatten_1/Reshape:output:0flatten_2/Reshape:output:0flatten_3/Reshape:output:0flatten_4/Reshape:output:0flatten_5/Reshape:output:0flatten_6/Reshape:output:0flatten_7/Reshape:output:0 concatenate/concat/axis:output:0*
N*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
concatenate/concat¡
dense/MatMul/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02
dense/MatMul/ReadVariableOp
dense/MatMulMatMulconcatenate/concat:output:0#dense/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/MatMul
dense/BiasAdd/ReadVariableOpReadVariableOp%dense_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype02
dense/BiasAdd/ReadVariableOp
dense/BiasAddBiasAdddense/MatMul:product:0$dense/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense/BiasAddÕ
.batch_normalization_2/batchnorm/ReadVariableOpReadVariableOp7batch_normalization_2_batchnorm_readvariableop_resource*
_output_shapes	
:*
dtype020
.batch_normalization_2/batchnorm/ReadVariableOp
%batch_normalization_2/batchnorm/add/yConst*
_output_shapes
: *
dtype0*
valueB
 *o:2'
%batch_normalization_2/batchnorm/add/yá
#batch_normalization_2/batchnorm/addAddV26batch_normalization_2/batchnorm/ReadVariableOp:value:0.batch_normalization_2/batchnorm/add/y:output:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/add¦
%batch_normalization_2/batchnorm/RsqrtRsqrt'batch_normalization_2/batchnorm/add:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/Rsqrtá
2batch_normalization_2/batchnorm/mul/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype024
2batch_normalization_2/batchnorm/mul/ReadVariableOpÞ
#batch_normalization_2/batchnorm/mulMul)batch_normalization_2/batchnorm/Rsqrt:y:0:batch_normalization_2/batchnorm/mul/ReadVariableOp:value:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/mulÉ
%batch_normalization_2/batchnorm/mul_1Muldense/BiasAdd:output:0'batch_normalization_2/batchnorm/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_2/batchnorm/mul_1Û
0batch_normalization_2/batchnorm/ReadVariableOp_1ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_1_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_1Þ
%batch_normalization_2/batchnorm/mul_2Mul8batch_normalization_2/batchnorm/ReadVariableOp_1:value:0'batch_normalization_2/batchnorm/mul:z:0*
T0*
_output_shapes	
:2'
%batch_normalization_2/batchnorm/mul_2Û
0batch_normalization_2/batchnorm/ReadVariableOp_2ReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype022
0batch_normalization_2/batchnorm/ReadVariableOp_2Ü
#batch_normalization_2/batchnorm/subSub8batch_normalization_2/batchnorm/ReadVariableOp_2:value:0)batch_normalization_2/batchnorm/mul_2:z:0*
T0*
_output_shapes	
:2%
#batch_normalization_2/batchnorm/subÞ
%batch_normalization_2/batchnorm/add_1AddV2)batch_normalization_2/batchnorm/mul_1:z:0'batch_normalization_2/batchnorm/sub:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2'
%batch_normalization_2/batchnorm/add_1
p_re_lu/ReluRelu)batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Relu
p_re_lu/ReadVariableOpReadVariableOpp_re_lu_readvariableop_resource*
_output_shapes	
:*
dtype02
p_re_lu/ReadVariableOpg
p_re_lu/NegNegp_re_lu/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
p_re_lu/Neg
p_re_lu/Neg_1Neg)batch_normalization_2/batchnorm/add_1:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Neg_1n
p_re_lu/Relu_1Relup_re_lu/Neg_1:y:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/Relu_1
p_re_lu/mulMulp_re_lu/Neg:y:0p_re_lu/Relu_1:activations:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/mul
p_re_lu/addAddV2p_re_lu/Relu:activations:0p_re_lu/mul:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
p_re_lu/addt
dropout/IdentityIdentityp_re_lu/add:z:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dropout/Identity¦
dense_1/MatMul/ReadVariableOpReadVariableOp&dense_1_matmul_readvariableop_resource*
_output_shapes
:	*
dtype02
dense_1/MatMul/ReadVariableOp
dense_1/MatMulMatMuldropout/Identity:output:0%dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/MatMul¤
dense_1/BiasAdd/ReadVariableOpReadVariableOp'dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype02 
dense_1/BiasAdd/ReadVariableOp¡
dense_1/BiasAddBiasAdddense_1/MatMul:product:0&dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/BiasAddy
dense_1/SoftmaxSoftmaxdense_1/BiasAdd:output:0*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2
dense_1/Softmaxº
'gamma/Regularizer/Square/ReadVariableOpReadVariableOp+batch_normalization_readvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mulº
&beta/Regularizer/Square/ReadVariableOpReadVariableOp-batch_normalization_readvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulÀ
)gamma/Regularizer_1/Square/ReadVariableOpReadVariableOp-batch_normalization_1_readvariableop_resource*
_output_shapes
:*
dtype02+
)gamma/Regularizer_1/Square/ReadVariableOp
gamma/Regularizer_1/SquareSquare1gamma/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer_1/Square
gamma/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_1/Const
gamma/Regularizer_1/SumSumgamma/Regularizer_1/Square:y:0"gamma/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/Sum{
gamma/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_1/mul/x 
gamma/Regularizer_1/mulMul"gamma/Regularizer_1/mul/x:output:0 gamma/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_1/mulÀ
(beta/Regularizer_1/Square/ReadVariableOpReadVariableOp/batch_normalization_1_readvariableop_1_resource*
_output_shapes
:*
dtype02*
(beta/Regularizer_1/Square/ReadVariableOp
beta/Regularizer_1/SquareSquare0beta/Regularizer_1/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer_1/Square~
beta/Regularizer_1/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_1/Const
beta/Regularizer_1/SumSumbeta/Regularizer_1/Square:y:0!beta/Regularizer_1/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/Sumy
beta/Regularizer_1/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_1/mul/x
beta/Regularizer_1/mulMul!beta/Regularizer_1/mul/x:output:0beta/Regularizer_1/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_1/mul»
(kernel/Regularizer/Square/ReadVariableOpReadVariableOp$dense_matmul_readvariableop_resource* 
_output_shapes
:
*
dtype02*
(kernel/Regularizer/Square/ReadVariableOp
kernel/Regularizer/SquareSquare0kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
2
kernel/Regularizer/Square
kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       2
kernel/Regularizer/Const
kernel/Regularizer/SumSumkernel/Regularizer/Square:y:0!kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/Sumy
kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×£<2
kernel/Regularizer/mul/x
kernel/Regularizer/mulMul!kernel/Regularizer/mul/x:output:0kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
kernel/Regularizer/mulÏ
)gamma/Regularizer_2/Square/ReadVariableOpReadVariableOp;batch_normalization_2_batchnorm_mul_readvariableop_resource*
_output_shapes	
:*
dtype02+
)gamma/Regularizer_2/Square/ReadVariableOp
gamma/Regularizer_2/SquareSquare1gamma/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
gamma/Regularizer_2/Square
gamma/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer_2/Const
gamma/Regularizer_2/SumSumgamma/Regularizer_2/Square:y:0"gamma/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/Sum{
gamma/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer_2/mul/x 
gamma/Regularizer_2/mulMul"gamma/Regularizer_2/mul/x:output:0 gamma/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer_2/mulË
(beta/Regularizer_2/Square/ReadVariableOpReadVariableOp9batch_normalization_2_batchnorm_readvariableop_2_resource*
_output_shapes	
:*
dtype02*
(beta/Regularizer_2/Square/ReadVariableOp
beta/Regularizer_2/SquareSquare0beta/Regularizer_2/Square/ReadVariableOp:value:0*
T0*
_output_shapes	
:2
beta/Regularizer_2/Square~
beta/Regularizer_2/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer_2/Const
beta/Regularizer_2/SumSumbeta/Regularizer_2/Square:y:0!beta/Regularizer_2/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/Sumy
beta/Regularizer_2/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer_2/mul/x
beta/Regularizer_2/mulMul!beta/Regularizer_2/mul/x:output:0beta/Regularizer_2/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer_2/mul¦

IdentityIdentitydense_1/Softmax:softmax:04^batch_normalization/FusedBatchNormV3/ReadVariableOp6^batch_normalization/FusedBatchNormV3/ReadVariableOp_1#^batch_normalization/ReadVariableOp%^batch_normalization/ReadVariableOp_16^batch_normalization_1/FusedBatchNormV3/ReadVariableOp8^batch_normalization_1/FusedBatchNormV3/ReadVariableOp_1%^batch_normalization_1/ReadVariableOp'^batch_normalization_1/ReadVariableOp_1/^batch_normalization_2/batchnorm/ReadVariableOp1^batch_normalization_2/batchnorm/ReadVariableOp_11^batch_normalization_2/batchnorm/ReadVariableOp_23^batch_normalization_2/batchnorm/mul/ReadVariableOp'^beta/Regularizer/Square/ReadVariableOp)^beta/Regularizer_1/Square/ReadVariableOp)^beta/Regularizer_2/Square/ReadVariableOp^conv2d/BiasAdd/ReadVariableOp^conv2d/Conv2D/ReadVariableOp ^conv2d_1/BiasAdd/ReadVariableOp^conv2d_1/Conv2D/ReadVariableOp*^custom_activation/StatefulPartitionedCall^dense/BiasAdd/ReadVariableOp^dense/MatMul/ReadVariableOp^dense_1/BiasAdd/ReadVariableOp^dense_1/MatMul/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*^gamma/Regularizer_1/Square/ReadVariableOp*^gamma/Regularizer_2/Square/ReadVariableOp)^kernel/Regularizer/Square/ReadVariableOp^p_re_lu/ReadVariableOp*
T0*'
_output_shapes
:ÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*Ô
_input_shapesÂ
¿:ÿÿÿÿÿÿÿÿÿ::::::::::::::::::::::::::::::::::::::::::2j
3batch_normalization/FusedBatchNormV3/ReadVariableOp3batch_normalization/FusedBatchNormV3/ReadVariableOp2n
5batch_normalization/FusedBatchNormV3/ReadVariableOp_15batch_normalization/FusedBatchNormV3/ReadVariableOp_12H
"batch_normalization/ReadVariableOp"batch_normalization/ReadVariableOp2L
$batch_normalization/ReadVariableOp_1$batch_normalization/ReadVariableOp_12n
5batch_normalization_1/FusedBatchNormV3/ReadVariableOp5batch_normalization_1/FusedBatchNormV3/ReadVariableOp2r
7batch_normalization_1/FusedBatchNormV3/ReadVariableOp_17batch_normalization_1/FusedBatchNormV3/ReadVariableOp_12L
$batch_normalization_1/ReadVariableOp$batch_normalization_1/ReadVariableOp2P
&batch_normalization_1/ReadVariableOp_1&batch_normalization_1/ReadVariableOp_12`
.batch_normalization_2/batchnorm/ReadVariableOp.batch_normalization_2/batchnorm/ReadVariableOp2d
0batch_normalization_2/batchnorm/ReadVariableOp_10batch_normalization_2/batchnorm/ReadVariableOp_12d
0batch_normalization_2/batchnorm/ReadVariableOp_20batch_normalization_2/batchnorm/ReadVariableOp_22h
2batch_normalization_2/batchnorm/mul/ReadVariableOp2batch_normalization_2/batchnorm/mul/ReadVariableOp2P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2T
(beta/Regularizer_1/Square/ReadVariableOp(beta/Regularizer_1/Square/ReadVariableOp2T
(beta/Regularizer_2/Square/ReadVariableOp(beta/Regularizer_2/Square/ReadVariableOp2>
conv2d/BiasAdd/ReadVariableOpconv2d/BiasAdd/ReadVariableOp2<
conv2d/Conv2D/ReadVariableOpconv2d/Conv2D/ReadVariableOp2B
conv2d_1/BiasAdd/ReadVariableOpconv2d_1/BiasAdd/ReadVariableOp2@
conv2d_1/Conv2D/ReadVariableOpconv2d_1/Conv2D/ReadVariableOp2V
)custom_activation/StatefulPartitionedCall)custom_activation/StatefulPartitionedCall2<
dense/BiasAdd/ReadVariableOpdense/BiasAdd/ReadVariableOp2:
dense/MatMul/ReadVariableOpdense/MatMul/ReadVariableOp2@
dense_1/BiasAdd/ReadVariableOpdense_1/BiasAdd/ReadVariableOp2>
dense_1/MatMul/ReadVariableOpdense_1/MatMul/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp2V
)gamma/Regularizer_1/Square/ReadVariableOp)gamma/Regularizer_1/Square/ReadVariableOp2V
)gamma/Regularizer_2/Square/ReadVariableOp)gamma/Regularizer_2/Square/ReadVariableOp2T
(kernel/Regularizer/Square/ReadVariableOp(kernel/Regularizer/Square/ReadVariableOp20
p_re_lu/ReadVariableOpp_re_lu/ReadVariableOp:S O
+
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
Ý%
è
N__inference_batch_normalization_layer_call_and_return_conditional_losses_77855

inputs
readvariableop_resource
readvariableop_1_resource,
(fusedbatchnormv3_readvariableop_resource.
*fusedbatchnormv3_readvariableop_1_resource
identity¢AssignNewValue¢AssignNewValue_1¢FusedBatchNormV3/ReadVariableOp¢!FusedBatchNormV3/ReadVariableOp_1¢ReadVariableOp¢ReadVariableOp_1¢&beta/Regularizer/Square/ReadVariableOp¢'gamma/Regularizer/Square/ReadVariableOpt
ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02
ReadVariableOpz
ReadVariableOp_1ReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02
ReadVariableOp_1§
FusedBatchNormV3/ReadVariableOpReadVariableOp(fusedbatchnormv3_readvariableop_resource*
_output_shapes
:*
dtype02!
FusedBatchNormV3/ReadVariableOp­
!FusedBatchNormV3/ReadVariableOp_1ReadVariableOp*fusedbatchnormv3_readvariableop_1_resource*
_output_shapes
:*
dtype02#
!FusedBatchNormV3/ReadVariableOp_1ê
FusedBatchNormV3FusedBatchNormV3inputsReadVariableOp:value:0ReadVariableOp_1:value:0'FusedBatchNormV3/ReadVariableOp:value:0)FusedBatchNormV3/ReadVariableOp_1:value:0*
T0*
U0*]
_output_shapesK
I:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ:::::*
epsilon%o:*
exponential_avg_factor%
×#<2
FusedBatchNormV3­
AssignNewValueAssignVariableOp(fusedbatchnormv3_readvariableop_resourceFusedBatchNormV3:batch_mean:0 ^FusedBatchNormV3/ReadVariableOp",/job:localhost/replica:0/task:0/device:CPU:0*;
_class1
/-loc:@FusedBatchNormV3/ReadVariableOp/resource*
_output_shapes
 *
dtype02
AssignNewValue»
AssignNewValue_1AssignVariableOp*fusedbatchnormv3_readvariableop_1_resource!FusedBatchNormV3:batch_variance:0"^FusedBatchNormV3/ReadVariableOp_1",/job:localhost/replica:0/task:0/device:CPU:0*=
_class3
1/loc:@FusedBatchNormV3/ReadVariableOp_1/resource*
_output_shapes
 *
dtype02
AssignNewValue_1¦
'gamma/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_resource*
_output_shapes
:*
dtype02)
'gamma/Regularizer/Square/ReadVariableOp
gamma/Regularizer/SquareSquare/gamma/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
gamma/Regularizer/Square|
gamma/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
gamma/Regularizer/Const
gamma/Regularizer/SumSumgamma/Regularizer/Square:y:0 gamma/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/Sumw
gamma/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
gamma/Regularizer/mul/x
gamma/Regularizer/mulMul gamma/Regularizer/mul/x:output:0gamma/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
gamma/Regularizer/mul¦
&beta/Regularizer/Square/ReadVariableOpReadVariableOpreadvariableop_1_resource*
_output_shapes
:*
dtype02(
&beta/Regularizer/Square/ReadVariableOp
beta/Regularizer/SquareSquare.beta/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:2
beta/Regularizer/Squarez
beta/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB: 2
beta/Regularizer/Const
beta/Regularizer/SumSumbeta/Regularizer/Square:y:0beta/Regularizer/Const:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/Sumu
beta/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *
×#<2
beta/Regularizer/mul/x
beta/Regularizer/mulMulbeta/Regularizer/mul/x:output:0beta/Regularizer/Sum:output:0*
T0*
_output_shapes
: 2
beta/Regularizer/mulã
IdentityIdentityFusedBatchNormV3:y:0^AssignNewValue^AssignNewValue_1 ^FusedBatchNormV3/ReadVariableOp"^FusedBatchNormV3/ReadVariableOp_1^ReadVariableOp^ReadVariableOp_1'^beta/Regularizer/Square/ReadVariableOp(^gamma/Regularizer/Square/ReadVariableOp*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::2 
AssignNewValueAssignNewValue2$
AssignNewValue_1AssignNewValue_12B
FusedBatchNormV3/ReadVariableOpFusedBatchNormV3/ReadVariableOp2F
!FusedBatchNormV3/ReadVariableOp_1!FusedBatchNormV3/ReadVariableOp_12 
ReadVariableOpReadVariableOp2$
ReadVariableOp_1ReadVariableOp_12P
&beta/Regularizer/Square/ReadVariableOp&beta/Regularizer/Square/ReadVariableOp2R
'gamma/Regularizer/Square/ReadVariableOp'gamma/Regularizer/Square/ReadVariableOp:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs
¤
E
)__inference_flatten_3_layer_call_fn_80845

inputs
identityÃ
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8 *M
fHRF
D__inference_flatten_3_layer_call_and_return_conditional_losses_787202
PartitionedCallm
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:ÿÿÿÿÿÿÿÿÿÀ2

Identity"
identityIdentity:output:0*.
_input_shapes
:ÿÿÿÿÿÿÿÿÿ:W S
/
_output_shapes
:ÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs

¨
5__inference_batch_normalization_1_layer_call_fn_80700

inputs
unknown
	unknown_0
	unknown_1
	unknown_2
identity¢StatefulPartitionedCall²
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2*
Tin	
2*
Tout
2*
_collective_manager_ids
 *A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *Y
fTRR
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_780072
StatefulPartitionedCall¨
IdentityIdentity StatefulPartitionedCall:output:0^StatefulPartitionedCall*
T0*A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ2

Identity"
identityIdentity:output:0*P
_input_shapes?
=:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ::::22
StatefulPartitionedCallStatefulPartitionedCall:i e
A
_output_shapes/
-:+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 
_user_specified_nameinputs"±L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*®
serving_default
?
input_14
serving_default_input_1:0ÿÿÿÿÿÿÿÿÿ;
dense_10
StatefulPartitionedCall:0ÿÿÿÿÿÿÿÿÿtensorflow/serving/predict:ÞÒ
áÅ
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer_with_weights-2
layer-3
layer_with_weights-3
layer-4
layer_with_weights-4
layer-5
layer-6
layer-7
	layer-8

layer-9
layer-10
layer-11
layer-12
layer-13
layer-14
layer-15
layer-16
layer-17
layer-18
layer-19
layer-20
layer-21
layer-22
layer-23
layer-24
layer-25
layer-26
layer_with_weights-5
layer-27
layer_with_weights-6
layer-28
layer_with_weights-7
layer-29
layer-30
 layer_with_weights-8
 layer-31
!	optimizer
"
signatures
##_self_saveable_object_factories
$	variables
%regularization_losses
&trainable_variables
'	keras_api
È__call__
+É&call_and_return_all_conditional_losses
Ê_default_save_signature"Í¾
_tf_keras_network°¾{"class_name": "Functional", "name": "model", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "must_restore_from_config": false, "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "CustomActivation", "config": {"name": "custom_activation", "trainable": true, "dtype": "float32"}, "name": "custom_activation", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["custom_activation", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["custom_activation", 0, 1, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.relu", "trainable": true, "dtype": "float32", "function": "nn.relu"}, "name": "tf.nn.relu", "inbound_nodes": [["batch_normalization", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh", "inbound_nodes": [["batch_normalization", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.relu_1", "trainable": true, "dtype": "float32", "function": "nn.relu"}, "name": "tf.nn.relu_1", "inbound_nodes": [["batch_normalization_1", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_1", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_1", "inbound_nodes": [["batch_normalization_1", 0, 0, {"name": null}]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["tf.nn.relu", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d", "inbound_nodes": [[["tf.nn.relu", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["tf.math.tanh", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_1", "inbound_nodes": [[["tf.math.tanh", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["tf.nn.relu_1", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_2", "inbound_nodes": [[["tf.nn.relu_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["tf.math.tanh_1", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_3", "inbound_nodes": [[["tf.math.tanh_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["average_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["average_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["max_pooling2d_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["average_pooling2d_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_7", "inbound_nodes": [[["average_pooling2d_3", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [{"class_name": "__tuple__", "items": [["flatten", 0, 0, {}], ["flatten_1", 0, 0, {}], ["flatten_2", 0, 0, {}], ["flatten_3", 0, 0, {}], ["flatten_4", 0, 0, {}], ["flatten_5", 0, 0, {}], ["flatten_6", 0, 0, {}], ["flatten_7", 0, 0, {}]]}]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 768, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.019999999552965164}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_2", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "PReLU", "config": {"name": "p_re_lu", "trainable": true, "dtype": "float32", "alpha_initializer": {"class_name": "Constant", "config": {"value": 0.25}}, "alpha_regularizer": null, "alpha_constraint": null, "shared_axes": null}, "name": "p_re_lu", "inbound_nodes": [[["batch_normalization_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["p_re_lu", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 14, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_1", 0, 0]]}, "input_spec": [{"class_name": "InputSpec", "config": {"dtype": null, "shape": {"class_name": "__tuple__", "items": [null, 3, 12]}, "ndim": 3, "max_ndim": null, "min_ndim": null, "axes": {}}}], "build_input_shape": {"class_name": "TensorShape", "items": [null, 3, 12]}, "is_graph_network": true, "keras_version": "2.4.0", "backend": "tensorflow", "model_config": {"class_name": "Functional", "config": {"name": "model", "layers": [{"class_name": "InputLayer", "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}, "name": "input_1", "inbound_nodes": []}, {"class_name": "CustomActivation", "config": {"name": "custom_activation", "trainable": true, "dtype": "float32"}, "name": "custom_activation", "inbound_nodes": [[["input_1", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d", "inbound_nodes": [[["custom_activation", 0, 0, {}]]]}, {"class_name": "Conv2D", "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "conv2d_1", "inbound_nodes": [[["custom_activation", 0, 1, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization", "inbound_nodes": [[["conv2d", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_1", "inbound_nodes": [[["conv2d_1", 0, 0, {}]]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.relu", "trainable": true, "dtype": "float32", "function": "nn.relu"}, "name": "tf.nn.relu", "inbound_nodes": [["batch_normalization", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh", "inbound_nodes": [["batch_normalization", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.nn.relu_1", "trainable": true, "dtype": "float32", "function": "nn.relu"}, "name": "tf.nn.relu_1", "inbound_nodes": [["batch_normalization_1", 0, 0, {"name": null}]]}, {"class_name": "TFOpLambda", "config": {"name": "tf.math.tanh_1", "trainable": true, "dtype": "float32", "function": "math.tanh"}, "name": "tf.math.tanh_1", "inbound_nodes": [["batch_normalization_1", 0, 0, {"name": null}]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d", "inbound_nodes": [[["tf.nn.relu", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d", "inbound_nodes": [[["tf.nn.relu", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_1", "inbound_nodes": [[["tf.math.tanh", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_1", "inbound_nodes": [[["tf.math.tanh", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_2", "inbound_nodes": [[["tf.nn.relu_1", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_2", "inbound_nodes": [[["tf.nn.relu_1", 0, 0, {}]]]}, {"class_name": "MaxPooling2D", "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "max_pooling2d_3", "inbound_nodes": [[["tf.math.tanh_1", 0, 0, {}]]]}, {"class_name": "AveragePooling2D", "config": {"name": "average_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "name": "average_pooling2d_3", "inbound_nodes": [[["tf.math.tanh_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten", "inbound_nodes": [[["max_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_1", "inbound_nodes": [[["average_pooling2d", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_2", "inbound_nodes": [[["max_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_3", "inbound_nodes": [[["average_pooling2d_1", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_4", "inbound_nodes": [[["max_pooling2d_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_5", "inbound_nodes": [[["average_pooling2d_2", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_6", "inbound_nodes": [[["max_pooling2d_3", 0, 0, {}]]]}, {"class_name": "Flatten", "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "name": "flatten_7", "inbound_nodes": [[["average_pooling2d_3", 0, 0, {}]]]}, {"class_name": "Concatenate", "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "name": "concatenate", "inbound_nodes": [{"class_name": "__tuple__", "items": [["flatten", 0, 0, {}], ["flatten_1", 0, 0, {}], ["flatten_2", 0, 0, {}], ["flatten_3", 0, 0, {}], ["flatten_4", 0, 0, {}], ["flatten_5", 0, 0, {}], ["flatten_6", 0, 0, {}], ["flatten_7", 0, 0, {}]]}]}, {"class_name": "Dense", "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 768, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.019999999552965164}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense", "inbound_nodes": [[["concatenate", 0, 0, {}]]]}, {"class_name": "BatchNormalization", "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "name": "batch_normalization_2", "inbound_nodes": [[["dense", 0, 0, {}]]]}, {"class_name": "PReLU", "config": {"name": "p_re_lu", "trainable": true, "dtype": "float32", "alpha_initializer": {"class_name": "Constant", "config": {"value": 0.25}}, "alpha_regularizer": null, "alpha_constraint": null, "shared_axes": null}, "name": "p_re_lu", "inbound_nodes": [[["batch_normalization_2", 0, 0, {}]]]}, {"class_name": "Dropout", "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}, "name": "dropout", "inbound_nodes": [[["p_re_lu", 0, 0, {}]]]}, {"class_name": "Dense", "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 14, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "name": "dense_1", "inbound_nodes": [[["dropout", 0, 0, {}]]]}], "input_layers": [["input_1", 0, 0]], "output_layers": [["dense_1", 0, 0]]}}, "training_config": {"loss": "CustomLoss", "metrics": [[{"class_name": "CategoricalAccuracy", "config": {"name": "categorical_accuracy", "dtype": "float32"}}]], "weighted_metrics": null, "loss_weights": null, "optimizer_config": {"class_name": "Adam", "config": {"name": "Adam", "learning_rate": {"class_name": "ExponentialDecay", "config": {"initial_learning_rate": 0.001, "decay_steps": 5200, "decay_rate": 0.1, "staircase": false, "name": null}}, "decay": 0.0, "beta_1": 0.8999999761581421, "beta_2": 0.9990000128746033, "epsilon": 1e-07, "amsgrad": false}}}}

#(_self_saveable_object_factories"î
_tf_keras_input_layerÎ{"class_name": "InputLayer", "name": "input_1", "dtype": "float32", "sparse": false, "ragged": false, "batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 12]}, "config": {"batch_input_shape": {"class_name": "__tuple__", "items": [null, 3, 12]}, "dtype": "float32", "sparse": false, "ragged": false, "name": "input_1"}}


)mu_t_1

*mu_t_2

+mu_t_3

,mu_t_4
-	sigma_t_1
.	sigma_t_2
/	sigma_t_3
0	sigma_t_4
1	sigma_t_5
2	sigma_t_6
3	sigma_t_7
4	sigma_t_8

5mu_p_1

6mu_p_2

7mu_p_3
8	sigma_p_1
9	sigma_p_2
:	sigma_p_3
;	sigma_p_4
<	sigma_p_5
=	sigma_p_6
#>_self_saveable_object_factories
?	variables
@trainable_variables
Aregularization_losses
B	keras_api
Ë__call__
+Ì&call_and_return_all_conditional_losses"À
_tf_keras_layer¦{"class_name": "CustomActivation", "name": "custom_activation", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "custom_activation", "trainable": true, "dtype": "float32"}}



Ckernel
Dbias
#E_self_saveable_object_factories
F	variables
Gtrainable_variables
Hregularization_losses
I	keras_api
Í__call__
+Î&call_and_return_all_conditional_losses"Å
_tf_keras_layer«{"class_name": "Conv2D", "name": "conv2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 14, 1]}}



Jkernel
Kbias
#L_self_saveable_object_factories
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Ï__call__
+Ð&call_and_return_all_conditional_losses"É
_tf_keras_layer¯{"class_name": "Conv2D", "name": "conv2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "conv2d_1", "trainable": true, "dtype": "float32", "filters": 24, "kernel_size": {"class_name": "__tuple__", "items": [3, 3]}, "strides": {"class_name": "__tuple__", "items": [1, 1]}, "padding": "valid", "data_format": "channels_last", "dilation_rate": {"class_name": "__tuple__", "items": [1, 1]}, "groups": 1, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 4, "axes": {"-1": 1}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 10, 14, 1]}}
Ì

Qaxis
	Rgamma
Sbeta
Tmoving_mean
Umoving_variance
#V_self_saveable_object_factories
W	variables
Xtrainable_variables
Yregularization_losses
Z	keras_api
Ñ__call__
+Ò&call_and_return_all_conditional_losses"Ñ
_tf_keras_layer·{"class_name": "BatchNormalization", "name": "batch_normalization", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 12, 24]}}
Ð

[axis
	\gamma
]beta
^moving_mean
_moving_variance
#`_self_saveable_object_factories
a	variables
btrainable_variables
cregularization_losses
d	keras_api
Ó__call__
+Ô&call_and_return_all_conditional_losses"Õ
_tf_keras_layer»{"class_name": "BatchNormalization", "name": "batch_normalization_1", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_1", "trainable": true, "dtype": "float32", "axis": [3], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {"3": 24}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 8, 12, 24]}}
ù
#e_self_saveable_object_factories
f	keras_api"Â
_tf_keras_layer¨{"class_name": "TFOpLambda", "name": "tf.nn.relu", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.relu", "trainable": true, "dtype": "float32", "function": "nn.relu"}}
ÿ
#g_self_saveable_object_factories
h	keras_api"È
_tf_keras_layer®{"class_name": "TFOpLambda", "name": "tf.math.tanh", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.tanh", "trainable": true, "dtype": "float32", "function": "math.tanh"}}
ý
#i_self_saveable_object_factories
j	keras_api"Æ
_tf_keras_layer¬{"class_name": "TFOpLambda", "name": "tf.nn.relu_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.nn.relu_1", "trainable": true, "dtype": "float32", "function": "nn.relu"}}

#k_self_saveable_object_factories
l	keras_api"Ì
_tf_keras_layer²{"class_name": "TFOpLambda", "name": "tf.math.tanh_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": true, "config": {"name": "tf.math.tanh_1", "trainable": true, "dtype": "float32", "function": "math.tanh"}}
¤
#m_self_saveable_object_factories
n	variables
otrainable_variables
pregularization_losses
q	keras_api
Õ__call__
+Ö&call_and_return_all_conditional_losses"î
_tf_keras_layerÔ{"class_name": "MaxPooling2D", "name": "max_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
°
#r_self_saveable_object_factories
s	variables
ttrainable_variables
uregularization_losses
v	keras_api
×__call__
+Ø&call_and_return_all_conditional_losses"ú
_tf_keras_layerà{"class_name": "AveragePooling2D", "name": "average_pooling2d", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¨
#w_self_saveable_object_factories
x	variables
ytrainable_variables
zregularization_losses
{	keras_api
Ù__call__
+Ú&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
µ
#|_self_saveable_object_factories
}	variables
~trainable_variables
regularization_losses
	keras_api
Û__call__
+Ü&call_and_return_all_conditional_losses"þ
_tf_keras_layerä{"class_name": "AveragePooling2D", "name": "average_pooling2d_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_1", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
­
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
Ý__call__
+Þ&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¹
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
ß__call__
+à&call_and_return_all_conditional_losses"þ
_tf_keras_layerä{"class_name": "AveragePooling2D", "name": "average_pooling2d_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_2", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
­
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
á__call__
+â&call_and_return_all_conditional_losses"ò
_tf_keras_layerØ{"class_name": "MaxPooling2D", "name": "max_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "max_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}
¹
$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
ã__call__
+ä&call_and_return_all_conditional_losses"þ
_tf_keras_layerä{"class_name": "AveragePooling2D", "name": "average_pooling2d_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "average_pooling2d_3", "trainable": true, "dtype": "float32", "pool_size": {"class_name": "__tuple__", "items": [1, 12]}, "padding": "valid", "strides": {"class_name": "__tuple__", "items": [1, 12]}, "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 4, "max_ndim": null, "min_ndim": null, "axes": {}}}}

$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
å__call__
+æ&call_and_return_all_conditional_losses"Ó
_tf_keras_layer¹{"class_name": "Flatten", "name": "flatten", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$_self_saveable_object_factories
	variables
trainable_variables
regularization_losses
	keras_api
ç__call__
+è&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_1", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$_self_saveable_object_factories
 	variables
¡trainable_variables
¢regularization_losses
£	keras_api
é__call__
+ê&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_2", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_2", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$¤_self_saveable_object_factories
¥	variables
¦trainable_variables
§regularization_losses
¨	keras_api
ë__call__
+ì&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_3", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_3", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$©_self_saveable_object_factories
ª	variables
«trainable_variables
¬regularization_losses
­	keras_api
í__call__
+î&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_4", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_4", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$®_self_saveable_object_factories
¯	variables
°trainable_variables
±regularization_losses
²	keras_api
ï__call__
+ð&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_5", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_5", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$³_self_saveable_object_factories
´	variables
µtrainable_variables
¶regularization_losses
·	keras_api
ñ__call__
+ò&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_6", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_6", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}

$¸_self_saveable_object_factories
¹	variables
ºtrainable_variables
»regularization_losses
¼	keras_api
ó__call__
+ô&call_and_return_all_conditional_losses"×
_tf_keras_layer½{"class_name": "Flatten", "name": "flatten_7", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "flatten_7", "trainable": true, "dtype": "float32", "data_format": "channels_last"}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 1, "axes": {}}}}
Û
$½_self_saveable_object_factories
¾	variables
¿trainable_variables
Àregularization_losses
Á	keras_api
õ__call__
+ö&call_and_return_all_conditional_losses" 
_tf_keras_layer{"class_name": "Concatenate", "name": "concatenate", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "concatenate", "trainable": true, "dtype": "float32", "axis": -1}, "build_input_shape": {"class_name": "__tuple__", "items": [{"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}, {"class_name": "TensorShape", "items": [null, 192]}]}}
Ô
Âkernel
	Ãbias
$Ä_self_saveable_object_factories
Å	variables
Ætrainable_variables
Çregularization_losses
È	keras_api
÷__call__
+ø&call_and_return_all_conditional_losses"
_tf_keras_layerç{"class_name": "Dense", "name": "dense", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense", "trainable": true, "dtype": "float32", "units": 768, "activation": "linear", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": {"class_name": "L2", "config": {"l2": 0.019999999552965164}}, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 1536}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 1536]}}
Õ

	Éaxis

Êgamma
	Ëbeta
Ìmoving_mean
Ímoving_variance
$Î_self_saveable_object_factories
Ï	variables
Ðtrainable_variables
Ñregularization_losses
Ò	keras_api
ù__call__
+ú&call_and_return_all_conditional_losses"Ð
_tf_keras_layer¶{"class_name": "BatchNormalization", "name": "batch_normalization_2", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "batch_normalization_2", "trainable": true, "dtype": "float32", "axis": [1], "momentum": 0.99, "epsilon": 0.001, "center": true, "scale": true, "beta_initializer": {"class_name": "Zeros", "config": {}}, "gamma_initializer": {"class_name": "Ones", "config": {}}, "moving_mean_initializer": {"class_name": "Zeros", "config": {}}, "moving_variance_initializer": {"class_name": "Ones", "config": {}}, "beta_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "gamma_regularizer": {"class_name": "L2", "config": {"l2": 0.009999999776482582}}, "beta_constraint": null, "gamma_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {"1": 768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768]}}
Ø

Óalpha
$Ô_self_saveable_object_factories
Õ	variables
Ötrainable_variables
×regularization_losses
Ø	keras_api
û__call__
+ü&call_and_return_all_conditional_losses"
_tf_keras_layer÷{"class_name": "PReLU", "name": "p_re_lu", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "p_re_lu", "trainable": true, "dtype": "float32", "alpha_initializer": {"class_name": "Constant", "config": {"value": 0.25}}, "alpha_regularizer": null, "alpha_constraint": null, "shared_axes": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": 2, "max_ndim": null, "min_ndim": null, "axes": {}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768]}}

$Ù_self_saveable_object_factories
Ú	variables
Ûtrainable_variables
Üregularization_losses
Ý	keras_api
ý__call__
+þ&call_and_return_all_conditional_losses"Ò
_tf_keras_layer¸{"class_name": "Dropout", "name": "dropout", "trainable": true, "expects_training_arg": true, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dropout", "trainable": true, "dtype": "float32", "rate": 0.5, "noise_shape": null, "seed": null}}

Þkernel
	ßbias
$à_self_saveable_object_factories
á	variables
âtrainable_variables
ãregularization_losses
ä	keras_api
ÿ__call__
+&call_and_return_all_conditional_losses"Ë
_tf_keras_layer±{"class_name": "Dense", "name": "dense_1", "trainable": true, "expects_training_arg": false, "dtype": "float32", "batch_input_shape": null, "stateful": false, "must_restore_from_config": false, "config": {"name": "dense_1", "trainable": true, "dtype": "float32", "units": 14, "activation": "softmax", "use_bias": true, "kernel_initializer": {"class_name": "HeNormal", "config": {"seed": null}}, "bias_initializer": {"class_name": "Zeros", "config": {}}, "kernel_regularizer": null, "bias_regularizer": null, "activity_regularizer": null, "kernel_constraint": null, "bias_constraint": null}, "input_spec": {"class_name": "InputSpec", "config": {"dtype": null, "shape": null, "ndim": null, "max_ndim": null, "min_ndim": 2, "axes": {"-1": 768}}}, "build_input_shape": {"class_name": "TensorShape", "items": [null, 768]}}
¢
	åiter
æbeta_1
çbeta_2

èdecay)m*m+m,m-m.m/m0m1m2m3m4m5m6m7m8m9m:m;m<m=mCmDmJmKmRmSm\m]m	Âm	Ãm	Êm	Ëm 	Óm¡	Þm¢	ßm£)v¤*v¥+v¦,v§-v¨.v©/vª0v«1v¬2v­3v®4v¯5v°6v±7v²8v³9v´:vµ;v¶<v·=v¸Cv¹DvºJv»Kv¼Rv½Sv¾\v¿]vÀ	ÂvÁ	ÃvÂ	ÊvÃ	ËvÄ	ÓvÅ	ÞvÆ	ßvÇ"
	optimizer
-
serving_default"
signature_map
 "
trackable_dict_wrapper
ï
)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20
C21
D22
J23
K24
R25
S26
T27
U28
\29
]30
^31
_32
Â33
Ã34
Ê35
Ë36
Ì37
Í38
Ó39
Þ40
ß41"
trackable_list_wrapper
X
0
1
2
3
4
5
6"
trackable_list_wrapper
½
)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20
C21
D22
J23
K24
R25
S26
\27
]28
Â29
Ã30
Ê31
Ë32
Ó33
Þ34
ß35"
trackable_list_wrapper
Ó
 élayer_regularization_losses
$	variables
êmetrics
ëlayer_metrics
%regularization_losses
&trainable_variables
ìnon_trainable_variables
ílayers
È__call__
Ê_default_save_signature
+É&call_and_return_all_conditional_losses
'É"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
: 2Variable
 "
trackable_dict_wrapper
¾
)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20"
trackable_list_wrapper
¾
)0
*1
+2
,3
-4
.5
/6
07
18
29
310
411
512
613
714
815
916
:17
;18
<19
=20"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
?	variables
@trainable_variables
îmetrics
ïlayer_metrics
Aregularization_losses
 ðlayer_regularization_losses
ñnon_trainable_variables
òlayers
Ë__call__
+Ì&call_and_return_all_conditional_losses
'Ì"call_and_return_conditional_losses"
_generic_user_object
':%2conv2d/kernel
:2conv2d/bias
 "
trackable_dict_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
F	variables
Gtrainable_variables
ómetrics
ôlayer_metrics
Hregularization_losses
 õlayer_regularization_losses
önon_trainable_variables
÷layers
Í__call__
+Î&call_and_return_all_conditional_losses
'Î"call_and_return_conditional_losses"
_generic_user_object
):'2conv2d_1/kernel
:2conv2d_1/bias
 "
trackable_dict_wrapper
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
µ
M	variables
Ntrainable_variables
ømetrics
ùlayer_metrics
Oregularization_losses
 úlayer_regularization_losses
ûnon_trainable_variables
ülayers
Ï__call__
+Ð&call_and_return_all_conditional_losses
'Ð"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
':%2batch_normalization/gamma
&:$2batch_normalization/beta
/:- (2batch_normalization/moving_mean
3:1 (2#batch_normalization/moving_variance
 "
trackable_dict_wrapper
<
R0
S1
T2
U3"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
µ
W	variables
Xtrainable_variables
ýmetrics
þlayer_metrics
Yregularization_losses
 ÿlayer_regularization_losses
non_trainable_variables
layers
Ñ__call__
+Ò&call_and_return_all_conditional_losses
'Ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
):'2batch_normalization_1/gamma
(:&2batch_normalization_1/beta
1:/ (2!batch_normalization_1/moving_mean
5:3 (2%batch_normalization_1/moving_variance
 "
trackable_dict_wrapper
<
\0
]1
^2
_3"
trackable_list_wrapper
.
\0
]1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
µ
a	variables
btrainable_variables
metrics
layer_metrics
cregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Ó__call__
+Ô&call_and_return_all_conditional_losses
'Ô"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
n	variables
otrainable_variables
metrics
layer_metrics
pregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Õ__call__
+Ö&call_and_return_all_conditional_losses
'Ö"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
s	variables
ttrainable_variables
metrics
layer_metrics
uregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
×__call__
+Ø&call_and_return_all_conditional_losses
'Ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
x	variables
ytrainable_variables
metrics
layer_metrics
zregularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Ù__call__
+Ú&call_and_return_all_conditional_losses
'Ú"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
µ
}	variables
~trainable_variables
metrics
layer_metrics
regularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Û__call__
+Ü&call_and_return_all_conditional_losses
'Ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
metrics
layer_metrics
regularization_losses
 layer_regularization_losses
non_trainable_variables
layers
Ý__call__
+Þ&call_and_return_all_conditional_losses
'Þ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
 metrics
¡layer_metrics
regularization_losses
 ¢layer_regularization_losses
£non_trainable_variables
¤layers
ß__call__
+à&call_and_return_all_conditional_losses
'à"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
¥metrics
¦layer_metrics
regularization_losses
 §layer_regularization_losses
¨non_trainable_variables
©layers
á__call__
+â&call_and_return_all_conditional_losses
'â"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
ªmetrics
«layer_metrics
regularization_losses
 ¬layer_regularization_losses
­non_trainable_variables
®layers
ã__call__
+ä&call_and_return_all_conditional_losses
'ä"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
¯metrics
°layer_metrics
regularization_losses
 ±layer_regularization_losses
²non_trainable_variables
³layers
å__call__
+æ&call_and_return_all_conditional_losses
'æ"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
	variables
trainable_variables
´metrics
µlayer_metrics
regularization_losses
 ¶layer_regularization_losses
·non_trainable_variables
¸layers
ç__call__
+è&call_and_return_all_conditional_losses
'è"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
 	variables
¡trainable_variables
¹metrics
ºlayer_metrics
¢regularization_losses
 »layer_regularization_losses
¼non_trainable_variables
½layers
é__call__
+ê&call_and_return_all_conditional_losses
'ê"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¥	variables
¦trainable_variables
¾metrics
¿layer_metrics
§regularization_losses
 Àlayer_regularization_losses
Ánon_trainable_variables
Âlayers
ë__call__
+ì&call_and_return_all_conditional_losses
'ì"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
ª	variables
«trainable_variables
Ãmetrics
Älayer_metrics
¬regularization_losses
 Ålayer_regularization_losses
Ænon_trainable_variables
Çlayers
í__call__
+î&call_and_return_all_conditional_losses
'î"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¯	variables
°trainable_variables
Èmetrics
Élayer_metrics
±regularization_losses
 Êlayer_regularization_losses
Ënon_trainable_variables
Ìlayers
ï__call__
+ð&call_and_return_all_conditional_losses
'ð"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
´	variables
µtrainable_variables
Ímetrics
Îlayer_metrics
¶regularization_losses
 Ïlayer_regularization_losses
Ðnon_trainable_variables
Ñlayers
ñ__call__
+ò&call_and_return_all_conditional_losses
'ò"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¹	variables
ºtrainable_variables
Òmetrics
Ólayer_metrics
»regularization_losses
 Ôlayer_regularization_losses
Õnon_trainable_variables
Ölayers
ó__call__
+ô&call_and_return_all_conditional_losses
'ô"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
¾	variables
¿trainable_variables
×metrics
Ølayer_metrics
Àregularization_losses
 Ùlayer_regularization_losses
Únon_trainable_variables
Ûlayers
õ__call__
+ö&call_and_return_all_conditional_losses
'ö"call_and_return_conditional_losses"
_generic_user_object
 :
2dense/kernel
:2
dense/bias
 "
trackable_dict_wrapper
0
Â0
Ã1"
trackable_list_wrapper
0
Â0
Ã1"
trackable_list_wrapper
(
0"
trackable_list_wrapper
¸
Å	variables
Ætrainable_variables
Ümetrics
Ýlayer_metrics
Çregularization_losses
 Þlayer_regularization_losses
ßnon_trainable_variables
àlayers
÷__call__
+ø&call_and_return_all_conditional_losses
'ø"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_list_wrapper
*:(2batch_normalization_2/gamma
):'2batch_normalization_2/beta
2:0 (2!batch_normalization_2/moving_mean
6:4 (2%batch_normalization_2/moving_variance
 "
trackable_dict_wrapper
@
Ê0
Ë1
Ì2
Í3"
trackable_list_wrapper
0
Ê0
Ë1"
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
¸
Ï	variables
Ðtrainable_variables
ámetrics
âlayer_metrics
Ñregularization_losses
 ãlayer_regularization_losses
änon_trainable_variables
ålayers
ù__call__
+ú&call_and_return_all_conditional_losses
'ú"call_and_return_conditional_losses"
_generic_user_object
:2p_re_lu/alpha
 "
trackable_dict_wrapper
(
Ó0"
trackable_list_wrapper
(
Ó0"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Õ	variables
Ötrainable_variables
æmetrics
çlayer_metrics
×regularization_losses
 èlayer_regularization_losses
énon_trainable_variables
êlayers
û__call__
+ü&call_and_return_all_conditional_losses
'ü"call_and_return_conditional_losses"
_generic_user_object
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¸
Ú	variables
Ûtrainable_variables
ëmetrics
ìlayer_metrics
Üregularization_losses
 ílayer_regularization_losses
înon_trainable_variables
ïlayers
ý__call__
+þ&call_and_return_all_conditional_losses
'þ"call_and_return_conditional_losses"
_generic_user_object
!:	2dense_1/kernel
:2dense_1/bias
 "
trackable_dict_wrapper
0
Þ0
ß1"
trackable_list_wrapper
0
Þ0
ß1"
trackable_list_wrapper
 "
trackable_list_wrapper
¸
á	variables
âtrainable_variables
ðmetrics
ñlayer_metrics
ãregularization_losses
 òlayer_regularization_losses
ónon_trainable_variables
ôlayers
ÿ__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
 "
trackable_list_wrapper
0
õ0
ö1"
trackable_list_wrapper
 "
trackable_dict_wrapper
L
T0
U1
^2
_3
Ì4
Í5"
trackable_list_wrapper

0
1
2
3
4
5
6
7
	8

9
10
11
12
13
14
15
16
17
18
19
20
21
22
23
24
25
26
27
28
29
30
 31"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
T0
U1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
.
^0
_1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
(
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
0
0
1"
trackable_list_wrapper
0
Ì0
Í1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
¿

÷total

øcount
ù	variables
ú	keras_api"
_tf_keras_metricj{"class_name": "Mean", "name": "loss", "dtype": "float32", "config": {"name": "loss", "dtype": "float32"}}


ûtotal

ücount
ý
_fn_kwargs
þ	variables
ÿ	keras_api"´
_tf_keras_metric{"class_name": "CategoricalAccuracy", "name": "categorical_accuracy", "dtype": "float32", "config": {"name": "categorical_accuracy", "dtype": "float32"}}
:  (2total
:  (2count
0
÷0
ø1"
trackable_list_wrapper
.
ù	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
û0
ü1"
trackable_list_wrapper
.
þ	variables"
_generic_user_object
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
: 2Adam/Variable/m
,:*2Adam/conv2d/kernel/m
:2Adam/conv2d/bias/m
.:,2Adam/conv2d_1/kernel/m
 :2Adam/conv2d_1/bias/m
,:*2 Adam/batch_normalization/gamma/m
+:)2Adam/batch_normalization/beta/m
.:,2"Adam/batch_normalization_1/gamma/m
-:+2!Adam/batch_normalization_1/beta/m
%:#
2Adam/dense/kernel/m
:2Adam/dense/bias/m
/:-2"Adam/batch_normalization_2/gamma/m
.:,2!Adam/batch_normalization_2/beta/m
!:2Adam/p_re_lu/alpha/m
&:$	2Adam/dense_1/kernel/m
:2Adam/dense_1/bias/m
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
: 2Adam/Variable/v
,:*2Adam/conv2d/kernel/v
:2Adam/conv2d/bias/v
.:,2Adam/conv2d_1/kernel/v
 :2Adam/conv2d_1/bias/v
,:*2 Adam/batch_normalization/gamma/v
+:)2Adam/batch_normalization/beta/v
.:,2"Adam/batch_normalization_1/gamma/v
-:+2!Adam/batch_normalization_1/beta/v
%:#
2Adam/dense/kernel/v
:2Adam/dense/bias/v
/:-2"Adam/batch_normalization_2/gamma/v
.:,2!Adam/batch_normalization_2/beta/v
!:2Adam/p_re_lu/alpha/v
&:$	2Adam/dense_1/kernel/v
:2Adam/dense_1/bias/v
â2ß
%__inference_model_layer_call_fn_79396
%__inference_model_layer_call_fn_80387
%__inference_model_layer_call_fn_80298
%__inference_model_layer_call_fn_79647À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Î2Ë
@__inference_model_layer_call_and_return_conditional_losses_80209
@__inference_model_layer_call_and_return_conditional_losses_80011
@__inference_model_layer_call_and_return_conditional_losses_79144
@__inference_model_layer_call_and_return_conditional_losses_78982À
·²³
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
â2ß
 __inference__wrapped_model_77757º
²
FullArgSpec
args 
varargsjargs
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª **¢'
%"
input_1ÿÿÿÿÿÿÿÿÿ
Ð2Í
0__inference_custom_activation_layer_call_fn_7704
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
K__inference_custom_activation_layer_call_and_return_conditional_losses_9127
²
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ð2Í
&__inference_conv2d_layer_call_fn_80406¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ë2è
A__inference_conv2d_layer_call_and_return_conditional_losses_80397¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ò2Ï
(__inference_conv2d_1_layer_call_fn_80425¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
í2ê
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80416¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
2
3__inference_batch_normalization_layer_call_fn_80525
3__inference_batch_normalization_layer_call_fn_80512
3__inference_batch_normalization_layer_call_fn_80613
3__inference_batch_normalization_layer_call_fn_80600´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
ú2÷
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80587
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80499
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80469
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80557´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
5__inference_batch_normalization_1_layer_call_fn_80801
5__inference_batch_normalization_1_layer_call_fn_80700
5__inference_batch_normalization_1_layer_call_fn_80788
5__inference_batch_normalization_1_layer_call_fn_80713´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2ÿ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80775
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80657
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80687
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80745´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
2
-__inference_max_pooling2d_layer_call_fn_78073à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
°2­
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_78067à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
1__inference_average_pooling2d_layer_call_fn_78085à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
´2±
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_78079à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling2d_1_layer_call_fn_78097à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
²2¯
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_78091à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
3__inference_average_pooling2d_1_layer_call_fn_78109à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¶2³
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_78103à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling2d_2_layer_call_fn_78121à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
²2¯
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_78115à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
3__inference_average_pooling2d_2_layer_call_fn_78133à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¶2³
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_78127à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
/__inference_max_pooling2d_3_layer_call_fn_78145à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
²2¯
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_78139à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
3__inference_average_pooling2d_3_layer_call_fn_78157à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
¶2³
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_78151à
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *@¢=
;84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
Ñ2Î
'__inference_flatten_layer_call_fn_80812¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_flatten_layer_call_and_return_conditional_losses_80807¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_1_layer_call_fn_80823¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_1_layer_call_and_return_conditional_losses_80818¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_2_layer_call_fn_80834¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_2_layer_call_and_return_conditional_losses_80829¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_3_layer_call_fn_80845¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_3_layer_call_and_return_conditional_losses_80840¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_4_layer_call_fn_80856¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_4_layer_call_and_return_conditional_losses_80851¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_5_layer_call_fn_80867¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_5_layer_call_and_return_conditional_losses_80862¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_6_layer_call_fn_80878¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_6_layer_call_and_return_conditional_losses_80873¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ó2Ð
)__inference_flatten_7_layer_call_fn_80889¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
î2ë
D__inference_flatten_7_layer_call_and_return_conditional_losses_80884¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Õ2Ò
+__inference_concatenate_layer_call_fn_80914¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ð2í
F__inference_concatenate_layer_call_and_return_conditional_losses_80902¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
Ï2Ì
%__inference_dense_layer_call_fn_80945¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ê2ç
@__inference_dense_layer_call_and_return_conditional_losses_80936¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
¨2¥
5__inference_batch_normalization_2_layer_call_fn_81050
5__inference_batch_normalization_2_layer_call_fn_81063´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Þ2Û
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81037
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81005´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
õ2ò
'__inference_p_re_lu_layer_call_fn_78366Æ
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
B__inference_p_re_lu_layer_call_and_return_conditional_losses_78358Æ
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *&¢#
!ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
2
'__inference_dropout_layer_call_fn_81085
'__inference_dropout_layer_call_fn_81090´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Â2¿
B__inference_dropout_layer_call_and_return_conditional_losses_81075
B__inference_dropout_layer_call_and_return_conditional_losses_81080´
«²§
FullArgSpec)
args!
jself
jinputs

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaultsª 
annotationsª *
 
Ñ2Î
'__inference_dense_1_layer_call_fn_81110¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ì2é
B__inference_dense_1_layer_call_and_return_conditional_losses_81101¢
²
FullArgSpec
args
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
ÊBÇ
#__inference_signature_wrapper_79786input_1"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *
 
²2¯
__inference_loss_fn_0_81121
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_1_81132
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_2_81143
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_3_81154
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_4_81165
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_5_81176
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ 
²2¯
__inference_loss_fn_6_81187
²
FullArgSpec
args 
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsª *¢ Ã
 __inference__wrapped_model_777573)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß4¢1
*¢'
%"
input_1ÿÿÿÿÿÿÿÿÿ
ª "1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿñ
N__inference_average_pooling2d_1_layer_call_and_return_conditional_losses_78103R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_average_pooling2d_1_layer_call_fn_78109R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
N__inference_average_pooling2d_2_layer_call_and_return_conditional_losses_78127R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_average_pooling2d_2_layer_call_fn_78133R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿñ
N__inference_average_pooling2d_3_layer_call_and_return_conditional_losses_78151R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 É
3__inference_average_pooling2d_3_layer_call_fn_78157R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿï
L__inference_average_pooling2d_layer_call_and_return_conditional_losses_78079R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ç
1__inference_average_pooling2d_layer_call_fn_78085R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80657\]^_M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 ë
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80687\]^_M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80745r\]^_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Æ
P__inference_batch_normalization_1_layer_call_and_return_conditional_losses_80775r\]^_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ã
5__inference_batch_normalization_1_layer_call_fn_80700\]^_M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÃ
5__inference_batch_normalization_1_layer_call_fn_80713\]^_M¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
5__inference_batch_normalization_1_layer_call_fn_80788e\]^_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿ
5__inference_batch_normalization_1_layer_call_fn_80801e\]^_;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿ¼
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81005hÌÍÊË4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¼
P__inference_batch_normalization_2_layer_call_and_return_conditional_losses_81037hÍÊÌË4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
5__inference_batch_normalization_2_layer_call_fn_81050[ÌÍÊË4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ
5__inference_batch_normalization_2_layer_call_fn_81063[ÍÊÌË4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿé
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80469RSTUM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 é
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80499RSTUM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "?¢<
52
0+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80557rRSTU;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Ä
N__inference_batch_normalization_layer_call_and_return_conditional_losses_80587rRSTU;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 Á
3__inference_batch_normalization_layer_call_fn_80512RSTUM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÁ
3__inference_batch_normalization_layer_call_fn_80525RSTUM¢J
C¢@
:7
inputs+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
p 
ª "2/+ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
3__inference_batch_normalization_layer_call_fn_80600eRSTU;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p
ª " ÿÿÿÿÿÿÿÿÿ
3__inference_batch_normalization_layer_call_fn_80613eRSTU;¢8
1¢.
(%
inputsÿÿÿÿÿÿÿÿÿ
p 
ª " ÿÿÿÿÿÿÿÿÿµ
F__inference_concatenate_layer_call_and_return_conditional_losses_80902ê¿¢»
³¢¯
¬¢¨
# 
inputs/0ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/1ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/2ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/3ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/4ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/5ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/6ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/7ÿÿÿÿÿÿÿÿÿÀ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
+__inference_concatenate_layer_call_fn_80914Ý¿¢»
³¢¯
¬¢¨
# 
inputs/0ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/1ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/2ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/3ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/4ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/5ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/6ÿÿÿÿÿÿÿÿÿÀ
# 
inputs/7ÿÿÿÿÿÿÿÿÿÀ
ª "ÿÿÿÿÿÿÿÿÿ³
C__inference_conv2d_1_layer_call_and_return_conditional_losses_80416lJK7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
(__inference_conv2d_1_layer_call_fn_80425_JK7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

ª " ÿÿÿÿÿÿÿÿÿ±
A__inference_conv2d_layer_call_and_return_conditional_losses_80397lCD7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

ª "-¢*
# 
0ÿÿÿÿÿÿÿÿÿ
 
&__inference_conv2d_layer_call_fn_80406_CD7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ

ª " ÿÿÿÿÿÿÿÿÿù
K__inference_custom_activation_layer_call_and_return_conditional_losses_9127©)-58*.69+/7:,01;2<3=43¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "[¢X
QN
%"
0/0ÿÿÿÿÿÿÿÿÿ

%"
0/1ÿÿÿÿÿÿÿÿÿ

 Ð
0__inference_custom_activation_layer_call_fn_7704)-58*.69+/7:,01;2<3=43¢0
)¢&
$!
inputsÿÿÿÿÿÿÿÿÿ
ª "MJ
# 
0ÿÿÿÿÿÿÿÿÿ

# 
1ÿÿÿÿÿÿÿÿÿ
¥
B__inference_dense_1_layer_call_and_return_conditional_losses_81101_Þß0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 }
'__inference_dense_1_layer_call_fn_81110RÞß0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
@__inference_dense_layer_call_and_return_conditional_losses_80936`ÂÃ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
%__inference_dense_layer_call_fn_80945SÂÃ0¢-
&¢#
!
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿ¤
B__inference_dropout_layer_call_and_return_conditional_losses_81075^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 ¤
B__inference_dropout_layer_call_and_return_conditional_losses_81080^4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 |
'__inference_dropout_layer_call_fn_81085Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p
ª "ÿÿÿÿÿÿÿÿÿ|
'__inference_dropout_layer_call_fn_81090Q4¢1
*¢'
!
inputsÿÿÿÿÿÿÿÿÿ
p 
ª "ÿÿÿÿÿÿÿÿÿ©
D__inference_flatten_1_layer_call_and_return_conditional_losses_80818a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_1_layer_call_fn_80823T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_2_layer_call_and_return_conditional_losses_80829a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_2_layer_call_fn_80834T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_3_layer_call_and_return_conditional_losses_80840a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_3_layer_call_fn_80845T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_4_layer_call_and_return_conditional_losses_80851a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_4_layer_call_fn_80856T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_5_layer_call_and_return_conditional_losses_80862a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_5_layer_call_fn_80867T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_6_layer_call_and_return_conditional_losses_80873a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_6_layer_call_fn_80878T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ©
D__inference_flatten_7_layer_call_and_return_conditional_losses_80884a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
)__inference_flatten_7_layer_call_fn_80889T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ§
B__inference_flatten_layer_call_and_return_conditional_losses_80807a7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿÀ
 
'__inference_flatten_layer_call_fn_80812T7¢4
-¢*
(%
inputsÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÀ:
__inference_loss_fn_0_81121R¢

¢ 
ª " :
__inference_loss_fn_1_81132S¢

¢ 
ª " :
__inference_loss_fn_2_81143\¢

¢ 
ª " :
__inference_loss_fn_3_81154]¢

¢ 
ª " ;
__inference_loss_fn_4_81165Â¢

¢ 
ª " ;
__inference_loss_fn_5_81176Ê¢

¢ 
ª " ;
__inference_loss_fn_6_81187Ë¢

¢ 
ª " í
J__inference_max_pooling2d_1_layer_call_and_return_conditional_losses_78091R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_1_layer_call_fn_78097R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_2_layer_call_and_return_conditional_losses_78115R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_2_layer_call_fn_78121R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿí
J__inference_max_pooling2d_3_layer_call_and_return_conditional_losses_78139R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Å
/__inference_max_pooling2d_3_layer_call_fn_78145R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿë
H__inference_max_pooling2d_layer_call_and_return_conditional_losses_78067R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "H¢E
>;
04ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
 Ã
-__inference_max_pooling2d_layer_call_fn_78073R¢O
H¢E
C@
inputs4ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª ";84ÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿß
@__inference_model_layer_call_and_return_conditional_losses_789823)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÌÍÊËÓÞß<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ß
@__inference_model_layer_call_and_return_conditional_losses_791443)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Þ
@__inference_model_layer_call_and_return_conditional_losses_800113)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÌÍÊËÓÞß;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 Þ
@__inference_model_layer_call_and_return_conditional_losses_802093)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "%¢"

0ÿÿÿÿÿÿÿÿÿ
 ·
%__inference_model_layer_call_fn_793963)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÌÍÊËÓÞß<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ·
%__inference_model_layer_call_fn_796473)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß<¢9
2¢/
%"
input_1ÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¶
%__inference_model_layer_call_fn_802983)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÌÍÊËÓÞß;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p

 
ª "ÿÿÿÿÿÿÿÿÿ¶
%__inference_model_layer_call_fn_803873)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß;¢8
1¢.
$!
inputsÿÿÿÿÿÿÿÿÿ
p 

 
ª "ÿÿÿÿÿÿÿÿÿ¬
B__inference_p_re_lu_layer_call_and_return_conditional_losses_78358fÓ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "&¢#

0ÿÿÿÿÿÿÿÿÿ
 
'__inference_p_re_lu_layer_call_fn_78366YÓ8¢5
.¢+
)&
inputsÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿÿ
ª "ÿÿÿÿÿÿÿÿÿÑ
#__inference_signature_wrapper_79786©3)-58*.69+/7:,01;2<3=4JKCD\]^_RSTUÂÃÍÊÌËÓÞß?¢<
¢ 
5ª2
0
input_1%"
input_1ÿÿÿÿÿÿÿÿÿ"1ª.
,
dense_1!
dense_1ÿÿÿÿÿÿÿÿÿ