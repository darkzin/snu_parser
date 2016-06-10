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
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t15      <char> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $99, %eax               #   0:     if     99 <= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t12 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #   4:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    ReadInt                 #   8:     call   t14 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   9:     return t14
    jmp     l_f0_exit              
l_f0_8_while_cond:
    call    dummyCHARfunc           #  11:     call   t15 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  12:     if     t15 <= 97 goto 9_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_9_while_body      
    jmp     l_f0_7                  #  13:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  15:     goto   8_while_cond
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t12      <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 31 of <array 95 of <array 53 of <array 6 of <array 83 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $4, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 0(%esp)          

    # function body
    call    f0                      #   0:     call   t12 <- f0
    movl    %eax, -16(%ebp)        
l_f1_2_while_cond:
    jmp     l_f1_4                  #   2:     goto   4
    jmp     l_f1_4                  #   3:     goto   4
l_f1_4:
    jmp     l_f1_1                  #   5:     goto   1
    jmp     l_f1_2_while_cond       #   6:     goto   2_while_cond
l_f1_1:
    movl    $4364, %eax             #   8:     assign v2 <- 4364
    movl    %eax, 12(%ebp)         

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t12      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t13      <ptr(4) to <array 31 of <array 95 of <array 53 of <array 6 of <array 83 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t14      <char> %ebp-21 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #   -77730376(%ebp)  77730354  [ $v2       <array 31 of <array 95 of <array 53 of <array 6 of <array 83 of <char>>>>>> %ebp-77730376 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $77730364, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19432591, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-77730376(%ebp)      # local array 'v2': 5 dimensions
    movl    $31,-77730372(%ebp)     #   dimension 1: 31 elements
    movl    $95,-77730368(%ebp)     #   dimension 2: 95 elements
    movl    $53,-77730364(%ebp)     #   dimension 3: 53 elements
    movl    $6,-77730360(%ebp)      #   dimension 4: 6 elements
    movl    $83,-77730356(%ebp)     #   dimension 5: 83 elements

    # function body
    jmp     l_f2_1_if_true          #   0:     goto   1_if_true
    jmp     l_f2_1_if_true          #   1:     goto   1_if_true
l_f2_1_if_true:
    call    dummyProcedure          #   3:     call   dummyProcedure
    jmp     l_f2_0                  #   4:     goto   0
l_f2_0:
    jmp     l_f2_exit              
    movl    $98527, %eax            #   7:     if     98527 = 25048 goto 9
    movl    $25048, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_9                 
    jmp     l_f2_10                 #   8:     goto   10
l_f2_9:
    movl    $1, %eax                #  10:     assign t12 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_11                 #  11:     goto   11
l_f2_10:
    movl    $0, %eax                #  13:     assign t12 <- 0
    movb    %al, -13(%ebp)         
l_f2_11:
    movzbl  -13(%ebp), %eax         #  15:     param  3 <- t12
    pushl   %eax                   
    movl    $99, %eax               #  16:     param  2 <- 99
    pushl   %eax                   
    movl    $68306, %eax            #  17:     param  1 <- 68306
    pushl   %eax                   
    leal    -77730376(%ebp), %eax   #  18:     &()    t13 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  19:     param  0 <- t13
    pushl   %eax                   
    call    f1                      #  20:     call   t14 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

l_f2_exit:
    # epilogue
    addl    $77730364, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t10      <ptr(4) to <array 31 of <array 95 of <array 53 of <array 6 of <array 83 of <char>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t11      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t2       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $t3       <char> %ebp-23 ]
    #    -24(%ebp)   1  [ $t4       <bool> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     if     t0 > t1 goto 2_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_test_2_while_body    
    jmp     l_test_0                #   4:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   6:     goto   1_while_cond
l_test_0:
    movl    $18529, %eax            #   8:     assign v0 <- 18529
    movl    %eax, v0               
l_test_9_while_cond:
    movl    $97, %eax               #  10:     if     97 > 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_10_while_body   
    jmp     l_test_8                #  11:     goto   8
l_test_10_while_body:
    call    dummyBOOLfunc           #  13:     call   t2 <- dummyBOOLfunc
    movb    %al, -22(%ebp)         
    jmp     l_test_9_while_cond     #  14:     goto   9_while_cond
l_test_8:
    jmp     l_test_4                #  16:     goto   4
l_test_4:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -23(%ebp)         
l_test_15_while_cond:
    jmp     l_test_14               #  20:     goto   14
    movl    $38626, %eax            #  21:     param  0 <- 38626
    pushl   %eax                   
    call    WriteInt                #  22:     call   WriteInt
    addl    $4, %esp               
    call    WriteLn                 #  23:     call   WriteLn
    jmp     l_test_15_while_cond    #  24:     goto   15_while_cond
l_test_14:
    call    dummyBOOLfunc           #  26:     call   t4 <- dummyBOOLfunc
    movb    %al, -24(%ebp)         
    movl    $0, %eax                #  27:     param  3 <- 0
    pushl   %eax                   
    movl    $100, %eax              #  28:     param  2 <- 100
    pushl   %eax                   
    movl    $66262, %eax            #  29:     div    t5 <- 66262, 4139
    movl    $4139, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  30:     add    t6 <- t5, 80705
    movl    $80705, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  31:     sub    t7 <- t6, 50287
    movl    $50287, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  32:     add    t8 <- t7, 91291
    movl    $91291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  33:     add    t9 <- t8, 8693
    movl    $8693, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  34:     param  1 <- t9
    pushl   %eax                   
    leal    v1, %eax                #  35:     &()    t10 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  37:     call   t11 <- f1
    addl    $16, %esp              
    movb    %al, -21(%ebp)         

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
v1:                                 # <array 31 of <array 95 of <array 53 of <array 6 of <array 83 of <char>>>>>>
    .long    5
    .long   31
    .long   95
    .long   53
    .long    6
    .long   83
    .skip 77730330








    # end of global data section
    #-----------------------------------------

    .end
##################################################
