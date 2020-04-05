# Perl_Again

# Perl Program Env

check version of OSX and version of BBedit || textWrangler

http://www.barebones.com/support/textwrangler/coderdojo.html (textWrangler)

https://www.barebones.com/products/bbedit/comparison.html (BBedit)

http://www.barebones.com/support/bbedit/updates.html#new13 (download)

https://github.com/QueenieCplusplus/Perl_Again/blob/master/BBEdit.png (run code)

# Install Lib and Modules

https://how-to.fandom.com/wiki/How_to_install_PERL_modules

open prompt in OSX

perl -MCPAN -e shell

         CPAN.pm requires configuration, but most of it can be done automatically.
      If you answer 'no' below, you will enter an interactive dialog for each
      configuration option instead.

      Would you like to configure as much as possible automatically? [yes] yes

       <install_help>

      Warning: You do not have write permission for Perl library directories.

      To install modules, you need to configure a local Perl library directory or
      escalate your privileges.  CPAN can help you by bootstrapping the local::lib
      module or by configuring itself to use 'sudo' (if available).  You may also
      resolve this problem manually if you need to customize your setup.

      What approach do you want?  (Choose 'local::lib', 'sudo' or 'manual')
      
local::lib   

       then choose the url to download lib from mirror server in CDN

install Bundle::CPAN

install <Module_name>

1. https://github.com/QueenieCplusplus/Perl_Again/blob/master/1.open_prompt.png

2.

3.

# add Env Path 增加環境變數

         local::lib is installed. You must now add the following environment variables
         to your shell configuration files (or registry, if you are on Windows) and
         then restart your command line shell and CPAN before installing modules:

         PATH="/Users/pintred/perl5/bin${PATH:+:${PATH}}"; export PATH;
         PERL5LIB="/Users/pintred/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
         PERL_LOCAL_LIB_ROOT="/Users/pintred/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
         PERL_MB_OPT="--install_base \"/Users/pintred/perl5\""; export PERL_MB_OPT;
         PERL_MM_OPT="INSTALL_BASE=/Users/pintred/perl5"; export PERL_MM_OPT;

         Would you like me to append that to /Users/pintred/.zshrc now? [yes] yes


         commit: wrote '/Users/pintred/.cpan/CPAN/MyConfig.pm'

         You can re-run configuration any time with 'o conf init' in the CPAN shell
         Terminal does not support AddHistory.

         cpan shell -- CPAN exploration and modules installation (v2.00)
         Enter 'h' for help.

# Syntax

table of contents

基本資料結構部分：

1. Ｓcalar, Ａrray, Ｈash (純量｜陣列｜雜湊，三種資料型別的參照)

----------

其他資料結構部分：

2. List Ops: grep, sort, map (串列運算符號)

   串列即有序排列的純量集合，將串列存入陣列是陣列的串列，在 perl 中，陣列是儲存串列的容器。
   
   grep（global_search regular expression, print out the line) 全面搜索正規表達式列印
   
   sort 常見 (故略)
   
   map (to do...)
   
https://github.com/QueenieCplusplus/Perl_Again/blob/master/grep_list.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/grep_list2.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/grep_list3.PL

3. File Handler called fh : (file, dir, terminal, pipe, scalar) (檔案代號的參照)

https://github.com/QueenieCplusplus/Perl_Again/blob/master/file_io.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/dir_io.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/dir_io_obj.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/interactive_io.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/pipe_io.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/scalar_io.PL

4. Object Syntax (物件)

https://github.com/QueenieCplusplus/Perl_Again/blob/master/invoke.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/param.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/ISA.PL

https://github.com/QueenieCplusplus/Perl_Again/blob/master/cat.pm

----------

邏輯部分：

5. while, if, for, foreach (邏輯閘)

6. Code Ref (副常式參照)

   如果說變數是容器，副常式（方法）則是容器的行為，只要副常式參數化也算是資料結構之一。

7. Scoping (參照的作用域)

----------
(omit)

8. Data (資料命名空間的參照用法)

9. Advanced Code Reference (進階參照)

10. Ref of REX (正規表達式之參照)

# Raku is brother of Perl

Perl got a sister called Ruby, who is almost died in 2018, and since Perl version 6, the brother called Raku is existed.

# Symbols used in Perl

類似 PHP, 

-> calling arrow 其實是類似 swift 的 . 調用符號 calling point

=> 其實類似 java 的 = 賦值符號 assignment

# Lexical Variable

    my $vaiable_name
    
    $! means error output
    
    $& mean comparing  output (such as Boolean)
    
    $_ means loop_variable (such as Iterator)
    
    @varible_name means array type data
    
# most_used Subroutine called shift

返回在一個數組中的第一個值，刪除和移位到左邊的元素數組列表一個位置。

shift ( [ARRAY] )

# Perl has 4 build systems

- [x]  Makefile.PL from ExtUtils::Makemaker, but is out of date now

- [x] Build.PL from Module::Build, it is built-in module above version in 5.10+

- [x]  hybrid

- [x]  thin wrapper

# Execute Perl Program

https://perlmaven.com/running-external-programs-from-perl

* running with security risk

       my $param = get_from_a_web_form();
       my $cmd = "checkfiles $param";
       system($cmd);


* running without security risks

       my $param = get_from_a_web_form();
       my @cmd = ("checkfiles", $param);
       system(@cmd);
       
# Require & Use

https://github.com/QueenieCplusplus/Perl (see code)

# PL & PM

讀入檔案、引用模組方法、匯出模組的匯入常式 (副檔名須改為 .pm)

PL is Perl Lib

PM is Perl Module

they seems alike.

* require https://github.com/QueenieCplusplus/Perl/blob/master/require.pl

* use https://github.com/QueenieCplusplus/Perl/blob/master/use.pl

* import https://github.com/QueenieCplusplus/Perl/blob/master/import.pl


# Pod 簡明舊式文件

format plz see perlpod & perlpodspec

perldoc only parse the pod part (=), and escaping the code part.

# how to call the building modules in code

for instance of Buildfile

     use 5.006;
     use Module::Build;
     
     my $builderOne = Module::Build->new(
     
        //omit...
        
     );
     
     $builderOne->create_build_script();

# Check Version in OSX

    $ perl -v

    This is perl 5, version 18, subversion 4 (v5.18.4) built for darwin-thread-multi-2level
    (with 2 registered patches, see perl -V for more detail)

    Copyright 1987-2013, Larry Wall
    
# Helps

    $ perl -h

        Usage: perl [switches] [--] [programfile] [arguments]

          -0[octal]         specify record separator (\0, if no argument)
          -a                autosplit mode with -n or -p (splits $_ into @F)
          -C[number/list]   enables the listed Unicode features
          -c                check syntax only (runs BEGIN and CHECK blocks)
          -d[:debugger]     run program under debugger
          -D[number/list]   set debugging flags (argument is a bit mask or alphabets)
          -e program        one line of program (several -e's allowed, omit programfile)
          -E program        like -e, but enables all optional features
          -f                don't do $sitelib/sitecustomize.pl at startup
          -F/pattern/       split() pattern for -a switch (//'s are optional)
          -i[extension]     edit <> files in place (makes backup if extension supplied)
          -Idirectory       specify @INC/#include directory (several -I's allowed)
          -l[octal]         enable line ending processing, specifies line terminator
          -[mM][-]module    execute "use/no module..." before executing program
          -n                assume "while (<>) { ... }" loop around program
          -p                assume loop like -n but print line also, like sed
          -s                enable rudimentary parsing for switches after programfile
          -S                look for programfile using PATH environment variable
          -t                enable tainting warnings
          -T                enable tainting checks
          -u                dump core after parsing program
          -U                allow unsafe operations
          -v                print version, patchlevel and license
          -V[:variable]     print configuration summary (or a single Config.pm variable)
          -w                enable many useful warnings
          -W                enable all warnings
          -x[directory]     ignore text before #!perl line (optionally cd to directory)
          -X                disable all warnings

        
        
# More Helps

    $ perldoc perl

        PERL(1)               User Contributed Perl Documentation              PERL(1)



        NAME
               perl - The Perl 5 language interpreter

        SYNOPSIS
               perl [ -sTtuUWX ]      [ -hv ] [ -V[:configvar] ]
                    [ -cw ] [ -d[t][:debugger] ] [ -D[number/list] ]
                    [ -pna ] [ -Fpattern ] [ -l[octal] ] [ -0[octal/hexadecimal] ]
                    [ -Idir ] [ -m[-]module ] [ -M[-]'module...' ] [ -f ]
                    [ -C [number/list] ]      [ -S ]      [ -x[dir] ]
                    [ -i[extension] ]
                    [ [-e|-E] 'command' ] [ -- ] [ programfile ] [ argument ]...

               For more information on these options, you can run "perldoc perlrun".

        GETTING HELP
               The perldoc program gives you access to all the documentation that
               comes with Perl.  You can get more documentation, tutorials and
               community support online at <http://www.perl.org/>.

        :

# Modules

https://www.cpan.org


# Manually Install Modules

    $ wget url/pkg.gz
    $ tar -xzf pkg.gz
    $ cd pkg
    
    ----------------------------------------------
    
    $ perl Makefile.pl
    $ make
    $ make test
    $ make install
    
    # 使用 PERL5LIB 環境變數，將目錄名稱賦值予此變數。
    # 方便其他同事只要擁有相同變數名稱，即便在不同機器，也能找到模組所在的目錄路徑值
    # 在 類 Unix 系統中，使用 : 隔開目錄名稱
    # 在 windows 系統中，使用 ; 隔開目錄名稱
    
    $ perl Makefile.PL INSTALL_BASE = /Users/home/username
    # to set up the ENV Path for PERL5LIB
    # this way helps perl to add directory to path of Modules
    
    $ export PERL5LIB = /Users/home/username
    
    ------------------------------------------------
    
    Module:Build
    
    $ perl Build.PL
    $ perl Build
    $ perl Build test
    $ perl Build install
    
    ------------------------------------------------
    
    use lib got weakness since our module in machine is different in path comparing with thers, so avoid to use this way.   
    
    use lib 'url_path_in_machine';
    
    ------------------------------------------------
    
# Check ENV Path

    $ perl -V

        Summary of my perl5 (revision 5 version 18 subversion 4) configuration:

          Platform:
            osname=darwin, osvers=19.0, archname=darwin-thread-multi-2level
            uname='darwin osx310.apple.com 19.0 darwin kernel version 18.0.0: tue jul 9 11:12:08 pdt 2019; root:xnu-4903.201.2.100.7~1release_x86_64 x86_64 '
            config_args='-ds -e -Dprefix=/usr -Dccflags=-g  -pipe  -Dldflags= -Dman3ext=3pm -Duseithreads -Duseshrplib -Dinc_version_list=none -Dcc=cc'
            hint=recommended, useposix=true, d_sigaction=define
            useithreads=define, usemultiplicity=define
            useperlio=define, d_sfio=undef, uselargefiles=define, usesocks=undef
            use64bitint=define, use64bitall=define, uselongdouble=undef
            usemymalloc=n, bincompat5005=undef
          Compiler:
            cc='cc', ccflags =' -g -pipe -fno-common -DPERL_DARWIN -fno-strict-aliasing -fstack-protector',
            optimize='-Os',
            cppflags='-g -pipe -fno-common -DPERL_DARWIN -fno-strict-aliasing -fstack-protector'
            ccversion='', gccversion='4.2.1 Compatible Apple LLVM 11.0.3 (clang-1103.0.29.20) (-macos10.15-objc-selector-opts)', gccosandvers=''
            intsize=4, longsize=8, ptrsize=8, doublesize=8, byteorder=12345678
            d_longlong=define, longlongsize=8, d_longdbl=define, longdblsize=16
            ivtype='long', ivsize=8, nvtype='double', nvsize=8, Off_t='off_t', lseeksize=8
            alignbytes=8, prototype=define
          Linker and Libraries:
            ld='cc', ldflags =' -fstack-protector'
            libpth=/usr/lib /usr/local/lib
            libs= 
            perllibs=
            libc=, so=dylib, useshrplib=true, libperl=libperl.dylib
            gnulibc_version=''
          Dynamic Linking:
            dlsrc=dl_dlopen.xs, dlext=bundle, d_dlsymun=undef, ccdlflags=' '
            cccdlflags=' ', lddlflags=' -bundle -undefined dynamic_lookup -fstack-protector'


        Characteristics of this binary (from libperl): 
          Compile-time options: HAS_TIMES MULTIPLICITY PERLIO_LAYERS
                                PERL_DONT_CREATE_GVSV
                                PERL_HASH_FUNC_ONE_AT_A_TIME_HARD
                                PERL_IMPLICIT_CONTEXT PERL_MALLOC_WRAP
                                PERL_PRESERVE_IVUV PERL_SAWAMPERSAND USE_64_BIT_ALL
                                USE_64_BIT_INT USE_ITHREADS USE_LARGE_FILES
                                USE_LOCALE USE_LOCALE_COLLATE USE_LOCALE_CTYPE
                                USE_LOCALE_NUMERIC USE_PERLIO USE_PERL_ATOF
                                USE_REENTRANT_API
          Locally applied patches:
            /Library/Perl/Updates/<version> comes before system perl directories
            installprivlib and installarchlib points to the Updates directory
          Built under darwin
          Compiled at Feb 28 2020 22:56:25
          @INC:
            /Library/Perl/5.18/darwin-thread-multi-2level
            /Library/Perl/5.18
            /Network/Library/Perl/5.18/darwin-thread-multi-2level
            /Network/Library/Perl/5.18
            /Library/Perl/Updates/5.18.4
            /System/Library/Perl/5.18/darwin-thread-multi-2level
            /System/Library/Perl/5.18
            /System/Library/Perl/Extras/5.18/darwin-thread-multi-2level
            /System/Library/Perl/Extras/5.18
            .







