% Prolog file generated by SADL SRL (.sreq) Plug-in, 2017-10-19 14:04:55
% Generated from SADL Requirements model with uri 'http://sadl.org/RA-Req.sreq', with alias 'rareq', with corresponding SRL (.sreq) file 'RA-Req.sreq'

:- style_check(-atom).

rce_version('2.0.0.201702021432').

namespace('http://sadl.org/RA-Req.sreq').
prefix('http://sadl.org/RA-Req.sreq','rareq').
prefix('http://sadl.org/test.sadl','test').
prefix('http://sadl.org/RequestAggregator.sadl','RA').

assumption(name('A1'), then(assumesThat('http://sadl.org/RequestAggregator.sadl#ReqAggregator',le('rareq_xindex',listLength(propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'))))))).
assumption(name('A1'), context(and(subjectHasProperty('http://sadl.org/RequestAggregator.sadl#ReqAggregator','http://sadl.org/RequestAggregator.sadl#receive1','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'),is('rareq_xindex',declaration('http://www.w3.org/2001/XMLSchema#int'))))).
assumption(name('A1'), contextText('ReqAggregator with receive1 RouteRequestMsg and xid is mID of rrm of RouteRequestMsg and xindex is an int')).
assumption(name('A1'), location('/resource/ReqAggregator-v4/Requirement_Model/RA-Req.sreq',10,116,336)).
assumption(name('A1'), text('Assumption A1: ReqAggregator assumes that xindex <= length of vi of rrm of RouteRequestMsg.')).

assumption(name('A2'), then(assumesThat('http://sadl.org/RequestAggregator.sadl#ReqAggregator',gt(listLength(propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'))),0)))).
assumption(name('A2'), context(and(subjectHasProperty('http://sadl.org/RequestAggregator.sadl#ReqAggregator','http://sadl.org/RequestAggregator.sadl#receive1','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'),is('rareq_xindex',declaration('http://www.w3.org/2001/XMLSchema#int'))))).
assumption(name('A2'), contextText('ReqAggregator with receive1 RouteRequestMsg and xid is mID of rrm of RouteRequestMsg and xindex is an int')).
assumption(name('A2'), location('/resource/ReqAggregator-v4/Requirement_Model/RA-Req.sreq',15,88,456)).
assumption(name('A2'), text('Assumption A2: ReqAggregator assumes that length of vi of rrm of RouteRequestMsg > 0.')).

assumption(name('A3'), then(assumesThat('http://sadl.org/RequestAggregator.sadl#ReqAggregator',le(listLength(propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'))),10)))).
assumption(name('A3'), context(and(subjectHasProperty('http://sadl.org/RequestAggregator.sadl#ReqAggregator','http://sadl.org/RequestAggregator.sadl#receive1','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'),is('rareq_xindex',declaration('http://www.w3.org/2001/XMLSchema#int'))))).
assumption(name('A3'), contextText('ReqAggregator with receive1 RouteRequestMsg and xid is mID of rrm of RouteRequestMsg and xindex is an int')).
assumption(name('A3'), location('/resource/ReqAggregator-v4/Requirement_Model/RA-Req.sreq',19,90,548)).
assumption(name('A3'), text('Assumption A3: ReqAggregator assumes that length of vi of rrm of RouteRequestMsg <= 10.')).

sreq(name('R1'), where(decomposition('rareq_xxx',type('http://sadl.org/RequestAggregator.sadl#RouteRequestInfo'),and(property('http://sadl.org/RequestAggregator.sadl#mID',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#mID',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'))),and(property('http://sadl.org/RequestAggregator.sadl#numPlansPending',listLength(propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg')))),property('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg')))))))).
sreq(name('R1'), then(insertLast('http://sadl.org/RequestAggregator.sadl#ReqAggregator','rareq_xxx',propertyOfSubject(previous('http://sadl.org/RequestAggregator.sadl#requestList'),'http://sadl.org/RequestAggregator.sadl#ReqAggregator')))).
sreq(name('R1'), context(and(subjectHasProperty('http://sadl.org/RequestAggregator.sadl#ReqAggregator','http://sadl.org/RequestAggregator.sadl#receive1','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'),is('rareq_xindex',declaration('http://www.w3.org/2001/XMLSchema#int'))))).
sreq(name('R1'), contextText('ReqAggregator with receive1 RouteRequestMsg and xid is mID of rrm of RouteRequestMsg and xindex is an int')).
sreq(name('R1'), location('/resource/ReqAggregator-v4/Requirement_Model/RA-Req.sreq',23,315,642)).
sreq(name('R1'), text('Requirement R1: ReqAggregator shall insert xxx into previous requestList of ReqAggregator at end where xxx is (a RouteRequestInfo with mID (mID of rrm of RouteRequestMsg) with numPlansPending (length of vi of rrm of RouteRequestMsg) with vi (vi of rrm of RouteRequestMsg) ).')).

sreq(name('R2'), where(decomposition('rareq_vpr',type('http://sadl.org/RequestAggregator.sadl#RoutePlanRequestMsg'),and(property('http://sadl.org/RequestAggregator.sadl#mID',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#mID',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'))),property('http://sadl.org/RequestAggregator.sadl#vehicleInfo',getListElementAt('rareq_xindex',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#vi',propertyOfSubject('http://sadl.org/RequestAggregator.sadl#rrm','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg')))))))).
sreq(name('R2'), then(shallSet('http://sadl.org/RequestAggregator.sadl#ReqAggregator',is(propertyOfSubject('http://sadl.org/RequestAggregator.sadl#send1','http://sadl.org/RequestAggregator.sadl#ReqAggregator'),'rareq_vpr')))).
sreq(name('R2'), context(and(subjectHasProperty('http://sadl.org/RequestAggregator.sadl#ReqAggregator','http://sadl.org/RequestAggregator.sadl#receive1','http://sadl.org/RequestAggregator.sadl#RouteRequestMsg'),is('rareq_xindex',declaration('http://www.w3.org/2001/XMLSchema#int'))))).
sreq(name('R2'), contextText('ReqAggregator with receive1 RouteRequestMsg and xid is mID of rrm of RouteRequestMsg and xindex is an int')).
sreq(name('R2'), location('/resource/ReqAggregator-v4/Requirement_Model/RA-Req.sreq',32,282,961)).
sreq(name('R2'), text('Requirement R2: ReqAggregator shall set send1 of ReqAggregator to vpr where vpr is (a RoutePlanRequestMsg with mID (mID of rrm of RouteRequestMsg) with vehicleInfo (element xindex of (vi of (rrm of RouteRequestMsg))) ).')).

