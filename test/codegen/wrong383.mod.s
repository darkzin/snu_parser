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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $v0       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v1       <bool> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $13541, %eax            #   6:     assign v0 <- 13541
    movl    %eax, -28(%ebp)        
    movl    $22116, %eax            #   7:     if     22116 = 67646 goto 9_if_true
    movl    $67646, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_9_if_true         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
l_f0_9_if_true:
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #  14:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_4                  #  15:     goto   4
l_f0_4:
    jmp     l_f0_16                 #  17:     goto   16
    movl    $1, %eax                #  18:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f0_17                 #  19:     goto   17
l_f0_16:
    movl    $0, %eax                #  21:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f0_17:
    movzbl  -21(%ebp), %eax         #  23:     assign v1 <- t6
    movb    %al, -29(%ebp)         

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t9       <bool> %ebp-37 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 3 of <array 10 of <array 3 of <array 1 of <int>>>>>>> %ebp+8 ]
    #    -44(%ebp)   4  [ $v1       <int> %ebp-44 ]

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
    movl    $27410, %eax            #   0:     mul    t4 <- 27410, 5062
    movl    $5062, %ebx            
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   1:     mul    t5 <- t4, 88125
    movl    $88125, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     assign v1 <- t5
    movl    %eax, -44(%ebp)        
    movl    $30425, %eax            #   3:     add    t6 <- 30425, 60263
    movl    $60263, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t7 <- t6, 29789
    movl    $29789, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     add    t8 <- t7, 11617
    movl    $11617, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   6:     if     t8 > 75701 goto 2
    movl    $75701, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2                 
    jmp     l_f1_3                  #   7:     goto   3
l_f1_2:
    movl    $1, %eax                #   9:     assign t9 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_f1_4                  #  10:     goto   4
l_f1_3:
    movl    $0, %eax                #  12:     assign t9 <- 0
    movb    %al, -37(%ebp)         
l_f1_4:
    movzbl  -37(%ebp), %eax         #  14:     return t9
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  15:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  16:     if     t10 >= 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  17:     goto   8_if_false
l_f1_7_if_true:
    call    f0                      #  19:     call   t11 <- f0
    movb    %al, -14(%ebp)         
    jmp     l_f1_6                  #  20:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $17004, %eax            #   1:     div    t5 <- 17004, 43897
    movl    $43897, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t6 <- t5, 99514
    movl    $99514, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 75920
    movl    $75920, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t7
    jmp     l_f2_exit              
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
l_f2_6_while_cond:
    jmp     l_f2_5                  #   7:     goto   5
    jmp     l_f2_6_while_cond       #   8:     goto   6_while_cond
l_f2_5:
    movl    $99, %eax               #  10:     if     99 > 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  11:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  13:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $12796, %eax            #  16:     if     12796 = 20988 goto 13_if_true
    movl    $20988, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  17:     goto   14_if_false
l_f2_13_if_true:
    jmp     l_f2_12                 #  19:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_2                  #  22:     goto   2
l_f2_4_if_false:
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    jmp     l_test_3                #   3:     goto   3
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    movl    $1, %eax                #   6:     assign v0 <- 1
    movb    %al, v0                
    call    dummyBOOLfunc           #   7:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    movl    $66346, %eax            #   9:     if     66346 = 53296 goto 10_if_true
    movl    $53296, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_10_if_true      
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  12:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_1_while_cond     #  15:     goto   1_while_cond
l_test_0:
    call    dummyCHARfunc           #  17:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_15_while_cond:
    movl    $82116, %eax            #  19:     mul    t2 <- 82116, 60675
    movl    $60675, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     mul    t3 <- t2, 70504
    movl    $70504, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     if     t3 > 59764 goto 16_while_body
    movl    $59764, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  22:     goto   14
l_test_16_while_body:
l_test_19_while_cond:
    jmp     l_test_18               #  25:     goto   18
    jmp     l_test_19_while_cond    #  26:     goto   19_while_cond
l_test_18:
    movl    $99, %eax               #  28:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_15_while_cond    #  29:     goto   15_while_cond
l_test_14:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
