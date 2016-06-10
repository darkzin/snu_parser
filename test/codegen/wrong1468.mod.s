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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t13      <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t7       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t8       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #    -41(%ebp)   1  [ $v1       <bool> %ebp-41 ]

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
    call    dummyINTfunc            #   0:     call   t7 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $48285, %eax            #   1:     add    t8 <- 48285, 38502
    movl    $38502, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $47776, %eax            #   2:     mul    t9 <- 47776, 6182
    movl    $6182, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     div    t10 <- t9, 59180
    movl    $59180, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     div    t11 <- t10, 81337
    movl    $81337, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -36(%ebp), %eax         #   5:     add    t12 <- t8, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $28538, %eax            #   6:     if     28538 <= t12 goto 2
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_2                 
    jmp     l_f0_3                  #   7:     goto   3
l_f0_2:
    movl    $1, %eax                #   9:     assign t13 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_4                  #  10:     goto   4
l_f0_3:
    movl    $0, %eax                #  12:     assign t13 <- 0
    movb    %al, -25(%ebp)         
l_f0_4:
    movzbl  -25(%ebp), %eax         #  14:     assign v1 <- t13
    movb    %al, -41(%ebp)         
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $32, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t9       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $15271, %eax            #   0:     div    t7 <- 15271, 88390
    movl    $88390, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $47616, %eax            #   1:     add    t8 <- 47616, t7
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   2:     return t8
    jmp     l_f1_exit              
    call    dummyBOOLfunc           #   3:     call   t9 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    call    dummyBOOLfunc           #   4:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -13(%ebp)   1  [ $t7       <bool> %ebp-13 ]

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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
l_f2_5_while_cond:
    movl    $99, %eax               #   3:     if     99 = 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_6_while_body      
    jmp     l_f2_4                  #   4:     goto   4
l_f2_6_while_body:
    jmp     l_f2_5_while_cond       #   6:     goto   5_while_cond
l_f2_4:
    movl    $98, %eax               #   8:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #   9:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #  11:     call   t7 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #  12:     call   dummyProcedure

l_f2_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
    movl    $99, %eax               #   0:     if     99 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_exit            
    movl    $93094, %eax            #   4:     if     93094 # 36772 goto 6_if_true
    movl    $36772, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   5:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   7:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_11_if_false      #  10:     goto   11_if_false
    jmp     l_test_9                #  11:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_0                #  14:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #  17:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
l_test_15_while_cond:
    jmp     l_test_14               #  20:     goto   14
    movl    $99, %eax               #  21:     if     99 >= 97 goto 20_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  24:     goto   19
l_test_21_if_false:
l_test_19:
    movl    $9238, %eax             #  27:     if     9238 < 70763 goto 24_if_true
    movl    $70763, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_24_if_true      
    jmp     l_test_25_if_false      #  28:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_23               #  30:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_15_while_cond    #  33:     goto   15_while_cond
l_test_14:
    jmp     l_test_exit            
    movl    $58819, %eax            #  36:     sub    t1 <- 58819, 29153
    movl    $29153, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     sub    t2 <- t1, 37755
    movl    $37755, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  38:     add    t3 <- t2, 99911
    movl    $99911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     add    t4 <- t3, 9732
    movl    $9732, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  40:     add    t5 <- t4, 5428
    movl    $5428, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  41:     add    t6 <- t5, 65514
    movl    $65514, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  42:     assign v0 <- t6
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
