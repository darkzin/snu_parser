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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    movl    $324, %eax              #   1:     if     324 = 99693 goto 5_if_true
    movl    $99693, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_0:
    movl    $12920, %eax            #   9:     assign v0 <- 12920
    movl    %eax, 8(%ebp)          
    movl    $92297, %eax            #  10:     add    t1 <- 92297, 88760
    movl    $88760, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  11:     add    t2 <- t1, 93643
    movl    $93643, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  12:     add    t3 <- t2, 77702
    movl    $77702, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     if     t3 <= 27380 goto 10
    movl    $27380, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_10                
    jmp     l_f0_11                 #  14:     goto   11
l_f0_10:
    movl    $1, %eax                #  16:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_12                 #  17:     goto   12
l_f0_11:
    movl    $0, %eax                #  19:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f0_12:
    movzbl  -25(%ebp), %eax         #  21:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -52(%ebp)   4  [ $v1       <int> %ebp-52 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $17484, %eax            #   0:     if     17484 >= 80107 goto 1_if_true
    movl    $80107, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyBOOLfunc           #   3:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_5                  #   4:     goto   5
l_f1_5:
l_f1_9_while_cond:
    movl    $97, %eax               #   7:     if     97 <= 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_10_while_body     
    jmp     l_f1_8                  #   8:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
l_f1_8:
    movl    $12648, %eax            #  12:     assign v1 <- 12648
    movl    %eax, -52(%ebp)        
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyINTfunc            #  16:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $97846, %eax            #  17:     mul    t3 <- 97846, t2
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     return t3
    jmp     l_f1_exit              
    movl    $56299, %eax            #  19:     sub    t4 <- 56299, 32321
    movl    $32321, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t5 <- t4, 85236
    movl    $85236, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     add    t6 <- t5, 42503
    movl    $42503, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  22:     add    t7 <- t6, 69607
    movl    $69607, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  23:     sub    t8 <- t7, 62777
    movl    $62777, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     sub    t9 <- t8, 18626
    movl    $18626, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  25:     param  0 <- t9
    pushl   %eax                   
    call    WriteInt                #  26:     call   WriteInt
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 48 of <array 13 of <array 100 of <array 100 of <char>>>>>>> %ebp+8 ]
    #    -56(%ebp)   4  [ $v1       <int> %ebp-56 ]
    #    -57(%ebp)   1  [ $v2       <char> %ebp-57 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $48, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $12, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $71676, %eax            #   0:     div    t1 <- 71676, 69169
    movl    $69169, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t2 <- t1, 22620
    movl    $22620, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     mul    t3 <- t2, 34247
    movl    $34247, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     mul    t4 <- t3, 80806
    movl    $80806, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   4:     div    t5 <- t4, 47576
    movl    $47576, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   5:     add    t6 <- t5, 12771
    movl    $12771, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   6:     return t6
    jmp     l_f2_exit              
    call    ReadInt                 #   7:     call   t7 <- ReadInt
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   8:     add    t8 <- t7, 32940
    movl    $32940, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   9:     add    t9 <- t8, 21122
    movl    $21122, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  10:     add    t10 <- t9, 34524
    movl    $34524, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     return t10
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $6345, %eax             #  13:     if     6345 = 6007 goto 4_while_body
    movl    $6007, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_4_while_body      
    jmp     l_f2_2                  #  14:     goto   2
l_f2_4_while_body:
    movl    $64679, %eax            #  16:     assign v1 <- 64679
    movl    %eax, -56(%ebp)        
    movl    $33019, %eax            #  17:     return 33019
    jmp     l_f2_exit              
    jmp     l_f2_10_if_false        #  18:     goto   10_if_false
    jmp     l_f2_8                  #  19:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $86235, %eax            #  22:     if     86235 <= 84812 goto 12_if_true
    movl    $84812, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  23:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  25:     goto   11
l_f2_13_if_false:
l_f2_11:
    movl    $99, %eax               #  28:     assign v2 <- 99
    movb    %al, -57(%ebp)         
    jmp     l_f2_3_while_cond       #  29:     goto   3_while_cond
l_f2_2:

l_f2_exit:
    # epilogue
    addl    $48, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_test_2_while_cond:
    jmp     l_test_3_while_body     #   2:     goto   3_while_body
    jmp     l_test_3_while_body     #   3:     goto   3_while_body
    jmp     l_test_3_while_body     #   4:     goto   3_while_body
    jmp     l_test_3_while_body     #   5:     goto   3_while_body
    jmp     l_test_1                #   6:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #   8:     goto   2_while_cond
l_test_1:
    call    WriteLn                 #  10:     call   WriteLn

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
