# Perl_Again

table of contents

1. How to execute a perl program in system

2. subroutine

3. Basic Types: scalar, array, hash

4. Control Logics: while, if, for, foreach

5. List Ops: map, sort, print, grep

6. File Ops: open, read, -X (test cmd options)

7. REX

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

        Run 'perldoc perl' for more help with Perl.


