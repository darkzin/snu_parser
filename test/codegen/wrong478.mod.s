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
    #    -45(%ebp)   1  [ $t18      <bool> %ebp-45 ]
    #    -46(%ebp)   1  [ $t19      <bool> %ebp-46 ]
    #    -52(%ebp)   4  [ $t2       <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t20      <char> %ebp-53 ]
    #    -60(%ebp)   4  [ $t3       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t4       <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t5       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t6       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t7       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t8       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 1 of <array 3 of <array 7 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 4 of <array 10 of <array 7 of <array 8 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]
    #    -85(%ebp)   1  [ $v4       <char> %ebp-85 ]

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
    movl    $2, %eax                #   0:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #   1:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   2:     call   t2 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    $55579, %eax            #   3:     mul    t3 <- 55579, t2
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #   4:     add    t4 <- t3, 9877
    movl    $9877, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    $3, %eax                #   5:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #   6:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   7:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #   8:     mul    t6 <- t4, t5
    movl    -68(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #   9:     add    t7 <- t6, 61841
    movl    $61841, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $4, %eax                #  10:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    -76(%ebp), %eax         #  13:     mul    t9 <- t7, t8
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  14:     add    t10 <- t9, 51011
    movl    $51011, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $5, %eax                #  15:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  18:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     add    t13 <- t12, 29154
    movl    $29154, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     mul    t14 <- t13, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  22:     call   t15 <- DOFS
    addl    $4, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  23:     add    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    12(%ebp), %eax          #  24:     add    t17 <- v1, t16
    movl    -40(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $98, %eax               #  25:     assign @t17 <- 98
    movl    -44(%ebp), %edi        
    movb    %al, (%edi)            
    jmp     l_f0_4                  #  26:     goto   4
l_f0_4:
l_f0_8_while_cond:
    movl    $1, %eax                #  29:     if     1 # 0 goto 9_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_9_while_body      
    jmp     l_f0_7                  #  30:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  32:     goto   8_while_cond
l_f0_7:
    movl    $0, %eax                #  34:     if     0 = 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  35:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  37:     goto   11
l_f0_13_if_false:
l_f0_11:
    movl    $0, %eax                #  40:     return 0
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  41:     goto   1
l_f0_1:
l_f0_17_while_cond:
    movl    $75073, %eax            #  44:     if     75073 < 36975 goto 18_while_body
    movl    $36975, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_18_while_body     
    jmp     l_f0_16                 #  45:     goto   16
l_f0_18_while_body:
    movl    $0, %eax                #  47:     return 0
    jmp     l_f0_exit              
    movl    $39154, %eax            #  48:     if     39154 > 57849 goto 22
    movl    $57849, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_22                
    jmp     l_f0_23                 #  49:     goto   23
l_f0_22:
    movl    $1, %eax                #  51:     assign t18 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_24                 #  52:     goto   24
l_f0_23:
    movl    $0, %eax                #  54:     assign t18 <- 0
    movb    %al, -45(%ebp)         
l_f0_24:
    movzbl  -45(%ebp), %eax         #  56:     assign v3 <- t18
    movb    %al, 20(%ebp)          
    movl    $7961, %eax             #  57:     if     7961 = 12080 goto 27
    movl    $12080, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_27                
    jmp     l_f0_28                 #  58:     goto   28
l_f0_27:
    movl    $1, %eax                #  60:     assign t19 <- 1
    movb    %al, -46(%ebp)         
    jmp     l_f0_29                 #  61:     goto   29
l_f0_28:
    movl    $0, %eax                #  63:     assign t19 <- 0
    movb    %al, -46(%ebp)         
l_f0_29:
    movzbl  -46(%ebp), %eax         #  65:     return t19
    jmp     l_f0_exit              
l_f0_32_while_cond:
    movl    $38746, %eax            #  67:     if     38746 > 39687 goto 33_while_body
    movl    $39687, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_33_while_body     
    jmp     l_f0_31                 #  68:     goto   31
l_f0_33_while_body:
    jmp     l_f0_32_while_cond      #  70:     goto   32_while_cond
l_f0_31:
    call    dummyCHARfunc           #  72:     call   t20 <- dummyCHARfunc
    movb    %al, -53(%ebp)         
    movl    $100, %eax              #  73:     if     100 <= 98 goto 37_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_37_if_true        
    jmp     l_f0_38_if_false        #  74:     goto   38_if_false
l_f0_37_if_true:
    jmp     l_f0_36                 #  76:     goto   36
l_f0_38_if_false:
l_f0_36:
    jmp     l_f0_17_while_cond      #  79:     goto   17_while_cond
l_f0_16:

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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]

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
    movl    $84552, %eax            #   0:     sub    t2 <- 84552, 26197
    movl    $26197, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     add    t3 <- t2, 18353
    movl    $18353, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     add    t4 <- t3, 46968
    movl    $46968, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t4
    movl    %eax, 12(%ebp)         
    movl    $25951, %eax            #   4:     div    t5 <- 25951, 71149
    movl    $71149, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t6 <- t5, 83853
    movl    $83853, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t7 <- t6, 96431
    movl    $96431, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     sub    t8 <- t7, 38159
    movl    $38159, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     sub    t9 <- t8, 65441
    movl    $65441, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   9:     return t9
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_4_while_body       #  11:     goto   4_while_body
    jmp     l_f1_2                  #  12:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #  14:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 10 of <array 6 of <array 2 of <array 1 of <char>>>>>>> %ebp+12 ]
    #    -28(%ebp)   4  [ $v2       <int> %ebp-28 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     if     98 <= t2 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t3
    jmp     l_f2_exit              
    leal    _str_1, %eax            #  10:     &()    t4 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  12:     call   WriteStr
    addl    $4, %esp               
    movl    $20385, %eax            #  13:     add    t5 <- 20385, 19342
    movl    $19342, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     assign v2 <- t5
    movl    %eax, -28(%ebp)        

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]

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
    movl    $99, %eax               #   1:     if     99 < t0 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   2:     goto   2
l_test_1:
    movl    $1, %eax                #   4:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_3                #   5:     goto   3
l_test_2:
    movl    $0, %eax                #   7:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_3:
    movzbl  -14(%ebp), %eax         #   9:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_exit            

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

    # scope: test
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
