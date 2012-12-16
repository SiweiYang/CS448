.\\" auto-generated by docbook2man-spec $Revision: 1.1.1.1 $
.TH "TRUNCATE" "" "2005-11-05" "SQL - Language Statements" "SQL Commands"
.SH NAME
TRUNCATE \- empty a table or set of tables

.SH SYNOPSIS
.sp
.nf
TRUNCATE [ TABLE ] \fIname\fR [, ...]
.sp
.fi
.SH "DESCRIPTION"
.PP
\fBTRUNCATE\fR quickly removes all rows from a set of
tables. It has the same effect as an unqualified
\fBDELETE\fR on each table, but since it does not actually
scan the tables it is faster. This is most useful on large tables.
.SH "PARAMETERS"
.TP
\fB\fIname\fB\fR
The name (optionally schema-qualified) of a table to be truncated.
.SH "NOTES"
.PP
Only the owner of a table may \fBTRUNCATE\fR it.
.PP
\fBTRUNCATE\fR cannot be used on a table that has foreign-key
references from other tables, unless all such tables are also truncated
in the same command. Checking validity in such cases would require table
scans, and the whole point is not to do one.
.PP
\fBTRUNCATE\fR will not run any user-defined ON
DELETE triggers that might exist for the tables.
.SH "EXAMPLES"
.PP
Truncate the tables bigtable and fattable:
.sp
.nf
TRUNCATE TABLE bigtable, fattable;
.sp
.fi
.SH "COMPATIBILITY"
.PP
There is no \fBTRUNCATE\fR command in the SQL standard.