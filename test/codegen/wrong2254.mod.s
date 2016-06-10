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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    movl    $28778, %eax            #   2:     if     28778 >= 27895 goto 3_while_body
    movl    $27895, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_3_while_body      
    jmp     l_f0_1                  #   3:     goto   1
l_f0_3_while_body:
l_f0_6_while_cond:
    movl    $100, %eax              #   6:     if     100 # 98 goto 7_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_7_while_body      
    jmp     l_f0_5                  #   7:     goto   5
l_f0_7_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_10                 #  10:     goto   10
l_f0_10:
    jmp     l_f0_15_if_false        #  12:     goto   15_if_false
    jmp     l_f0_13                 #  13:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_6_while_cond       #  16:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_2_while_cond       #  18:     goto   2_while_cond
l_f0_1:
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $v0       <bool> %ebp-17 ]

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
l_f1_1_while_cond:
    movl    $38312, %eax            #   1:     if     38312 > 69649 goto 2_while_body
    movl    $69649, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $1, %eax                #   4:     assign v0 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
l_f1_6_while_cond:
    jmp     l_f1_7_while_body       #   8:     goto   7_while_body
    jmp     l_f1_5                  #   9:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  11:     goto   6_while_cond
l_f1_5:
l_f1_12_while_cond:
    movl    $100, %eax              #  14:     if     100 < 98 goto 13_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_13_while_body     
    jmp     l_f1_11                 #  15:     goto   11
l_f1_13_while_body:
    call    dummyINTfunc            #  17:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  18:     param  0 <- t2
    pushl   %eax                   
    call    WriteInt                #  19:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_12_while_cond      #  20:     goto   12_while_cond
l_f1_11:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t15      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t16      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t17      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t18      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -53(%ebp)   1  [ $t2       <bool> %ebp-53 ]
    #    -60(%ebp)   4  [ $t20      <int> %ebp-60 ]
    #    -61(%ebp)   1  [ $t3       <char> %ebp-61 ]
    #    -68(%ebp)   4  [ $t4       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t5       <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t6       <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t7       <int> %ebp-80 ]
    #    -84(%ebp)   4  [ $t8       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t9       <int> %ebp-88 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 71 of <array 52 of <array 9 of <array 28 of <array 78 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -89(%ebp)   1  [ $v2       <bool> %ebp-89 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $80, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $20, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $1, %eax                #   0:     assign v2 <- 1
    movb    %al, -89(%ebp)         
    movl    $9967, %eax             #   1:     if     9967 # 35145 goto 2
    movl    $35145, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -53(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -53(%ebp)         
l_f2_4:
    movzbl  -53(%ebp), %eax         #   9:     assign v2 <- t2
    movb    %al, -89(%ebp)         
    call    dummyCHARfunc           #  10:     call   t3 <- dummyCHARfunc
    movb    %al, -61(%ebp)         
    movl    $2716, %eax             #  11:     add    t4 <- 2716, 43540
    movl    $43540, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    $2, %eax                #  12:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  13:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  14:     call   t5 <- DIM
    addl    $8, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  15:     mul    t6 <- t4, t5
    movl    -72(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -76(%ebp)        
    movl    -76(%ebp), %eax         #  16:     add    t7 <- t6, 29383
    movl    $29383, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $3, %eax                #  17:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  18:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  19:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -84(%ebp)        
    movl    -80(%ebp), %eax         #  20:     mul    t9 <- t7, t8
    movl    -84(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  21:     add    t10 <- t9, 60383
    movl    $60383, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $4, %eax                #  22:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  23:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  24:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #  25:     mul    t12 <- t10, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     add    t13 <- t12, 78067
    movl    $78067, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $5, %eax                #  27:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  28:     param  0 <- v0
    pushl   %eax                   
    call    DIM                     #  29:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  30:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  31:     add    t16 <- t15, 19014
    movl    $19014, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  32:     mul    t17 <- t16, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    8(%ebp), %eax           #  33:     param  0 <- v0
    pushl   %eax                   
    call    DOFS                    #  34:     call   t18 <- DOFS
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    8(%ebp), %eax           #  36:     add    t20 <- v0, t19
    movl    -52(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movzbl  -61(%ebp), %eax         #  37:     assign @t20 <- t3
    movl    -60(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $80, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   3:     call   WriteChar
    addl    $4, %esp               
l_test_3_while_cond:
    movl    $100, %eax              #   5:     if     100 > 98 goto 4_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
    jmp     l_test_exit            
    movl    $48115, %eax            #   9:     assign v0 <- 48115
    movl    %eax, v0               
    jmp     l_test_3_while_cond     #  10:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    movl    $97, %eax               #  13:     if     97 <= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  14:     goto   11_if_false
l_test_10_if_true:
l_test_14_while_cond:
    movl    $34623, %eax            #  17:     sub    t1 <- 34623, 92417
    movl    $92417, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $29286, %eax            #  18:     if     29286 # t1 goto 15_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  19:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  21:     goto   14_while_cond
l_test_13:
    jmp     l_test_9                #  23:     goto   9
l_test_11_if_false:
l_test_9:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
