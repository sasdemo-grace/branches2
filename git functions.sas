/* the ssh url of the repo on github is git@github.com:sasdemo-grace/branches2.git  */

data _null_;
rc = gitfn_status("/home/grwhit/branches2_sasdemo");
put rc=;
run;

data _null_;
 rc= gitfn_co_branch(
  "/home/grwhit/branches2_sasdemo",       /*1*/
  "origin/branch1");         /*2*/
  put rc=;
run;

data _null_;
rc =GIT_INDEX_ADD( "/home/grwhit/branches2_sasdemo", "git functions.sas", "new");
put rc=;
run;

data _null_;
 rc = gitfn_commit(                   /*1*/
    "/home/grwhit/branches2_sasdemo",          /*2*/
    "HEAD",          /*3*/
    "grace",                      /*4*/
    "test@sas.com",                     /*5*/
    "does this work");           /*6*/
   put rc=;
run;



data _null_;
 rc= gitfn_push(                  /*1*/
  "/home/grwhit/branches2_sasdemo",        /*2*/
  "git",           /*3*/
  "",        /*4*/
  "/home/grwhit/ssh/id_rsa.pub",          /*5*/
  "/home/grwhit/ssh/id_rsa");        /*6*/
run;



