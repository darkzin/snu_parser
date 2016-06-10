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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 37 of <array 94 of <array 7 of <array 1 of <array 63 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 68 of <array 83 of <array 47 of <array 35 of <array 31 of <char>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t4 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
l_f0_1_if_true:
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    call    dummyBOOLfunc           #   5:     call   t5 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   6:     if     t5 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_6                  #   7:     goto   6
l_f0_9:
    jmp     l_f0_6                  #   9:     goto   6
    movl    $1, %eax                #  10:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_7                  #  11:     goto   7
l_f0_6:
    movl    $0, %eax                #  13:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_7:
    movzbl  -15(%ebp), %eax         #  15:     assign v1 <- t6
    movb    %al, 12(%ebp)          
l_f0_11_while_cond:
    jmp     l_f0_11_while_cond      #  17:     goto   11_while_cond

l_f0_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $93472, %eax            #   0:     mul    t4 <- 93472, 75965
    movl    $75965, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t5 <- t4, 37418
    movl    $37418, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     mul    t6 <- t5, 20897
    movl    $20897, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     div    t7 <- t6, 28075
    movl    $28075, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     return t7
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_3_while_body       #   6:     goto   3_while_body
    jmp     l_f1_3_while_body       #   7:     goto   3_while_body
    movl    $97, %eax               #   8:     if     97 > 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_3_while_body      
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    call    ReadInt                 #  13:     call   t8 <- ReadInt
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $v0       <int> %ebp-32 ]

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
    movl    $98, %eax               #   0:     if     98 > 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $1, %eax                #   3:     return 1
    jmp     l_f2_exit              
    call    ReadInt                 #   4:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $1, %eax                #   5:     param  0 <- 1
    pushl   %eax                   
    call    f1                      #   6:     call   t5 <- f1
    addl    $4, %esp               
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   7:     if     0 = 0 goto 8_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_if_true         
    jmp     l_f2_9_if_false         #   8:     goto   9_if_false
l_f2_8_if_true:
    jmp     l_f2_7                  #  10:     goto   7
l_f2_9_if_false:
l_f2_7:
    jmp     l_f2_0                  #  13:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_12_while_cond:
    movl    $0, %eax                #  17:     if     0 = 1 goto 13_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_13_while_body     
    jmp     l_f2_11                 #  18:     goto   11
l_f2_13_while_body:
    movl    $88490, %eax            #  20:     div    t6 <- 88490, 55656
    movl    $55656, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  21:     assign v0 <- t6
    movl    %eax, -32(%ebp)        
    jmp     l_f2_12_while_cond      #  22:     goto   12_while_cond
l_f2_11:
    movl    $43313, %eax            #  24:     div    t7 <- 43313, 1053
    movl    $1053, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     assign v0 <- t7
    movl    %eax, -32(%ebp)        

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <char> %ebp-19 ]

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
    movl    $99, %eax               #   0:     if     99 >= 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyINTfunc            #   8:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_9_if_false       #   9:     goto   9_if_false
    call    f2                      #  10:     call   t1 <- f2
    movb    %al, -17(%ebp)         
l_test_12_while_cond:
    jmp     l_test_12_while_cond    #  12:     goto   12_while_cond
    call    dummyCHARfunc           #  13:     call   t2 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #  14:     call   t3 <- dummyCHARfunc
    movb    %al, -19(%ebp)         
    jmp     l_test_7                #  15:     goto   7
l_test_9_if_false:
l_test_7:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
