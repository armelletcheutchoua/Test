proc Xper_convertDate_xltp {} {
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
    set convertSec [clock scan $inVal -format  {%Y%m%d}]
    set outVal [clock format $convertSec -format {%Y-%m-%d}]

    echo ancienne Date : $inVal
    echo nouvelle Date : $outVal 

    #transforme les valeurs en liste 
    set xlateOutVals [list $outVal]
}
