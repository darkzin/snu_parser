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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]

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
    movl    $61701, %eax            #   0:     add    t4 <- 61701, 71506
    movl    $71506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t5 <- t4, 33328
    movl    $33328, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v3 <- t5
    movl    %eax, -40(%ebp)        
    call    dummyINTfunc            #   3:     call   t6 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t7 <- t6, 29347
    movl    $29347, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t8 <- t7, 39492
    movl    $39492, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     assign v3 <- t8
    movl    %eax, -40(%ebp)        
    call    dummyBOOLfunc           #   7:     call   t9 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    movl    $1, %eax                #   0:     if     1 # 0 goto 1_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   4:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_0                  #   5:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     assign v3 <- t5
    movb    %al, 16(%ebp)          
    jmp     l_f1_8                  #  10:     goto   8
    movl    $1, %eax                #  11:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_9                  #  12:     goto   9
l_f1_8:
    movl    $0, %eax                #  14:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f1_9:
    movzbl  -15(%ebp), %eax         #  16:     assign v1 <- t6
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 30 of <array 39 of <array 21 of <array 47 of <array 97 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t4
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $45559, %eax            #   3:     param  0 <- 45559
    pushl   %eax                   
    call    WriteInt                #   4:     call   WriteInt
    addl    $4, %esp               
    movl    $97, %eax               #   5:     return 97
    jmp     l_f2_exit              
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   7:     goto   7_while_cond
l_f2_10_while_cond:
    movl    $1, %eax                #   9:     if     1 # 0 goto 11_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  10:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  12:     goto   10_while_cond
l_f2_9:
    movl    $94761, %eax            #  14:     assign v4 <- 94761
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
    call    dummyCHARfunc           #  16:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  17:     if     99 <= t5 goto 15
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_15                
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $1, %eax                #  20:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $0, %eax                #  23:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f2_17:
    movzbl  -15(%ebp), %eax         #  25:     assign v2 <- t6
    movb    %al, 12(%ebp)          

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_2_if_true        #   2:     goto   2_if_true
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
l_test_8_while_cond:
    jmp     l_test_7                #   6:     goto   7
    jmp     l_test_8_while_cond     #   7:     goto   8_while_cond
l_test_7:
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
    jmp     l_test_10               #  10:     goto   10
l_test_12_if_false:
l_test_10:
    movl    $98, %eax               #  13:     assign v0 <- 98
    movb    %al, v0                
    call    ReadInt                 #  14:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1                #  15:     goto   1
l_test_3_if_false:
l_test_1:
l_test_16_while_cond:
    jmp     l_test_15               #  19:     goto   15
    jmp     l_test_16_while_cond    #  20:     goto   16_while_cond
l_test_15:
    jmp     l_test_exit            
    movl    $11977, %eax            #  23:     add    t2 <- 11977, 77739
    movl    $77739, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     sub    t3 <- t2, 63871
    movl    $63871, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     param  0 <- t3
    pushl   %eax                   
    call    WriteInt                #  26:     call   WriteInt
    addl    $4, %esp               
    movl    $77138, %eax            #  27:     assign v1 <- 77138
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
