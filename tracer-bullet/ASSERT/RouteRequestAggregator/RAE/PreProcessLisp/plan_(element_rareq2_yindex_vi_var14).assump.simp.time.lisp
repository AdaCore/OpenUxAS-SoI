
(IN-PACKAGE "ACL2S")
(SET-IGNORE-OK T)
(DEFTTAG :PROGN!)
(INCLUDE-BOOK "requirements-analyses-book")
(DEFDATA |translator generated name for rareq2_yindex|
         (RANGE INTEGER
          (*SRL-DATA-MINIMUM* <= _ <= *SRL-DATA-MAXIMUM*)))
(DEFFCONST |*translator generated name for rareq2_yindex-VALS*|
 (QUOTE-ALL (GEN-INT-RANGE *SRL-DATA-MINIMUM* *SRL-DATA-MAXIMUM*)))
(DEFDATA |translator generated name for translator_intermediate_variable_8 of vi of var14|
         (ENUM
          '(|http://sadl.org/RequestAggregator.sadl#VehiclePlanInfo|)))
(DEFDATA |translator generated name for vi of var14|
         (LISTOF
          |translator generated name for translator_intermediate_variable_8 of vi of var14|))
(DEFUN |NTH-translator generated name for vi of var14-EnUm-InFer/ACC| (N
                                                                       S)
  (DECLARE
   (XARGS :MODE :PROGRAM :GUARD
    (AND (NATP N) (UNSIGNED-BYTE-P 31 S))))
  (LET ((N (NTH-INTEGER-BETWEEN N 0 11)))
    (IF (<= N 0)
        (MV NIL S)
        (B* (((MV I S)
              (MV-LET (I SEED)
                      (DEFDATA::RANDOM-NATURAL-SEED S)
                      (MV (|NTH-translator generated name for translator_intermediate_variable_8 of vi of var14|
                           I)
                          (THE (UNSIGNED-BYTE 31) SEED))))
             ((MV L S)
              (|NTH-translator generated name for vi of var14-EnUm-InFer/ACC|
               (1- N) S)))
            (MV (CONS I L) S)))))
(DEFDATA-ATTACH
  |translator generated name for vi of var14|
  :ENUM/ACC
  |NTH-translator generated name for vi of var14-EnUm-InFer/ACC|)
(DEFDATA |translator generated name for plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
         (ENUM '(|http://sadl.org/RequestAggregator.sadl#Plan|)))
(DEFFCONST
 |*translator generated name for plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALS*|
 (QUOTE-ALL
  |*translator generated name for plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALUES*|))
(DEFDATA |translator generated name for mID of var3|
         (ENUM '(|http://www.w3.org/2001/XMLSchema#string|)))
(DEFFCONST |*translator generated name for mID of var3-VALS*|
 (QUOTE-ALL |*translator generated name for mID of var3-VALUES*|))
(DEFDATA |translator generated name for mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
         (ENUM '(|http://www.w3.org/2001/XMLSchema#string|)))
(DEFFCONST
 |*translator generated name for mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALS*|
 (QUOTE-ALL
  |*translator generated name for mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALUES*|))
(DEFDATA |translator generated name for mID of var9|
         (ENUM '(|http://www.w3.org/2001/XMLSchema#string|)))
(DEFFCONST |*translator generated name for mID of var9-VALS*|
 (QUOTE-ALL |*translator generated name for mID of var9-VALUES*|))
(DEFDATA |translator generated name for mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
         (ENUM '(|http://www.w3.org/2001/XMLSchema#string|)))
(DEFFCONST
 |*translator generated name for mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALS*|
 (QUOTE-ALL
  |*translator generated name for mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator-VALUES*|))
(DEFDATA |translator generated name for plan of (element rareq2_yindex of vi of var14)|
         (ENUM '(|http://sadl.org/RequestAggregator.sadl#Plan|)))
(DEFFCONST
 |*translator generated name for plan of (element rareq2_yindex of vi of var14)-VALS*|
 (QUOTE-ALL
  |*translator generated name for plan of (element rareq2_yindex of vi of var14)-VALUES*|))
(DEFLISTREQUIREMENT R3_INSTANCE_1
 ((|rareq2_yindex| |translator generated name for rareq2_yindexP|)
  (|vi of var14| |translator generated name for vi of var14P|)
  (|plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
   |translator generated name for plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregatorP|)
  (|mID of var3| |translator generated name for mID of var3P|)
  (|mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
   |translator generated name for mID of RoutePlanGeneratedMsg of receive2 of ReqAggregatorP|)
  (|mID of var9| |translator generated name for mID of var9P|)
  (|mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|
   |translator generated name for mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregatorP|))
 ((|plan of (element rareq2_yindex of vi of var14)|
   |translator generated name for plan of (element rareq2_yindex of vi of var14)P|))
 (RIMPLIES
  (AND (>= (LEN-C |vi of var14|) 1)
       (<= (LEN-C |vi of var14|) 10)
       (EQUAL |mID of var3|
              |mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator|)
       (EQUAL |mID of var9|
              |mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|))
  (EQUAL |plan of (element rareq2_yindex of vi of var14)|
         |plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|)))
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR |event-variable|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR
 |plan of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR |mID of var3|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR
 |mID of RoutePlanGeneratedMsg of receive2 of ReqAggregator|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR |mID of var9|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR
 |mID of VehiclePlanInfo of vpm of RoutePlanGeneratedMsg of receive2 of ReqAggregator|)
(REGISTER-SRL-NO-INNER-CONTINGENCY-VAR
 |plan of (element rareq2_yindex of vi of var14)|)