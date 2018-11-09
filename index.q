dataIndex:([iKey:enlist `] iVal:enlist () ; iTab:enlist () );
metaIndex:([iKey:enlist `] iVal:enlist () ; iTab:enlist () );

/k:`abc;v:1;t:`data
addMeta:{[k;v;t] `metaIndex upsert (k;v,metaIndex[k;`iVal];t,metaIndex[k;`iTab]) };
addData:{[k;v;t] `dataIndex upsert (k;v,dataIndex[k;`iVal];t,dataIndex[k;`iTab]) };

{[d;t] addMeta[d`column;d`search_index;t]}[;`dataSub] each  select  search_index:i,column:c from meta dataSub;
{[d;t] addMeta[d`column;d`search_index;t]}[;`dataTag] each  select  search_index:i,column:c from meta dataTag;

{[d;t]  si:d`search_index;d:`search_index _ d;addData'[`$value d;#[count d;si];#[count d;t]] }[;`dataSub] each  update search_index:i from   dataSub;
{[d;t]  si:d`search_index;d:`search_index _ d;addData'[`$value d;#[count d;si];#[count d;t]] }[;`dataTag] each  update search_index:i from   dataTag;

getKeywords:{[kw] 5?0!select from dataIndex where lower[iKey] like ("*",kw,"*") };
getKeywords2:{[kw] select from metaIndex where lower[iKey] like ("*",kw,"*") };

getr:{[msg] m:0!getKeywords[msg]; ( m ;  0!getKeywords2[msg]; getData m) };
getr2:{[msg] show neg[.z.w].j.j  0!getKeywords["bob"]};

/f:first 0!getKeywords["name"]

getData:{ raze {[f] (value first f`iTab)f`iVal} each 0!x}

getKeywords[msg:"name"]
search["name"]