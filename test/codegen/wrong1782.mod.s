##################################################
# test
#

    #-----------------------------------------
    # text section
    #
    .text
    .align 4

    # entry point and pre-defined functions
    .global main
    .extern DIM
    .extern DOFS
    .extern ReadInt
    .extern WriteInt
    .extern WriteStr
    .extern WriteChar
    .extern WriteLn

    # scope dummyINTfunc
dummyINTfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyINTfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyCHARfunc
dummyCHARfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyCHARfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyBOOLfunc
dummyBOOLfunc:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyBOOLfunc_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope dummyProcedure
dummyProcedure:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body

l_dummyProcedure_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f0
f0:
    # stack offsets:
    #    -16(%ebp)   4  [ $t31      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t33      <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $t34      <bool> %ebp-22 ]
    #    -28(%ebp)   4  [ $t35      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t36      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t37      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t38      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t39      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t40      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t41      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t42      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t43      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t44      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t45      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t46      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t47      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t48      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t49      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t50      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t51      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t52      <int> %ebp-96 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 72 of <array 19 of <array 75 of <array 46 of <array 62 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 15 of <array 100 of <array 82 of <array 63 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 53 of <array 89 of <array 42 of <array 78 of <array 88 of <char>>>>>>> %ebp+20 ]
    #   -100(%ebp)   4  [ $v5       <int> %ebp-100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $88, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $22, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $87370, %eax            #   0:     sub    t31 <- 87370, 3380
    movl    $3380, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t32 <- t31, 51407
    movl    $51407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v5 <- t32
    movl    %eax, -100(%ebp)       
    jmp     l_f0_5                  #   3:     goto   5
    jmp     l_f0_6                  #   4:     goto   6
l_f0_5:
    movl    $1, %eax                #   6:     assign t33 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $0, %eax                #   9:     assign t33 <- 0
    movb    %al, -21(%ebp)         
l_f0_7:
    movl    $1, %eax                #  11:     if     1 # t33 goto 2_if_true
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  12:     goto   3_if_false
l_f0_2_if_true:
    call    dummyBOOLfunc           #  14:     call   t34 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_f0_1                  #  15:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $28555, %eax            #  18:     sub    t35 <- 28555, 8049
    movl    $8049, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  19:     add    t36 <- t35, 69845
    movl    $69845, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $2, %eax                #  20:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  22:     call   t37 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    $55835, %eax            #  23:     mul    t38 <- 55835, t37
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  24:     add    t39 <- t38, 3769
    movl    $3769, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $3, %eax                #  25:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  27:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  28:     mul    t41 <- t39, t40
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  29:     add    t42 <- t41, 13322
    movl    $13322, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $4, %eax                #  30:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  31:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  32:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  33:     mul    t44 <- t42, t43
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  34:     add    t45 <- t44, 36466
    movl    $36466, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $5, %eax                #  35:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  38:     mul    t47 <- t45, t46
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  39:     add    t48 <- t47, 24627
    movl    $24627, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    -80(%ebp), %eax         #  40:     mul    t49 <- t48, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    12(%ebp), %eax          #  41:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  42:     call   t50 <- DOFS
    addl    $4, %esp               
    movl    %eax, -88(%ebp)        
    movl    -84(%ebp), %eax         #  43:     add    t51 <- t49, t50
    movl    -88(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    12(%ebp), %eax          #  44:     add    t52 <- v2, t51
    movl    -92(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -96(%ebp)        
    movl    -32(%ebp), %eax         #  45:     assign @t52 <- t36
    movl    -96(%ebp), %edi        
    movl    %eax, (%edi)           

l_f0_exit:
    # epilogue
    addl    $88, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t31      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <ptr(4) to <array 53 of <array 89 of <array 42 of <array 78 of <array 88 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t34      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t35      <ptr(4) to <array 15 of <array 100 of <array 82 of <array 63 of <array 25 of <int>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <ptr(4) to <array 72 of <array 19 of <array 75 of <array 46 of <array 62 of <int>>>>>>> %ebp-36 ]
    #    -37(%ebp)   1  [ $t37      <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 1 of <array 9 of <array 48 of <array 39 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 55 of <array 1 of <array 62 of <array 15 of <array 45 of <bool>>>>>>> %ebp+20 ]
    #   -1170460864(%ebp)  1170460824  [ $v5       <array 72 of <array 19 of <array 75 of <array 46 of <array 62 of <int>>>>>> %ebp-1170460864 ]
    #   -1945360888(%ebp)  774900024  [ $v6       <array 15 of <array 100 of <array 82 of <array 63 of <array 25 of <int>>>>>> %ebp-1945360888 ]
    #   989751888(%ebp)  1359854520  [ $v7       <array 53 of <array 89 of <array 42 of <array 78 of <array 88 of <char>>>>>> %ebp+989751888 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-989751900, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $826303849, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1170460864(%ebp)    # local array 'v5': 5 dimensions
    movl    $72,-1170460860(%ebp)   #   dimension 1: 72 elements
    movl    $19,-1170460856(%ebp)   #   dimension 2: 19 elements
    movl    $75,-1170460852(%ebp)   #   dimension 3: 75 elements
    movl    $46,-1170460848(%ebp)   #   dimension 4: 46 elements
    movl    $62,-1170460844(%ebp)   #   dimension 5: 62 elements
    movl    $5,-1945360888(%ebp)    # local array 'v6': 5 dimensions
    movl    $15,-1945360884(%ebp)   #   dimension 1: 15 elements
    movl    $100,-1945360880(%ebp)  #   dimension 2: 100 elements
    movl    $82,-1945360876(%ebp)   #   dimension 3: 82 elements
    movl    $63,-1945360872(%ebp)   #   dimension 4: 63 elements
    movl    $25,-1945360868(%ebp)   #   dimension 5: 25 elements
    movl    $5,989751888(%ebp)      # local array 'v7': 5 dimensions
    movl    $53,989751892(%ebp)     #   dimension 1: 53 elements
    movl    $89,989751896(%ebp)     #   dimension 2: 89 elements
    movl    $42,989751900(%ebp)     #   dimension 3: 42 elements
    movl    $78,989751904(%ebp)     #   dimension 4: 78 elements
    movl    $88,989751908(%ebp)     #   dimension 5: 88 elements

    # function body
    movl    $58624, %eax            #   0:     mul    t31 <- 58624, 94951
    movl    $94951, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t32 <- t31, 43783
    movl    $43783, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t32
    jmp     l_f1_exit              
    leal    989751888(%ebp), %eax   #   3:     &()    t33 <- v7
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     param  3 <- t33
    pushl   %eax                   
    movl    $100, %eax              #   5:     if     100 >= 100 goto 2
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_2                 
    jmp     l_f1_3                  #   6:     goto   3
l_f1_2:
    movl    $1, %eax                #   8:     assign t34 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_4                  #   9:     goto   4
l_f1_3:
    movl    $0, %eax                #  11:     assign t34 <- 0
    movb    %al, -25(%ebp)         
l_f1_4:
    movzbl  -25(%ebp), %eax         #  13:     param  2 <- t34
    pushl   %eax                   
    leal    -1945360888(%ebp), %eax #  14:     &()    t35 <- v6
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  15:     param  1 <- t35
    pushl   %eax                   
    leal    -1170460864(%ebp), %eax #  16:     &()    t36 <- v5
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     param  0 <- t36
    pushl   %eax                   
    call    f0                      #  18:     call   t37 <- f0
    addl    $16, %esp              
    movb    %al, -37(%ebp)         
l_f1_7_while_cond:
    movl    $34966, %eax            #  20:     if     34966 < 73510 goto 8_while_body
    movl    $73510, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_8_while_body      
    jmp     l_f1_6                  #  21:     goto   6
l_f1_8_while_body:
    movl    $98, %eax               #  23:     assign v3 <- 98
    movb    %al, 16(%ebp)          
    jmp     l_f1_7_while_cond       #  24:     goto   7_while_cond
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $-989751900, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t31      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t32      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t33      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t34      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t35      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t36      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t37      <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t38      <bool> %ebp-41 ]
    #    -42(%ebp)   1  [ $t39      <char> %ebp-42 ]
    #    -48(%ebp)   4  [ $t40      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t41      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t42      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t43      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t44      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t45      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t46      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t47      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t48      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t49      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t50      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t51      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t52      <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t53      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t54      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t55      <int> %ebp-108 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 69 of <array 36 of <array 95 of <array 52 of <array 74 of <bool>>>>>>> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $96, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $24, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $70087, %eax            #   0:     add    t31 <- 70087, 86395
    movl    $86395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t32 <- t31, 6163
    movl    $6163, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  0 <- t32
    pushl   %eax                   
    call    WriteInt                #   3:     call   WriteInt
    addl    $4, %esp               
    movl    $81021, %eax            #   4:     div    t33 <- 81021, 62419
    movl    $62419, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t34 <- t33, 36697
    movl    $36697, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t35 <- t34, 19395
    movl    $19395, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   7:     add    t36 <- t35, 21933
    movl    $21933, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   8:     sub    t37 <- t36, 37
    movl    $37, %ebx              
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   9:     if     t37 > 87960 goto 2
    movl    $87960, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_2                 
    jmp     l_f2_3                  #  10:     goto   3
l_f2_2:
    movl    $1, %eax                #  12:     assign t38 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f2_4                  #  13:     goto   4
l_f2_3:
    movl    $0, %eax                #  15:     assign t38 <- 0
    movb    %al, -41(%ebp)         
l_f2_4:
    movzbl  -41(%ebp), %eax         #  17:     return t38
    jmp     l_f2_exit              
l_f2_7_while_cond:
    movl    $30170, %eax            #  19:     if     30170 < 53070 goto 8_while_body
    movl    $53070, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_8_while_body      
    jmp     l_f2_6                  #  20:     goto   6
l_f2_8_while_body:
    movl    $0, %eax                #  22:     return 0
    jmp     l_f2_exit              
    call    dummyCHARfunc           #  23:     call   t39 <- dummyCHARfunc
    movb    %al, -42(%ebp)         
    movl    $2, %eax                #  24:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  25:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  26:     call   t40 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    $63178, %eax            #  27:     mul    t41 <- 63178, t40
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  28:     add    t42 <- t41, 62021
    movl    $62021, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    $3, %eax                #  29:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  30:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  31:     call   t43 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -56(%ebp), %eax         #  32:     mul    t44 <- t42, t43
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t45 <- t44, 18819
    movl    $18819, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $4, %eax                #  34:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  35:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  36:     call   t46 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  37:     mul    t47 <- t45, t46
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  38:     add    t48 <- t47, 81699
    movl    $81699, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $5, %eax                #  39:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  40:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  41:     call   t49 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  42:     mul    t50 <- t48, t49
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  43:     add    t51 <- t50, 33389
    movl    $33389, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -92(%ebp)        
    movl    -92(%ebp), %eax         #  44:     mul    t52 <- t51, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -96(%ebp)        
    movl    8(%ebp), %eax           #  45:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  46:     call   t53 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -96(%ebp), %eax         #  47:     add    t54 <- t52, t53
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    8(%ebp), %eax           #  48:     add    t55 <- v1, t54
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    $90458, %eax            #  49:     assign @t55 <- 90458
    movl    -108(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_f2_7_while_cond       #  50:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $96, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t13      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t14      <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t15      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t16      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t17      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t18      <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-56 ]
    #    -60(%ebp)   4  [ $t19      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t2       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t20      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t21      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t22      <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-76 ]
    #    -80(%ebp)   4  [ $t23      <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t24      <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t25      <int> %ebp-88 ]
    #    -92(%ebp)   4  [ $t26      <int> %ebp-92 ]
    #    -96(%ebp)   4  [ $t27      <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-96 ]
    #   -100(%ebp)   4  [ $t28      <int> %ebp-100 ]
    #   -104(%ebp)   4  [ $t29      <int> %ebp-104 ]
    #   -108(%ebp)   4  [ $t3       <int> %ebp-108 ]
    #   -112(%ebp)   4  [ $t30      <int> %ebp-112 ]
    #   -113(%ebp)   1  [ $t4       <char> %ebp-113 ]
    #   -114(%ebp)   1  [ $t5       <char> %ebp-114 ]
    #   -120(%ebp)   4  [ $t6       <ptr(4) to <array 69 of <array 36 of <array 95 of <array 52 of <array 74 of <bool>>>>>>> %ebp-120 ]
    #   -124(%ebp)   4  [ $t7       <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-124 ]
    #   -125(%ebp)   1  [ $t8       <bool> %ebp-125 ]
    #   -132(%ebp)   4  [ $t9       <ptr(4) to <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>> %ebp-132 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $120, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $30, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
    movl    $48071, %eax            #   1:     sub    t0 <- 48071, 42841
    movl    $42841, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     add    t1 <- t0, 93114
    movl    $93114, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 11124
    movl    $11124, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   4:     add    t3 <- t2, 38664
    movl    $38664, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -108(%ebp)       
    movl    -108(%ebp), %eax        #   5:     assign v0 <- t3
    movl    %eax, v0               
l_test_3_while_cond:
    jmp     l_test_2                #   7:     goto   2
    jmp     l_test_exit            
    jmp     l_test_9                #   9:     goto   9
l_test_9:
    call    dummyProcedure          #  11:     call   dummyProcedure
l_test_14_while_cond:
    jmp     l_test_14_while_cond    #  13:     goto   14_while_cond
    jmp     l_test_5                #  14:     goto   5
l_test_5:
    jmp     l_test_3_while_cond     #  16:     goto   3_while_cond
l_test_2:
l_test_17_while_cond:
    jmp     l_test_18_while_body    #  19:     goto   18_while_body
    jmp     l_test_16               #  20:     goto   16
l_test_18_while_body:
l_test_21_while_cond:
    movl    $67110, %eax            #  23:     if     67110 > 20943 goto 22_while_body
    movl    $20943, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_22_while_body   
    jmp     l_test_20               #  24:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  26:     goto   21_while_cond
l_test_20:
    call    dummyCHARfunc           #  28:     call   t4 <- dummyCHARfunc
    movb    %al, -113(%ebp)        
    call    dummyCHARfunc           #  29:     call   t5 <- dummyCHARfunc
    movb    %al, -114(%ebp)        
    jmp     l_test_17_while_cond    #  30:     goto   17_while_cond
l_test_16:
    jmp     l_test_28_if_false      #  32:     goto   28_if_false
    leal    v2, %eax                #  33:     &()    t6 <- v2
    movl    %eax, -120(%ebp)       
    movl    -120(%ebp), %eax        #  34:     param  2 <- t6
    pushl   %eax                   
    movl    $7591, %eax             #  35:     param  1 <- 7591
    pushl   %eax                   
    leal    v1, %eax                #  36:     &()    t7 <- v1
    movl    %eax, -124(%ebp)       
    movl    -124(%ebp), %eax        #  37:     param  0 <- t7
    pushl   %eax                   
    call    f2                      #  38:     call   t8 <- f2
    addl    $12, %esp              
    movb    %al, -125(%ebp)        
    leal    v1, %eax                #  39:     &()    t9 <- v1
    movl    %eax, -132(%ebp)       
    movl    $2, %eax                #  40:     param  1 <- 2
    pushl   %eax                   
    leal    v1, %eax                #  41:     &()    t10 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     param  0 <- t10
    pushl   %eax                   
    call    DIM                     #  43:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    $1177, %eax             #  44:     mul    t12 <- 1177, t11
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  45:     add    t13 <- t12, 47884
    movl    $47884, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $3, %eax                #  46:     param  1 <- 3
    pushl   %eax                   
    leal    v1, %eax                #  47:     &()    t14 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  48:     param  0 <- t14
    pushl   %eax                   
    call    DIM                     #  49:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -36(%ebp), %eax         #  50:     mul    t16 <- t13, t15
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  51:     add    t17 <- t16, 21745
    movl    $21745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $4, %eax                #  52:     param  1 <- 4
    pushl   %eax                   
    leal    v1, %eax                #  53:     &()    t18 <- v1
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  54:     param  0 <- t18
    pushl   %eax                   
    call    DIM                     #  55:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -60(%ebp)        
    movl    -52(%ebp), %eax         #  56:     mul    t20 <- t17, t19
    movl    -60(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #  57:     add    t21 <- t20, 21866
    movl    $21866, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    $5, %eax                #  58:     param  1 <- 5
    pushl   %eax                   
    leal    v1, %eax                #  59:     &()    t22 <- v1
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  60:     param  0 <- t22
    pushl   %eax                   
    call    DIM                     #  61:     call   t23 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -72(%ebp), %eax         #  62:     mul    t24 <- t21, t23
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  63:     add    t25 <- t24, 15612
    movl    $15612, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  64:     mul    t26 <- t25, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -92(%ebp)        
    leal    v1, %eax                #  65:     &()    t27 <- v1
    movl    %eax, -96(%ebp)        
    movl    -96(%ebp), %eax         #  66:     param  0 <- t27
    pushl   %eax                   
    call    DOFS                    #  67:     call   t28 <- DOFS
    addl    $4, %esp               
    movl    %eax, -100(%ebp)       
    movl    -92(%ebp), %eax         #  68:     add    t29 <- t26, t28
    movl    -100(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -104(%ebp)       
    movl    -132(%ebp), %eax        #  69:     add    t30 <- t9, t29
    movl    -104(%ebp), %ebx       
    addl    %ebx, %eax             
    movl    %eax, -112(%ebp)       
    movl    $32020, %eax            #  70:     assign @t30 <- 32020
    movl    -112(%ebp), %edi       
    movl    %eax, (%edi)           
    jmp     l_test_30               #  71:     goto   30
l_test_30:
    jmp     l_test_26               #  73:     goto   26
l_test_28_if_false:
l_test_26:

l_test_exit:
    # epilogue
    addl    $120, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # end of text section
    #-----------------------------------------

    #-----------------------------------------
    # global data section
    #
    .data
    .align 4

    # scope: test
v0:                                 # <int>
    .skip    4
v1:                                 # <array 92 of <array 72 of <array 58 of <array 79 of <array 39 of <int>>>>>>
    .long    5
    .long   92
    .long   72
    .long   58
    .long   79
    .long   39
    .skip 439814912
v2:                                 # <array 69 of <array 36 of <array 95 of <array 52 of <array 74 of <bool>>>>>>
    .long    5
    .long   69
    .long   36
    .long   95
    .long   52
    .long   74
    .skip 908051040








    # end of global data section
    #-----------------------------------------

    .end
##################################################
