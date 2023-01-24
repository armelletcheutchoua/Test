 proc Xper_DateSec_xltp { date_format seconds } {
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

  
    set date [clock format [clock scan $date_format] -format $date_format]
    set new_time [expr [clock scan $date_format] + $seconds]
    set new_date [clock format $new_time -format $date_format]
    echo date_format : $date_format
    echo new_date :  $new_date

  set xlateOutVals $new_date
}
