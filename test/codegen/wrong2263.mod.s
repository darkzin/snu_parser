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
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -13(%ebp)   1  [ $v1       <char> %ebp-13 ]

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
    jmp     l_f0_exit              
    movl    $97, %eax               #   1:     assign v1 <- 97
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t14      <bool> %ebp-26 ]
    #    -32(%ebp)   4  [ $t15      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 48 of <array 5 of <array 93 of <array 23 of <array 42 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -45(%ebp)   1  [ $v4       <bool> %ebp-45 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $84776, %eax            #   0:     mul    t7 <- 84776, 82414
    movl    $82414, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   1:     sub    t8 <- t7, 35996
    movl    $35996, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   2:     add    t9 <- t8, 26662
    movl    $26662, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   3:     sub    t10 <- t9, 36942
    movl    $36942, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t11 <- t10, 16210
    movl    $16210, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t12 <- t11, 33745
    movl    $33745, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     return t12
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   7:     call   t13 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     if     t13 = 1 goto 6
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_6                 
    jmp     l_f1_3                  #   9:     goto   3
l_f1_6:
    jmp     l_f1_3                  #  11:     goto   3
    movl    $1, %eax                #  12:     assign t14 <- 1
    movb    %al, -26(%ebp)         
    jmp     l_f1_4                  #  13:     goto   4
l_f1_3:
    movl    $0, %eax                #  15:     assign t14 <- 0
    movb    %al, -26(%ebp)         
l_f1_4:
    movzbl  -26(%ebp), %eax         #  17:     assign v4 <- t14
    movb    %al, -45(%ebp)         
    call    dummyINTfunc            #  18:     call   t15 <- dummyINTfunc
    movl    %eax, -32(%ebp)        

l_f1_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -17(%ebp)   1  [ $v1       <char> %ebp-17 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    call    dummyINTfunc            #   2:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $96669, %eax            #   3:     if     96669 > t7 goto 4_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   4:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   6:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    movl    $97, %eax               #  11:     assign v1 <- 97
    movb    %al, -17(%ebp)         
    movl    $97, %eax               #  12:     assign v1 <- 97
    movb    %al, -17(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t6       <char> %ebp-34 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_3_if_false       #   1:     goto   3_if_false
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1                #   3:     goto   1
l_test_3_if_false:
l_test_1:
    movl    $41735, %eax            #   6:     div    t2 <- 41735, 63728
    movl    $63728, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   7:     mul    t3 <- t2, 8252
    movl    $8252, %ebx            
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   8:     mul    t4 <- t3, 30300
    movl    $30300, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    $15448, %eax            #   9:     if     15448 < t4 goto 6_if_true
    movl    -32(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_6_if_true       
    jmp     l_test_7_if_false       #  10:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_exit            
    jmp     l_test_5                #  13:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_exit            
    jmp     l_test_13_if_false      #  17:     goto   13_if_false
    call    dummyCHARfunc           #  18:     call   t5 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
l_test_16_while_cond:
    jmp     l_test_15               #  20:     goto   15
    jmp     l_test_16_while_cond    #  21:     goto   16_while_cond
l_test_15:
    jmp     l_test_11               #  23:     goto   11
l_test_13_if_false:
l_test_11:
    call    dummyCHARfunc           #  26:     call   t6 <- dummyCHARfunc
    movb    %al, -34(%ebp)         
    movzbl  -34(%ebp), %eax         #  27:     param  0 <- t6
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
