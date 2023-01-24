 proc Xper_TimestampMillisecond_xltp {} {
    #xlateInVals :  deposer les valeurs en entrée
    #xlateOutVals : récuperer les valeurs en sortie
    upvar xlateId             xlateId             \
          xlateInList         xlateInList         \
          xlateInTypes        xlateInTypes        \
          xlateInVals         xlateInVals         \
          xlateOutList        xlateOutList        \
          xlateOutTypes       xlateOutTypes       \
          xlateOutVals        xlateOutVals        \
          xlateConstType      xlateConstType      \
          xlateConfigFileName xlateConfigFileName

    #retourne la valeur indexer
    set inVal [lindex $xlateInVals 0]
    set convertSec [clock scan $inVal -format {%Y%m%d}]
     if {$outVal == "seconds"} {
        return [clock seconds $convertSec]
    } elseif {$outVal == "milliseconds"} {
        return [expr {[clock seconds $convertSec] * 1000}]
    } else {
        return -code error "Invalid outVal. Must be 'seconds' or 'milliseconds'"
    }

    
    echo convertSec : $convertSec
   

}