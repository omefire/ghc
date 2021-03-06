module RnExpr where
import HsSyn
import Name       ( Name )
import NameSet    ( FreeVars )
import RdrName    ( RdrName )
import TcRnTypes
import SrcLoc     ( Located )
import Outputable ( Outputable )

rnLExpr :: LHsExpr RdrName
        -> RnM (LHsExpr Name, FreeVars)

rnStmts :: --forall thing body.
           Outputable (body RdrName) => HsStmtContext Name
        -> (Located (body RdrName) -> RnM (Located (body Name), FreeVars))
        -> [LStmt RdrName (Located (body RdrName))]
        -> ([Name] -> RnM (thing, FreeVars))
        -> RnM (([LStmt Name (Located (body Name))], thing), FreeVars)
