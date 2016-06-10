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
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -49(%ebp)   1  [ $t19      <bool> %ebp-49 ]
    #    -56(%ebp)   4  [ $t2       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 91 of <array 86 of <array 7 of <array 4 of <array 86 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 39 of <array 68 of <array 96 of <array 49 of <array 60 of <char>>>>>>> %ebp+12 ]
    #    -85(%ebp)   1  [ $v2       <char> %ebp-85 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $76, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $19, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $98, %eax               #   1:     if     98 > 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $2, %eax                #   6:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #   8:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    $71999, %eax            #   9:     mul    t3 <- 71999, t2
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    $82496, %eax            #  10:     mul    t4 <- 82496, 10779
    movl    $10779, %ebx           
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  11:     add    t5 <- t3, t4
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $3, %eax                #  12:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t6 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  15:     mul    t7 <- t5, t6
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t8 <- t7, 32253
    movl    $32253, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $4, %eax                #  17:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t10 <- t8, t9
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  21:     add    t11 <- t10, 24911
    movl    $24911, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $5, %eax                #  22:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #  25:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 49892
    movl    $49892, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     mul    t15 <- t14, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  29:     call   t16 <- DOFS
    addl    $4, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  30:     add    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  31:     add    t18 <- v0, t17
    movl    -44(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $98, %eax               #  32:     assign @t18 <- 98
    movl    -48(%ebp), %edi        
    movb    %al, (%edi)            
l_f0_6_while_cond:
    call    dummyBOOLfunc           #  34:     call   t19 <- dummyBOOLfunc
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  35:     if     t19 = 1 goto 7_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7_while_body      
    jmp     l_f0_5                  #  36:     goto   5
l_f0_7_while_body:
    jmp     l_f0_10_if_false        #  38:     goto   10_if_false
    jmp     l_f0_8                  #  39:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_6_while_cond       #  42:     goto   6_while_cond
l_f0_5:

l_f0_exit:
    # epilogue
    addl    $76, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 70 of <array 89 of <array 82 of <array 63 of <array 84 of <char>>>>>>> %ebp+8 ]

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
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
    jmp     l_f1_4                  #   3:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_8_while_cond:
    movl    $98, %eax               #   7:     if     98 = 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_9_while_body      
    jmp     l_f1_7                  #   8:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  10:     goto   8_while_cond
l_f1_7:
    call    ReadInt                 #  12:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $891, %eax              #  13:     if     891 < 36571 goto 13_if_true
    movl    $36571, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_13_if_true        
    jmp     l_f1_14_if_false        #  14:     goto   14_if_false
l_f1_13_if_true:
    jmp     l_f1_12                 #  16:     goto   12
l_f1_14_if_false:
l_f1_12:
    jmp     l_f1_2_while_cond       #  19:     goto   2_while_cond
l_f1_17_while_cond:
    call    dummyCHARfunc           #  21:     call   t3 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  22:     if     t3 = 98 goto 18_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_18_while_body     
    jmp     l_f1_16                 #  23:     goto   16
l_f1_18_while_body:
    jmp     l_f1_17_while_cond      #  25:     goto   17_while_cond
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 76 of <array 49 of <array 13 of <array 86 of <char>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
l_f2_4_while_cond:
    movl    $78121, %eax            #   1:     assign v1 <- 78121
    movl    %eax, -20(%ebp)        
    jmp     l_f2_4_while_cond       #   2:     goto   4_while_cond
    jmp     l_f2_0                  #   3:     goto   0
l_f2_0:
    leal    _str_1, %eax            #   5:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   7:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f2_exit              

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 70 of <array 89 of <array 82 of <array 63 of <array 84 of <char>>>>>>> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #   1:     call   WriteLn
l_test_3_while_cond:
    movl    $100, %eax              #   3:     if     100 # 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_4_while_body    
    jmp     l_test_2                #   4:     goto   2
l_test_4_while_body:
l_test_7_while_cond:
    movl    $41809, %eax            #   7:     if     41809 > 84548 goto 8_while_body
    movl    $84548, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_8_while_body    
    jmp     l_test_6                #   8:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  10:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    jmp     l_test_3_while_cond     #  13:     goto   3_while_cond
l_test_2:
    leal    v0, %eax                #  15:     &()    t1 <- v0
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t1
    pushl   %eax                   
    call    f1                      #  17:     call   f1
    addl    $4, %esp               

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
    .align   4
v0:                                 # <array 70 of <array 89 of <array 82 of <array 63 of <array 84 of <char>>>>>>
    .long    5
    .long   70
    .long   89
    .long   82
    .long   63
    .long   84
    .skip -1591496176








    # end of global data section
    #-----------------------------------------

    .end
##################################################
