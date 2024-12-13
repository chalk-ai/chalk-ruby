# frozen_string_literal: true
# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: chalk/expression/v1/expression.proto

require 'google/protobuf'

require 'chalk_ruby/protos/chalk/arrow/v1/arrow_pb'


descriptor_data = "\n$chalk/expression/v1/expression.proto\x12\x13\x63halk.expression.v1\x1a\x1a\x63halk/arrow/v1/arrow.proto\" \n\nIdentifier\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\"\x8f\x01\n\x10\x45xprGetAttribute\x12<\n\x06parent\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x06parent\x12=\n\tattribute\x18\x02 \x01(\x0b\x32\x1f.chalk.expression.v1.IdentifierR\tattribute\"\x94\x01\n\x10\x45xprGetSubscript\x12<\n\x06parent\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x06parent\x12\x42\n\tsubscript\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\tsubscript\"\xa2\x02\n\x08\x45xprCall\x12\x38\n\x04\x66unc\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x66unc\x12\x38\n\x04\x61rgs\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x61rgs\x12\x41\n\x06kwargs\x18\x03 \x03(\x0b\x32).chalk.expression.v1.ExprCall.KwargsEntryR\x06kwargs\x1a_\n\x0bKwargsEntry\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12:\n\x05value\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x05value:\x02\x38\x01\"u\n\x0b\x45xprLiteral\x12\x31\n\x05value\x18\x01 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x05value\x12\x33\n\x16is_arrow_scalar_object\x18\x02 \x01(\x08R\x13isArrowScalarObject\"\xc8\x15\n\x0fLogicalExprNode\x12\x41\n\nidentifier\x18# \x01(\x0b\x32\x1f.chalk.expression.v1.IdentifierH\x00R\nidentifier\x12L\n\rget_attribute\x18$ \x01(\x0b\x32%.chalk.expression.v1.ExprGetAttributeH\x00R\x0cgetAttribute\x12L\n\rget_subscript\x18% \x01(\x0b\x32%.chalk.expression.v1.ExprGetSubscriptH\x00R\x0cgetSubscript\x12\x33\n\x04\x63\x61ll\x18& \x01(\x0b\x32\x1d.chalk.expression.v1.ExprCallH\x00R\x04\x63\x61ll\x12G\n\rliteral_value\x18\' \x01(\x0b\x32 .chalk.expression.v1.ExprLiteralH\x00R\x0cliteralValue\x12\x39\n\x06\x63olumn\x18\x01 \x01(\x0b\x32\x1b.chalk.expression.v1.ColumnB\x02\x18\x01H\x01R\x06\x63olumn\x12:\n\x05\x61lias\x18\x02 \x01(\x0b\x32\x1e.chalk.expression.v1.AliasNodeB\x02\x18\x01H\x01R\x05\x61lias\x12;\n\x07literal\x18\x03 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueB\x02\x18\x01H\x01R\x07literal\x12J\n\x0b\x62inary_expr\x18\x04 \x01(\x0b\x32#.chalk.expression.v1.BinaryExprNodeB\x02\x18\x01H\x01R\nbinaryExpr\x12S\n\x0e\x61ggregate_expr\x18\x05 \x01(\x0b\x32&.chalk.expression.v1.AggregateExprNodeB\x02\x18\x01H\x01R\raggregateExpr\x12\x43\n\x0cis_null_expr\x18\x06 \x01(\x0b\x32\x1b.chalk.expression.v1.IsNullB\x02\x18\x01H\x01R\nisNullExpr\x12M\n\x10is_not_null_expr\x18\x07 \x01(\x0b\x32\x1e.chalk.expression.v1.IsNotNullB\x02\x18\x01H\x01R\risNotNullExpr\x12\x39\n\x08not_expr\x18\x08 \x01(\x0b\x32\x18.chalk.expression.v1.NotB\x02\x18\x01H\x01R\x07notExpr\x12@\n\x07\x62\x65tween\x18\t \x01(\x0b\x32 .chalk.expression.v1.BetweenNodeB\x02\x18\x01H\x01R\x07\x62\x65tween\x12\x37\n\x04\x63\x61se\x18\n \x01(\x0b\x32\x1d.chalk.expression.v1.CaseNodeB\x02\x18\x01H\x01R\x04\x63\x61se\x12\x37\n\x04\x63\x61st\x18\x0b \x01(\x0b\x32\x1d.chalk.expression.v1.CastNodeB\x02\x18\x01H\x01R\x04\x63\x61st\x12;\n\x04sort\x18\x0c \x01(\x0b\x32!.chalk.expression.v1.SortExprNodeB\x02\x18\x01H\x01R\x04sort\x12\x43\n\x08negative\x18\r \x01(\x0b\x32!.chalk.expression.v1.NegativeNodeB\x02\x18\x01H\x01R\x08negative\x12>\n\x07in_list\x18\x0e \x01(\x0b\x32\x1f.chalk.expression.v1.InListNodeB\x02\x18\x01H\x01R\x06inList\x12?\n\x08wildcard\x18\x0f \x01(\x0b\x32\x1d.chalk.expression.v1.WildcardB\x02\x18\x01H\x01R\x08wildcard\x12V\n\x0fscalar_function\x18\x10 \x01(\x0b\x32\'.chalk.expression.v1.ScalarFunctionNodeB\x02\x18\x01H\x01R\x0escalarFunction\x12\x41\n\x08try_cast\x18\x11 \x01(\x0b\x32 .chalk.expression.v1.TryCastNodeB\x02\x18\x01H\x01R\x07tryCast\x12J\n\x0bwindow_expr\x18\x12 \x01(\x0b\x32#.chalk.expression.v1.WindowExprNodeB\x02\x18\x01H\x01R\nwindowExpr\x12]\n\x12\x61ggregate_udf_expr\x18\x13 \x01(\x0b\x32).chalk.expression.v1.AggregateUDFExprNodeB\x02\x18\x01H\x01R\x10\x61ggregateUdfExpr\x12T\n\x0fscalar_udf_expr\x18\x14 \x01(\x0b\x32&.chalk.expression.v1.ScalarUDFExprNodeB\x02\x18\x01H\x01R\rscalarUdfExpr\x12V\n\x11get_indexed_field\x18\x15 \x01(\x0b\x32$.chalk.expression.v1.GetIndexedFieldB\x02\x18\x01H\x01R\x0fgetIndexedField\x12M\n\x0cgrouping_set\x18\x16 \x01(\x0b\x32$.chalk.expression.v1.GroupingSetNodeB\x02\x18\x01H\x01R\x0bgroupingSet\x12\x37\n\x04\x63ube\x18\x17 \x01(\x0b\x32\x1d.chalk.expression.v1.CubeNodeB\x02\x18\x01H\x01R\x04\x63ube\x12=\n\x06rollup\x18\x18 \x01(\x0b\x32\x1f.chalk.expression.v1.RollupNodeB\x02\x18\x01H\x01R\x06rollup\x12:\n\x07is_true\x18\x19 \x01(\x0b\x32\x1b.chalk.expression.v1.IsTrueB\x02\x18\x01H\x01R\x06isTrue\x12=\n\x08is_false\x18\x1a \x01(\x0b\x32\x1c.chalk.expression.v1.IsFalseB\x02\x18\x01H\x01R\x07isFalse\x12\x43\n\nis_unknown\x18\x1b \x01(\x0b\x32\x1e.chalk.expression.v1.IsUnknownB\x02\x18\x01H\x01R\tisUnknown\x12\x44\n\x0bis_not_true\x18\x1c \x01(\x0b\x32\x1e.chalk.expression.v1.IsNotTrueB\x02\x18\x01H\x01R\tisNotTrue\x12G\n\x0cis_not_false\x18\x1d \x01(\x0b\x32\x1f.chalk.expression.v1.IsNotFalseB\x02\x18\x01H\x01R\nisNotFalse\x12M\n\x0eis_not_unknown\x18\x1e \x01(\x0b\x32!.chalk.expression.v1.IsNotUnknownB\x02\x18\x01H\x01R\x0cisNotUnknown\x12\x37\n\x04like\x18\x1f \x01(\x0b\x32\x1d.chalk.expression.v1.LikeNodeB\x02\x18\x01H\x01R\x04like\x12:\n\x05ilike\x18  \x01(\x0b\x32\x1e.chalk.expression.v1.ILikeNodeB\x02\x18\x01H\x01R\x05ilike\x12G\n\nsimilar_to\x18! \x01(\x0b\x32\".chalk.expression.v1.SimilarToNodeB\x02\x18\x01H\x01R\tsimilarTo\x12L\n\x0bplaceholder\x18\" \x01(\x0b\x32$.chalk.expression.v1.PlaceholderNodeB\x02\x18\x01H\x01R\x0bplaceholderB\x0b\n\texpr_formB\x0b\n\texpr_type\",\n\x0e\x43olumnRelation\x12\x1a\n\x08relation\x18\x01 \x01(\tR\x08relation\"]\n\x06\x43olumn\x12\x12\n\x04name\x18\x01 \x01(\tR\x04name\x12?\n\x08relation\x18\x02 \x01(\x0b\x32#.chalk.expression.v1.ColumnRelationR\x08relation\";\n\x08Wildcard\x12!\n\tqualifier\x18\x01 \x01(\tH\x00R\tqualifier\x88\x01\x01\x42\x0c\n\n_qualifier\"Y\n\x0fPlaceholderNode\x12\x0e\n\x02id\x18\x01 \x01(\tR\x02id\x12\x36\n\tdata_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\x08\x64\x61taType\"K\n\x0fLogicalExprList\x12\x38\n\x04\x65xpr\x18\x01 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"K\n\x0fGroupingSetNode\x12\x38\n\x04\x65xpr\x18\x01 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprListR\x04\x65xpr\"D\n\x08\x43ubeNode\x12\x38\n\x04\x65xpr\x18\x01 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"F\n\nRollupNode\x12\x38\n\x04\x65xpr\x18\x01 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"C\n\x10NamedStructField\x12/\n\x04name\x18\x01 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\x04name\"C\n\tListIndex\x12\x36\n\x03key\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x03key\"\x81\x01\n\tListRange\x12:\n\x05start\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x05start\x12\x38\n\x04stop\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04stop\"\xad\x02\n\x0fGetIndexedField\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12U\n\x12named_struct_field\x18\x02 \x01(\x0b\x32%.chalk.expression.v1.NamedStructFieldH\x00R\x10namedStructField\x12?\n\nlist_index\x18\x03 \x01(\x0b\x32\x1e.chalk.expression.v1.ListIndexH\x00R\tlistIndex\x12?\n\nlist_range\x18\x04 \x01(\x0b\x32\x1e.chalk.expression.v1.ListRangeH\x00R\tlistRangeB\x07\n\x05\x66ield\"B\n\x06IsNull\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"E\n\tIsNotNull\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"B\n\x06IsTrue\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"C\n\x07IsFalse\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"E\n\tIsUnknown\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"E\n\tIsNotTrue\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"F\n\nIsNotFalse\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"H\n\x0cIsNotUnknown\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"?\n\x03Not\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"\xa1\x01\n\tAliasNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x14\n\x05\x61lias\x18\x02 \x01(\tR\x05\x61lias\x12\x44\n\x08relation\x18\x03 \x03(\x0b\x32(.chalk.expression.v1.OwnedTableReferenceR\x08relation\"*\n\x12\x42\x61reTableReference\x12\x14\n\x05table\x18\x01 \x01(\tR\x05table\"E\n\x15PartialTableReference\x12\x16\n\x06schema\x18\x01 \x01(\tR\x06schema\x12\x14\n\x05table\x18\x02 \x01(\tR\x05table\"\\\n\x12\x46ullTableReference\x12\x18\n\x07\x63\x61talog\x18\x01 \x01(\tR\x07\x63\x61talog\x12\x16\n\x06schema\x18\x02 \x01(\tR\x06schema\x12\x14\n\x05table\x18\x03 \x01(\tR\x05table\"\xf3\x01\n\x13OwnedTableReference\x12=\n\x04\x62\x61re\x18\x01 \x01(\x0b\x32\'.chalk.expression.v1.BareTableReferenceH\x00R\x04\x62\x61re\x12\x46\n\x07partial\x18\x02 \x01(\x0b\x32*.chalk.expression.v1.PartialTableReferenceH\x00R\x07partial\x12=\n\x04\x66ull\x18\x03 \x01(\x0b\x32\'.chalk.expression.v1.FullTableReferenceH\x00R\x04\x66ullB\x16\n\x14table_reference_enum\"b\n\x0e\x42inaryExprNode\x12@\n\x08operands\x18\x01 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x08operands\x12\x0e\n\x02op\x18\x03 \x01(\tR\x02op\"H\n\x0cNegativeNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\"\x9a\x01\n\nInListNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x38\n\x04list\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04list\x12\x18\n\x07negated\x18\x03 \x01(\x08R\x07negated\"\x85\x01\n\x12ScalarFunctionNode\x12\x35\n\x03\x66un\x18\x01 \x01(\x0e\x32#.chalk.expression.v1.ScalarFunctionR\x03\x66un\x12\x38\n\x04\x61rgs\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x61rgs\"\xb5\x02\n\x11\x41ggregateExprNode\x12K\n\raggr_function\x18\x01 \x01(\x0e\x32&.chalk.expression.v1.AggregateFunctionR\x0c\x61ggrFunction\x12\x38\n\x04\x65xpr\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x1a\n\x08\x64istinct\x18\x03 \x01(\x08R\x08\x64istinct\x12<\n\x06\x66ilter\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x06\x66ilter\x12?\n\x08order_by\x18\x05 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07orderBy\"\x9a\x03\n\x14\x41ggregateUDFExprNode\x12\x19\n\x08\x66un_name\x18\x01 \x01(\tR\x07\x66unName\x12\x38\n\x04\x61rgs\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x61rgs\x12<\n\x06\x66ilter\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x06\x66ilter\x12?\n\x08order_by\x18\x04 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07orderBy\x12M\n\x06kwargs\x18\x05 \x03(\x0b\x32\x35.chalk.expression.v1.AggregateUDFExprNode.KwargsEntryR\x06kwargs\x1a_\n\x0bKwargsEntry\x12\x10\n\x03key\x18\x01 \x01(\tR\x03key\x12:\n\x05value\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x05value:\x02\x38\x01\"h\n\x11ScalarUDFExprNode\x12\x19\n\x08\x66un_name\x18\x01 \x01(\tR\x07\x66unName\x12\x38\n\x04\x61rgs\x18\x02 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x61rgs\"\x81\x04\n\x0eWindowExprNode\x12M\n\raggr_function\x18\x01 \x01(\x0e\x32&.chalk.expression.v1.AggregateFunctionH\x00R\x0c\x61ggrFunction\x12X\n\x11\x62uilt_in_function\x18\x02 \x01(\x0e\x32*.chalk.expression.v1.BuiltInWindowFunctionH\x00R\x0f\x62uiltInFunction\x12\x14\n\x04udaf\x18\x03 \x01(\tH\x00R\x04udaf\x12\x14\n\x04udwf\x18\t \x01(\tH\x00R\x04udwf\x12\x38\n\x04\x65xpr\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12G\n\x0cpartition_by\x18\x05 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x0bpartitionBy\x12?\n\x08order_by\x18\x06 \x03(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07orderBy\x12\x43\n\x0cwindow_frame\x18\x08 \x01(\x0b\x32 .chalk.expression.v1.WindowFrameR\x0bwindowFrameB\x11\n\x0fwindow_function\"\xd3\x01\n\x0b\x42\x65tweenNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x18\n\x07negated\x18\x02 \x01(\x08R\x07negated\x12\x36\n\x03low\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x03low\x12\x38\n\x04high\x18\x04 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04high\"\xbf\x01\n\x08LikeNode\x12\x18\n\x07negated\x18\x01 \x01(\x08R\x07negated\x12\x38\n\x04\x65xpr\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12>\n\x07pattern\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07pattern\x12\x1f\n\x0b\x65scape_char\x18\x04 \x01(\tR\nescapeChar\"\xc0\x01\n\tILikeNode\x12\x18\n\x07negated\x18\x01 \x01(\x08R\x07negated\x12\x38\n\x04\x65xpr\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12>\n\x07pattern\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07pattern\x12\x1f\n\x0b\x65scape_char\x18\x04 \x01(\tR\nescapeChar\"\xc4\x01\n\rSimilarToNode\x12\x18\n\x07negated\x18\x01 \x01(\x08R\x07negated\x12\x38\n\x04\x65xpr\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12>\n\x07pattern\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x07pattern\x12\x1f\n\x0b\x65scape_char\x18\x04 \x01(\tR\nescapeChar\"\xcc\x01\n\x08\x43\x61seNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x43\n\x0ewhen_then_expr\x18\x02 \x03(\x0b\x32\x1d.chalk.expression.v1.WhenThenR\x0cwhenThenExpr\x12\x41\n\telse_expr\x18\x03 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x08\x65lseExpr\"\x90\x01\n\x08WhenThen\x12\x41\n\twhen_expr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x08whenExpr\x12\x41\n\tthen_expr\x18\x02 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x08thenExpr\"~\n\x08\x43\x61stNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x38\n\narrow_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\"\x81\x01\n\x0bTryCastNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x38\n\narrow_type\x18\x02 \x01(\x0b\x32\x19.chalk.arrow.v1.ArrowTypeR\tarrowType\"{\n\x0cSortExprNode\x12\x38\n\x04\x65xpr\x18\x01 \x01(\x0b\x32$.chalk.expression.v1.LogicalExprNodeR\x04\x65xpr\x12\x10\n\x03\x61sc\x18\x02 \x01(\x08R\x03\x61sc\x12\x1f\n\x0bnulls_first\x18\x03 \x01(\x08R\nnullsFirst\"\xf6\x01\n\x0bWindowFrame\x12S\n\x12window_frame_units\x18\x01 \x01(\x0e\x32%.chalk.expression.v1.WindowFrameUnitsR\x10windowFrameUnits\x12\x46\n\x0bstart_bound\x18\x02 \x01(\x0b\x32%.chalk.expression.v1.WindowFrameBoundR\nstartBound\x12@\n\x05\x62ound\x18\x03 \x01(\x0b\x32%.chalk.expression.v1.WindowFrameBoundH\x00R\x05\x62ound\x88\x01\x01\x42\x08\n\x06_bound\"\xb2\x01\n\x10WindowFrameBound\x12`\n\x17window_frame_bound_type\x18\x01 \x01(\x0e\x32).chalk.expression.v1.WindowFrameBoundTypeR\x14windowFrameBoundType\x12<\n\x0b\x62ound_value\x18\x02 \x01(\x0b\x32\x1b.chalk.arrow.v1.ScalarValueR\nboundValue*\xa0\x1f\n\x0eScalarFunction\x12\x1f\n\x1bSCALAR_FUNCTION_UNSPECIFIED\x10\x00\x12\x17\n\x13SCALAR_FUNCTION_ABS\x10\x01\x12\x18\n\x14SCALAR_FUNCTION_ACOS\x10\x02\x12\x18\n\x14SCALAR_FUNCTION_ASIN\x10\x03\x12\x18\n\x14SCALAR_FUNCTION_ATAN\x10\x04\x12\x19\n\x15SCALAR_FUNCTION_ASCII\x10\x05\x12\x18\n\x14SCALAR_FUNCTION_CEIL\x10\x06\x12\x17\n\x13SCALAR_FUNCTION_COS\x10\x07\x12\x1a\n\x16SCALAR_FUNCTION_DIGEST\x10\x08\x12\x17\n\x13SCALAR_FUNCTION_EXP\x10\t\x12\x19\n\x15SCALAR_FUNCTION_FLOOR\x10\n\x12\x16\n\x12SCALAR_FUNCTION_LN\x10\x0b\x12\x17\n\x13SCALAR_FUNCTION_LOG\x10\x0c\x12\x19\n\x15SCALAR_FUNCTION_LOG10\x10\r\x12\x18\n\x14SCALAR_FUNCTION_LOG2\x10\x0e\x12\x19\n\x15SCALAR_FUNCTION_ROUND\x10\x0f\x12\x1a\n\x16SCALAR_FUNCTION_SIGNUM\x10\x10\x12\x17\n\x13SCALAR_FUNCTION_SIN\x10\x11\x12\x18\n\x14SCALAR_FUNCTION_SQRT\x10\x12\x12\x17\n\x13SCALAR_FUNCTION_TAN\x10\x13\x12\x19\n\x15SCALAR_FUNCTION_TRUNC\x10\x14\x12\x19\n\x15SCALAR_FUNCTION_ARRAY\x10\x15\x12 \n\x1cSCALAR_FUNCTION_REGEXP_MATCH\x10\x16\x12\x1e\n\x1aSCALAR_FUNCTION_BIT_LENGTH\x10\x17\x12\x19\n\x15SCALAR_FUNCTION_BTRIM\x10\x18\x12$\n SCALAR_FUNCTION_CHARACTER_LENGTH\x10\x19\x12\x17\n\x13SCALAR_FUNCTION_CHR\x10\x1a\x12\x1a\n\x16SCALAR_FUNCTION_CONCAT\x10\x1b\x12)\n%SCALAR_FUNCTION_CONCAT_WITH_SEPARATOR\x10\x1c\x12\x1d\n\x19SCALAR_FUNCTION_DATE_PART\x10\x1d\x12\x1e\n\x1aSCALAR_FUNCTION_DATE_TRUNC\x10\x1e\x12\x1c\n\x18SCALAR_FUNCTION_INIT_CAP\x10\x1f\x12\x18\n\x14SCALAR_FUNCTION_LEFT\x10 \x12\x18\n\x14SCALAR_FUNCTION_LPAD\x10!\x12\x19\n\x15SCALAR_FUNCTION_LOWER\x10\"\x12\x19\n\x15SCALAR_FUNCTION_LTRIM\x10#\x12\x17\n\x13SCALAR_FUNCTION_MD5\x10$\x12\x1b\n\x17SCALAR_FUNCTION_NULL_IF\x10%\x12 \n\x1cSCALAR_FUNCTION_OCTET_LENGTH\x10&\x12\x1a\n\x16SCALAR_FUNCTION_RANDOM\x10\'\x12\"\n\x1eSCALAR_FUNCTION_REGEXP_REPLACE\x10(\x12\x1a\n\x16SCALAR_FUNCTION_REPEAT\x10)\x12\x1b\n\x17SCALAR_FUNCTION_REPLACE\x10*\x12\x1b\n\x17SCALAR_FUNCTION_REVERSE\x10+\x12\x19\n\x15SCALAR_FUNCTION_RIGHT\x10,\x12\x18\n\x14SCALAR_FUNCTION_RPAD\x10-\x12\x19\n\x15SCALAR_FUNCTION_RTRIM\x10.\x12\x1a\n\x16SCALAR_FUNCTION_SHA224\x10/\x12\x1a\n\x16SCALAR_FUNCTION_SHA256\x10\x30\x12\x1a\n\x16SCALAR_FUNCTION_SHA384\x10\x31\x12\x1a\n\x16SCALAR_FUNCTION_SHA512\x10\x32\x12\x1e\n\x1aSCALAR_FUNCTION_SPLIT_PART\x10\x33\x12\x1f\n\x1bSCALAR_FUNCTION_STARTS_WITH\x10\x34\x12\x1a\n\x16SCALAR_FUNCTION_STRPOS\x10\x35\x12\x1a\n\x16SCALAR_FUNCTION_SUBSTR\x10\x36\x12\x1a\n\x16SCALAR_FUNCTION_TO_HEX\x10\x37\x12 \n\x1cSCALAR_FUNCTION_TO_TIMESTAMP\x10\x38\x12\'\n#SCALAR_FUNCTION_TO_TIMESTAMP_MILLIS\x10\x39\x12\'\n#SCALAR_FUNCTION_TO_TIMESTAMP_MICROS\x10:\x12(\n$SCALAR_FUNCTION_TO_TIMESTAMP_SECONDS\x10;\x12\x17\n\x13SCALAR_FUNCTION_NOW\x10<\x12\x1d\n\x19SCALAR_FUNCTION_TRANSLATE\x10=\x12\x18\n\x14SCALAR_FUNCTION_TRIM\x10>\x12\x19\n\x15SCALAR_FUNCTION_UPPER\x10?\x12\x1c\n\x18SCALAR_FUNCTION_COALESCE\x10@\x12\x19\n\x15SCALAR_FUNCTION_POWER\x10\x41\x12\x1e\n\x1aSCALAR_FUNCTION_STRUCT_FUN\x10\x42\x12!\n\x1dSCALAR_FUNCTION_FROM_UNIXTIME\x10\x43\x12\x19\n\x15SCALAR_FUNCTION_ATAN2\x10\x44\x12\x1c\n\x18SCALAR_FUNCTION_DATE_BIN\x10\x45\x12 \n\x1cSCALAR_FUNCTION_ARROW_TYPEOF\x10\x46\x12 \n\x1cSCALAR_FUNCTION_CURRENT_DATE\x10G\x12 \n\x1cSCALAR_FUNCTION_CURRENT_TIME\x10H\x12\x18\n\x14SCALAR_FUNCTION_UUID\x10I\x12\x18\n\x14SCALAR_FUNCTION_CBRT\x10J\x12\x19\n\x15SCALAR_FUNCTION_ACOSH\x10K\x12\x19\n\x15SCALAR_FUNCTION_ASINH\x10L\x12\x19\n\x15SCALAR_FUNCTION_ATANH\x10M\x12\x18\n\x14SCALAR_FUNCTION_SINH\x10N\x12\x18\n\x14SCALAR_FUNCTION_COSH\x10O\x12\x18\n\x14SCALAR_FUNCTION_TANH\x10P\x12\x16\n\x12SCALAR_FUNCTION_PI\x10Q\x12\x1b\n\x17SCALAR_FUNCTION_DEGREES\x10R\x12\x1b\n\x17SCALAR_FUNCTION_RADIANS\x10S\x12\x1d\n\x19SCALAR_FUNCTION_FACTORIAL\x10T\x12\x17\n\x13SCALAR_FUNCTION_LCM\x10U\x12\x17\n\x13SCALAR_FUNCTION_GCD\x10V\x12 \n\x1cSCALAR_FUNCTION_ARRAY_APPEND\x10W\x12 \n\x1cSCALAR_FUNCTION_ARRAY_CONCAT\x10X\x12\x1e\n\x1aSCALAR_FUNCTION_ARRAY_DIMS\x10Y\x12 \n\x1cSCALAR_FUNCTION_ARRAY_REPEAT\x10Z\x12 \n\x1cSCALAR_FUNCTION_ARRAY_LENGTH\x10[\x12\x1f\n\x1bSCALAR_FUNCTION_ARRAY_NDIMS\x10\\\x12\"\n\x1eSCALAR_FUNCTION_ARRAY_POSITION\x10]\x12#\n\x1fSCALAR_FUNCTION_ARRAY_POSITIONS\x10^\x12!\n\x1dSCALAR_FUNCTION_ARRAY_PREPEND\x10_\x12 \n\x1cSCALAR_FUNCTION_ARRAY_REMOVE\x10`\x12!\n\x1dSCALAR_FUNCTION_ARRAY_REPLACE\x10\x61\x12#\n\x1fSCALAR_FUNCTION_ARRAY_TO_STRING\x10\x62\x12\x1f\n\x1bSCALAR_FUNCTION_CARDINALITY\x10\x63\x12!\n\x1dSCALAR_FUNCTION_ARRAY_ELEMENT\x10\x64\x12\x1f\n\x1bSCALAR_FUNCTION_ARRAY_SLICE\x10\x65\x12\x1a\n\x16SCALAR_FUNCTION_ENCODE\x10\x66\x12\x1a\n\x16SCALAR_FUNCTION_DECODE\x10g\x12\x17\n\x13SCALAR_FUNCTION_COT\x10h\x12\x1d\n\x19SCALAR_FUNCTION_ARRAY_HAS\x10i\x12!\n\x1dSCALAR_FUNCTION_ARRAY_HAS_ANY\x10j\x12!\n\x1dSCALAR_FUNCTION_ARRAY_HAS_ALL\x10k\x12\"\n\x1eSCALAR_FUNCTION_ARRAY_REMOVE_N\x10l\x12#\n\x1fSCALAR_FUNCTION_ARRAY_REPLACE_N\x10m\x12$\n SCALAR_FUNCTION_ARRAY_REMOVE_ALL\x10n\x12%\n!SCALAR_FUNCTION_ARRAY_REPLACE_ALL\x10o\x12\x19\n\x15SCALAR_FUNCTION_NANVL\x10p\x12\x1b\n\x17SCALAR_FUNCTION_FLATTEN\x10q\x12\x19\n\x15SCALAR_FUNCTION_ISNAN\x10r\x12\x1a\n\x16SCALAR_FUNCTION_ISZERO\x10s\x12\x1f\n\x1bSCALAR_FUNCTION_ARRAY_EMPTY\x10t\x12\"\n\x1eSCALAR_FUNCTION_ARRAY_POP_BACK\x10u\x12#\n\x1fSCALAR_FUNCTION_STRING_TO_ARRAY\x10v\x12&\n\"SCALAR_FUNCTION_TO_TIMESTAMP_NANOS\x10w\x12#\n\x1fSCALAR_FUNCTION_ARRAY_INTERSECT\x10x\x12\x1f\n\x1bSCALAR_FUNCTION_ARRAY_UNION\x10y\x12\x1c\n\x18SCALAR_FUNCTION_OVER_LAY\x10z\x12\x19\n\x15SCALAR_FUNCTION_RANGE\x10{\x12 \n\x1cSCALAR_FUNCTION_ARRAY_EXCEPT\x10|\x12#\n\x1fSCALAR_FUNCTION_ARRAY_POP_FRONT\x10}\x12\x1f\n\x1bSCALAR_FUNCTION_LEVENSHTEIN\x10~\x12 \n\x1cSCALAR_FUNCTION_SUBSTR_INDEX\x10\x7f\x12 \n\x1bSCALAR_FUNCTION_FIND_IN_SET\x10\x80\x01\x12\x1f\n\x1aSCALAR_FUNCTION_ARRAY_SORT\x10\x81\x01\x12#\n\x1eSCALAR_FUNCTION_ARRAY_DISTINCT\x10\x82\x01*\x8b\n\n\x11\x41ggregateFunction\x12\"\n\x1e\x41GGREGATE_FUNCTION_UNSPECIFIED\x10\x00\x12\x1a\n\x16\x41GGREGATE_FUNCTION_MIN\x10\x01\x12\x1a\n\x16\x41GGREGATE_FUNCTION_MAX\x10\x02\x12\x1a\n\x16\x41GGREGATE_FUNCTION_SUM\x10\x03\x12\x1a\n\x16\x41GGREGATE_FUNCTION_AVG\x10\x04\x12\x1c\n\x18\x41GGREGATE_FUNCTION_COUNT\x10\x05\x12&\n\"AGGREGATE_FUNCTION_APPROX_DISTINCT\x10\x06\x12\x1c\n\x18\x41GGREGATE_FUNCTION_ARRAY\x10\x07\x12\x1f\n\x1b\x41GGREGATE_FUNCTION_VARIANCE\x10\x08\x12#\n\x1f\x41GGREGATE_FUNCTION_VARIANCE_POP\x10\t\x12!\n\x1d\x41GGREGATE_FUNCTION_COVARIANCE\x10\n\x12%\n!AGGREGATE_FUNCTION_COVARIANCE_POP\x10\x0b\x12\x1d\n\x19\x41GGREGATE_FUNCTION_STDDEV\x10\x0c\x12!\n\x1d\x41GGREGATE_FUNCTION_STDDEV_POP\x10\r\x12\"\n\x1e\x41GGREGATE_FUNCTION_CORRELATION\x10\x0e\x12-\n)AGGREGATE_FUNCTION_APPROX_PERCENTILE_CONT\x10\x0f\x12$\n AGGREGATE_FUNCTION_APPROX_MEDIAN\x10\x10\x12\x39\n5AGGREGATE_FUNCTION_APPROX_PERCENTILE_CONT_WITH_WEIGHT\x10\x11\x12\x1f\n\x1b\x41GGREGATE_FUNCTION_GROUPING\x10\x12\x12\x1d\n\x19\x41GGREGATE_FUNCTION_MEDIAN\x10\x13\x12\x1e\n\x1a\x41GGREGATE_FUNCTION_BIT_AND\x10\x14\x12\x1d\n\x19\x41GGREGATE_FUNCTION_BIT_OR\x10\x15\x12\x1e\n\x1a\x41GGREGATE_FUNCTION_BIT_XOR\x10\x16\x12\x1f\n\x1b\x41GGREGATE_FUNCTION_BOOL_AND\x10\x17\x12\x1e\n\x1a\x41GGREGATE_FUNCTION_BOOL_OR\x10\x18\x12\"\n\x1e\x41GGREGATE_FUNCTION_FIRST_VALUE\x10\x19\x12!\n\x1d\x41GGREGATE_FUNCTION_LAST_VALUE\x10\x1a\x12!\n\x1d\x41GGREGATE_FUNCTION_REGR_SLOPE\x10\x1b\x12%\n!AGGREGATE_FUNCTION_REGR_INTERCEPT\x10\x1c\x12!\n\x1d\x41GGREGATE_FUNCTION_REGR_COUNT\x10\x1d\x12\x1e\n\x1a\x41GGREGATE_FUNCTION_REGR_R2\x10\x1e\x12 \n\x1c\x41GGREGATE_FUNCTION_REGR_AVGX\x10\x1f\x12 \n\x1c\x41GGREGATE_FUNCTION_REGR_AVGY\x10 \x12\x1f\n\x1b\x41GGREGATE_FUNCTION_REGR_SXX\x10!\x12\x1f\n\x1b\x41GGREGATE_FUNCTION_REGR_SYY\x10\"\x12\x1f\n\x1b\x41GGREGATE_FUNCTION_REGR_SXY\x10#\x12\x1d\n\x19\x41GGREGATE_FUNCTION_STRING\x10$*\xed\x03\n\x15\x42uiltInWindowFunction\x12(\n$BUILT_IN_WINDOW_FUNCTION_UNSPECIFIED\x10\x00\x12\'\n#BUILT_IN_WINDOW_FUNCTION_ROW_NUMBER\x10\x01\x12!\n\x1d\x42UILT_IN_WINDOW_FUNCTION_RANK\x10\x02\x12\'\n#BUILT_IN_WINDOW_FUNCTION_DENSE_RANK\x10\x03\x12)\n%BUILT_IN_WINDOW_FUNCTION_PERCENT_RANK\x10\x04\x12&\n\"BUILT_IN_WINDOW_FUNCTION_CUME_DIST\x10\x05\x12\"\n\x1e\x42UILT_IN_WINDOW_FUNCTION_NTILE\x10\x06\x12 \n\x1c\x42UILT_IN_WINDOW_FUNCTION_LAG\x10\x07\x12!\n\x1d\x42UILT_IN_WINDOW_FUNCTION_LEAD\x10\x08\x12(\n$BUILT_IN_WINDOW_FUNCTION_FIRST_VALUE\x10\t\x12\'\n#BUILT_IN_WINDOW_FUNCTION_LAST_VALUE\x10\n\x12&\n\"BUILT_IN_WINDOW_FUNCTION_NTH_VALUE\x10\x0b*\x90\x01\n\x10WindowFrameUnits\x12\"\n\x1eWINDOW_FRAME_UNITS_UNSPECIFIED\x10\x00\x12\x1b\n\x17WINDOW_FRAME_UNITS_ROWS\x10\x01\x12\x1c\n\x18WINDOW_FRAME_UNITS_RANGE\x10\x02\x12\x1d\n\x19WINDOW_FRAME_UNITS_GROUPS\x10\x03*\xb6\x01\n\x14WindowFrameBoundType\x12\'\n#WINDOW_FRAME_BOUND_TYPE_UNSPECIFIED\x10\x00\x12\'\n#WINDOW_FRAME_BOUND_TYPE_CURRENT_ROW\x10\x01\x12%\n!WINDOW_FRAME_BOUND_TYPE_PRECEDING\x10\x02\x12%\n!WINDOW_FRAME_BOUND_TYPE_FOLLOWING\x10\x03\x42\x98\x01\n\x17\x63om.chalk.expression.v1B\x0f\x45xpressionProtoP\x01\xa2\x02\x03\x43\x45X\xaa\x02\x13\x43halk.Expression.V1\xca\x02\x13\x43halk\\Expression\\V1\xe2\x02\x1f\x43halk\\Expression\\V1\\GPBMetadata\xea\x02\x15\x43halk::Expression::V1b\x06proto3"

pool = Google::Protobuf::DescriptorPool.generated_pool
pool.add_serialized_file(descriptor_data)

module Chalk
  module Expression
    module V1
      Identifier = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.Identifier").msgclass
      ExprGetAttribute = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ExprGetAttribute").msgclass
      ExprGetSubscript = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ExprGetSubscript").msgclass
      ExprCall = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ExprCall").msgclass
      ExprLiteral = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ExprLiteral").msgclass
      LogicalExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.LogicalExprNode").msgclass
      ColumnRelation = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ColumnRelation").msgclass
      Column = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.Column").msgclass
      Wildcard = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.Wildcard").msgclass
      PlaceholderNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.PlaceholderNode").msgclass
      LogicalExprList = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.LogicalExprList").msgclass
      GroupingSetNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.GroupingSetNode").msgclass
      CubeNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.CubeNode").msgclass
      RollupNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.RollupNode").msgclass
      NamedStructField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.NamedStructField").msgclass
      ListIndex = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ListIndex").msgclass
      ListRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ListRange").msgclass
      GetIndexedField = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.GetIndexedField").msgclass
      IsNull = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsNull").msgclass
      IsNotNull = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsNotNull").msgclass
      IsTrue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsTrue").msgclass
      IsFalse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsFalse").msgclass
      IsUnknown = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsUnknown").msgclass
      IsNotTrue = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsNotTrue").msgclass
      IsNotFalse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsNotFalse").msgclass
      IsNotUnknown = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.IsNotUnknown").msgclass
      Not = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.Not").msgclass
      AliasNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.AliasNode").msgclass
      BareTableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.BareTableReference").msgclass
      PartialTableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.PartialTableReference").msgclass
      FullTableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.FullTableReference").msgclass
      OwnedTableReference = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.OwnedTableReference").msgclass
      BinaryExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.BinaryExprNode").msgclass
      NegativeNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.NegativeNode").msgclass
      InListNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.InListNode").msgclass
      ScalarFunctionNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ScalarFunctionNode").msgclass
      AggregateExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.AggregateExprNode").msgclass
      AggregateUDFExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.AggregateUDFExprNode").msgclass
      ScalarUDFExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ScalarUDFExprNode").msgclass
      WindowExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WindowExprNode").msgclass
      BetweenNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.BetweenNode").msgclass
      LikeNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.LikeNode").msgclass
      ILikeNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ILikeNode").msgclass
      SimilarToNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.SimilarToNode").msgclass
      CaseNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.CaseNode").msgclass
      WhenThen = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WhenThen").msgclass
      CastNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.CastNode").msgclass
      TryCastNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.TryCastNode").msgclass
      SortExprNode = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.SortExprNode").msgclass
      WindowFrame = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WindowFrame").msgclass
      WindowFrameBound = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WindowFrameBound").msgclass
      ScalarFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.ScalarFunction").enummodule
      AggregateFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.AggregateFunction").enummodule
      BuiltInWindowFunction = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.BuiltInWindowFunction").enummodule
      WindowFrameUnits = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WindowFrameUnits").enummodule
      WindowFrameBoundType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("chalk.expression.v1.WindowFrameBoundType").enummodule
    end
  end
end