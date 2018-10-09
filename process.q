/Webscoket
.z.ws:{.log.info["Request : ",.Q.s1 .d.r:x];neg[.z.w].j.j .debug.r:@[ getr;x;{`$x}]};
.z.wo:{.log.info["Connection open : ",string x]};
.z.wc:{.log.info["Connection close : ",string x]};

.log.info:{show x};

getr:{[msg]  0!getKeywords[msg]};
getr2:{[msg] show neg[.z.w].j.j  0!getKeywords["bob"]};

