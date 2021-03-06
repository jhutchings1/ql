
/**
 * @kind path-problem
 */

import python
import semmle.python.security.TaintTracking
import TaintLib
import semmle.python.security.Paths

from SimpleConfig config, TaintedPathSource src, TaintedPathSink sink
where config.hasFlowPath(src, sink)
select sink.getSink(), src, sink, "$@ flows to $@.", src.getNode(), src.getTaintKind().toString(), sink.getNode(), sink.getTaintKind().toString()
