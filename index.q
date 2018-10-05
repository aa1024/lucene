dataIndex:()
metaIndex:([iKey:enlist `] iVal:enlist () ; iTab:enlist () )

/k:`abc;v:1;t:`data
addMeta:{[k;v;t] `metaIndex upsert (k;v,metaIndex[k;`iVal];`data,metaIndex[k;`iTab]) }

{[d;t] addMeta[d`column;d`search_index;t]}[;`data] each  select  search_index:i,column:c from meta data
