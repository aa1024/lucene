dataIndex:([iKey:enlist `] iVal:enlist () ; iTab:enlist () )
metaIndex:([iKey:enlist `] iVal:enlist () ; iTab:enlist () )

/k:`abc;v:1;t:`data
addMeta:{[k;v;t] `metaIndex upsert (k;v,metaIndex[k;`iVal];t,metaIndex[k;`iTab]) }
addData:{[k;v;t] `dataIndex upsert (k;v,dataIndex[k;`iVal];t,dataIndex[k;`iTab]) }

