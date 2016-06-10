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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 22 of <array 26 of <array 11 of <array 32 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   1  [ $v1       <bool> %ebp-20 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
l_f0_4_while_cond:
    movl    $14674, %eax            #   2:     if     14674 >= 94215 goto 5_while_body
    movl    $94215, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_f0_8                  #   8:     goto   8
l_f0_8:
    jmp     l_f0_0                  #  10:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $0, %eax                #  14:     if     0 = 0 goto 16
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_16                
    jmp     l_f0_17                 #  15:     goto   17
l_f0_16:
    movl    $1, %eax                #  17:     assign t2 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_18                 #  18:     goto   18
l_f0_17:
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -18(%ebp)         
l_f0_18:
    movzbl  -18(%ebp), %eax         #  22:     assign v1 <- t2
    movb    %al, -20(%ebp)         
    movl    $10264, %eax            #  23:     if     10264 <= 3710 goto 21_if_true
    movl    $3710, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_21_if_true        
    jmp     l_f0_22_if_false        #  24:     goto   22_if_false
l_f0_21_if_true:
    jmp     l_f0_20                 #  26:     goto   20
l_f0_22_if_false:
l_f0_20:
    jmp     l_f0_11                 #  29:     goto   11
l_f0_11:
    movl    $84722, %eax            #  31:     if     84722 >= 67507 goto 25
    movl    $67507, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_25                
    jmp     l_f0_26                 #  32:     goto   26
l_f0_25:
    movl    $1, %eax                #  34:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_f0_27                 #  35:     goto   27
l_f0_26:
    movl    $0, %eax                #  37:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_f0_27:
    movzbl  -19(%ebp), %eax         #  39:     assign v1 <- t3
    movb    %al, -20(%ebp)         

l_f0_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t5       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #    -65(%ebp)   1  [ $v0       <bool> %ebp-65 ]
    #    -72(%ebp)   4  [ $v1       <int> %ebp-72 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $60, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $15, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f1_1_while_cond:
    movl    $80373, %eax            #   1:     mul    t0 <- 80373, 38339
    movl    $38339, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $44290, %eax            #   2:     if     44290 = t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    movl    $6850, %eax             #   7:     sub    t1 <- 6850, 89053
    movl    $89053, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   8:     sub    t2 <- t1, 80619
    movl    $80619, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   9:     add    t3 <- t2, 44607
    movl    $44607, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     sub    t4 <- t3, 44683
    movl    $44683, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $70095, %eax            #  11:     if     70095 # t4 goto 5
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_5                 
    jmp     l_f1_6                  #  12:     goto   6
l_f1_5:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f1_7                  #  15:     goto   7
l_f1_6:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -45(%ebp)         
l_f1_7:
    movzbl  -45(%ebp), %eax         #  19:     assign v0 <- t5
    movb    %al, -65(%ebp)         
    movl    $35495, %eax            #  20:     div    t6 <- 35495, 1651
    movl    $1651, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  21:     add    t7 <- t6, 10227
    movl    $10227, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  22:     add    t8 <- t7, 84351
    movl    $84351, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  23:     sub    t9 <- t8, 84080
    movl    $84080, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  24:     sub    t10 <- t9, 54502
    movl    $54502, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     sub    t11 <- t10, 8241
    movl    $8241, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t12 <- t11, 58134
    movl    $58134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     assign v1 <- t12
    movl    %eax, -72(%ebp)        

l_f1_exit:
    # epilogue
    addl    $60, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 53 of <array 78 of <array 10 of <array 28 of <array 18 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 7 of <array 63 of <array 29 of <array 31 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

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
l_f2_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 >= 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   5:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #   7:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $52133, %eax            #   8:     sub    t2 <- 52133, 38668
    movl    $38668, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   9:     add    t3 <- t2, 71001
    movl    $71001, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  10:     return t3
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    WriteLn                 #   1:     call   WriteLn
l_test_3_while_cond:
    jmp     l_test_4_while_body     #   3:     goto   4_while_body
    jmp     l_test_4_while_body     #   4:     goto   4_while_body
    jmp     l_test_2                #   5:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #   8:     goto   3_while_cond
l_test_2:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
