/*-------------------------------------------------------------------------
 *
 * tlist.h
 *	  prototypes for tlist.c.
 *
 *
 * Portions Copyright (c) 1996-2005, PostgreSQL Global Development Group
 * Portions Copyright (c) 1994, Regents of the University of California
 *
 * $PostgreSQL: pgsql/src/include/optimizer/tlist.h,v 1.42 2005/04/06 16:34:07 tgl Exp $
 *
 *-------------------------------------------------------------------------
 */
#ifndef TLIST_H
#define TLIST_H

#include "nodes/relation.h"


extern TargetEntry *tlist_member(Node *node, List *targetlist);

extern List *flatten_tlist(List *tlist);
extern List *add_to_flat_tlist(List *tlist, List *vars);

extern TargetEntry *get_sortgroupclause_tle(SortClause *sortClause,
						List *targetList);
extern Node *get_sortgroupclause_expr(SortClause *sortClause,
						 List *targetList);
extern List *get_sortgrouplist_exprs(List *sortClauses,
						List *targetList);

#endif   /* TLIST_H */
