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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <bool> %ebp-33 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $99099, %eax            #   0:     mul    t3 <- 99099, 54959
    movl    $54959, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t4 <- t3, 12875
    movl    $12875, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t5 <- t4, 69406
    movl    $69406, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t6 <- t5, 34579
    movl    $34579, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $84778, %eax            #   4:     add    t7 <- 84778, t6
    movl    -28(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     if     t7 >= 37975 goto 1
    movl    $37975, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_1                 
    jmp     l_f0_2                  #   6:     goto   2
l_f0_1:
    movl    $1, %eax                #   8:     assign t8 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f0_3                  #   9:     goto   3
l_f0_2:
    movl    $0, %eax                #  11:     assign t8 <- 0
    movb    %al, -33(%ebp)         
l_f0_3:
    movzbl  -33(%ebp), %eax         #  13:     return t8
    jmp     l_f0_exit              
    call    ReadInt                 #  14:     call   t9 <- ReadInt
    movl    %eax, -40(%ebp)        
    movl    $98, %eax               #  15:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               

l_f0_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 14 of <array 17 of <array 71 of <array 43 of <array 17 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 16 of <array 10 of <array 54 of <array 93 of <array 62 of <char>>>>>>> %ebp+16 ]
    #    -26(%ebp)   1  [ $v4       <char> %ebp-26 ]

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
l_f1_1_while_cond:
    movl    $61290, %eax            #   1:     sub    t3 <- 61290, 43458
    movl    $43458, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t4 <- t3, 5868
    movl    $5868, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t5 <- t4, 61138
    movl    $61138, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     if     t5 >= 363 goto 2_while_body
    movl    $363, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_while_body:
    movl    $52567, %eax            #   7:     return 52567
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  11:     assign v4 <- t6
    movb    %al, -26(%ebp)         
    movl    $79279, %eax            #  12:     if     79279 < 84530 goto 7_if_true
    movl    $84530, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  13:     goto   8_if_false
l_f1_7_if_true:
    movl    $94141, %eax            #  15:     if     94141 >= 85697 goto 11_if_true
    movl    $85697, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  16:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_if_false:
l_f1_10:
l_f1_15_while_cond:
    movl    $97750, %eax            #  22:     if     97750 <= 98984 goto 16_while_body
    movl    $98984, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_16_while_body     
    jmp     l_f1_14                 #  23:     goto   14
l_f1_16_while_body:
    jmp     l_f1_15_while_cond      #  25:     goto   15_while_cond
l_f1_14:
    movl    $99189, %eax            #  27:     return 99189
    jmp     l_f1_exit              
    jmp     l_f1_6                  #  28:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_3                  #   1:     goto   3
l_f2_3:
    call    dummyCHARfunc           #   3:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_exit              
    movl    $41869, %eax            #   8:     sub    t4 <- 41869, 16242
    movl    $16242, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t5 <- t4, 22074
    movl    $22074, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     assign v1 <- t5
    movl    %eax, -28(%ebp)        
    jmp     l_f2_7                  #  11:     goto   7
l_f2_7:
    jmp     l_f2_14_if_false        #  13:     goto   14_if_false
    jmp     l_f2_exit              
    movl    $19452, %eax            #  15:     if     19452 > 91293 goto 17_if_true
    movl    $91293, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_17_if_true        
    jmp     l_f2_18_if_false        #  16:     goto   18_if_false
l_f2_17_if_true:
    jmp     l_f2_16                 #  18:     goto   16
l_f2_18_if_false:
l_f2_16:
    movl    $98, %eax               #  21:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  22:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_if_false:
l_f2_12:

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $8, %esp                # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_3_while_cond:
    jmp     l_test_7                #   3:     goto   7
    movl    $1, %eax                #   4:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   5:     goto   8
l_test_7:
    movl    $0, %eax                #   7:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movl    $1, %eax                #   9:     if     1 = t0 goto 4_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_4_while_body    
    jmp     l_test_2                #  10:     goto   2
l_test_4_while_body:
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:
l_test_12_while_cond:
    jmp     l_test_11               #  16:     goto   11
    movl    $79467, %eax            #  17:     if     79467 >= 63002 goto 16
    movl    $63002, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_16              
    jmp     l_test_17               #  18:     goto   17
l_test_16:
    movl    $1, %eax                #  20:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_18               #  21:     goto   18
l_test_17:
    movl    $0, %eax                #  23:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_18:
    movzbl  -14(%ebp), %eax         #  25:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_12_while_cond    #  26:     goto   12_while_cond
l_test_11:
    movl    $61001, %eax            #  28:     add    t2 <- 61001, 81592
    movl    $81592, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     assign v2 <- t2
    movl    %eax, v2               
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
