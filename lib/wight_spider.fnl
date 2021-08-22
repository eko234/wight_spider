(fn knit []
  string.format 
  "select json_agg(structure) as result
  from ( select json_build_object
                ( here goes the magic ) as structure ) t")

(print (knit))

(knit 
 [:patient_surgery/id
    {:detail [:surgery/id
              :surgery/name]}]
  "from patient_surgery
  inner join surgery
  on patient_surgery.surgery_id = surgery.id
  where patient_surgery.patient_id = ?")


; form (type ...)

; conditions

; form must coerce and make sense from conditions, the conditions go last in style but are the 
; head of the statement

; "select json_agg(surgery) as result
;                        from
;                        ( select json_build_object
;                                 ( 'id', patient_surgery.id,
;                                   'detail', json_build_object
;                                         ( 'id', surgery.id,
;                                           'name', surgery.name ) ) as surgery
;                                 from patient_surgery
;                                 inner join surgery
;                                 on patient_surgery.surgery_id = surgery.id
;                                 where patient_surgery.patient_id = ?) t"
