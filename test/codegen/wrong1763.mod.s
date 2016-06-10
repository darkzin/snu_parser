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
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]

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
    movl    $100, %eax              #   2:     if     100 > 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_5_while_body      
    jmp     l_f0_3                  #   3:     goto   3
l_f0_5_while_body:
    jmp     l_f0_4_while_cond       #   5:     goto   4_while_cond
l_f0_3:
    jmp     l_f0_0                  #   7:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_13                 #  10:     goto   13
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_14                 #  12:     goto   14
l_f0_13:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f0_14:
    jmp     l_f0_17                 #  16:     goto   17
    jmp     l_f0_17                 #  17:     goto   17
    movl    $1, %eax                #  18:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_18                 #  19:     goto   18
l_f0_17:
    movl    $0, %eax                #  21:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f0_18:
    movzbl  -13(%ebp), %eax         #  23:     if     t4 = t5 goto 8
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_8                 
    jmp     l_f0_9                  #  24:     goto   9
l_f0_8:
    movl    $1, %eax                #  26:     assign t6 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_10                 #  27:     goto   10
l_f0_9:
    movl    $0, %eax                #  29:     assign t6 <- 0
    movb    %al, -15(%ebp)         
l_f0_10:
    movzbl  -15(%ebp), %eax         #  31:     return t6
    jmp     l_f0_exit              
    call    ReadInt                 #  32:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <char> %ebp+16 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 < 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_2_if_true         
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
l_f1_2_if_true:
    jmp     l_f1_1                  #   5:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_6_while_cond:
    movl    $97, %eax               #   9:     if     97 # 99 goto 7_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_7_while_body      
    jmp     l_f1_5                  #  10:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #  12:     goto   6_while_cond
l_f1_5:

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
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t4       <bool> %ebp-77 ]
    #    -84(%ebp)   4  [ $t5       <int> %ebp-84 ]
    #    -88(%ebp)   4  [ $t6       <int> %ebp-88 ]
    #    -89(%ebp)   1  [ $t7       <bool> %ebp-89 ]
    #    -96(%ebp)   4  [ $t8       <int> %ebp-96 ]
    #   -100(%ebp)   4  [ $t9       <int> %ebp-100 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 25 of <array 38 of <array 33 of <array 83 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 51 of <array 4 of <array 39 of <array 54 of <array 43 of <int>>>>>>> %ebp+16 ]
    #   -101(%ebp)   1  [ $v5       <bool> %ebp-101 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $92, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $23, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f2_1_while_cond:
    jmp     l_f2_2_while_body       #   1:     goto   2_while_body
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
    jmp     l_f2_2_while_body       #   3:     goto   2_while_body
    jmp     l_f2_2_while_body       #   4:     goto   2_while_body
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   6:     goto   1_while_cond
    movl    $98, %eax               #   7:     param  2 <- 98
    pushl   %eax                   
    movl    $97, %eax               #   8:     param  1 <- 97
    pushl   %eax                   
    jmp     l_f2_12                 #   9:     goto   12
    jmp     l_f2_12                 #  10:     goto   12
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -77(%ebp)         
    jmp     l_f2_13                 #  12:     goto   13
l_f2_12:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -77(%ebp)         
l_f2_13:
    movzbl  -77(%ebp), %eax         #  16:     param  0 <- t4
    pushl   %eax                   
    call    f1                      #  17:     call   t5 <- f1
    addl    $12, %esp              
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  18:     div    t6 <- t5, 9932
    movl    $9932, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -88(%ebp)        
    movl    -88(%ebp), %eax         #  19:     return t6
    jmp     l_f2_exit              
    movl    $1737, %eax             #  20:     if     1737 > 95592 goto 16
    movl    $95592, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_16                
    jmp     l_f2_17                 #  21:     goto   17
l_f2_16:
    movl    $1, %eax                #  23:     assign t7 <- 1
    movb    %al, -89(%ebp)         
    jmp     l_f2_18                 #  24:     goto   18
l_f2_17:
    movl    $0, %eax                #  26:     assign t7 <- 0
    movb    %al, -89(%ebp)         
l_f2_18:
    movl    $2, %eax                #  28:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  29:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  30:     call   t8 <- DIM
    addl    $8, %esp               
    movl    %eax, -96(%ebp)        
    movl    $83284, %eax            #  31:     mul    t9 <- 83284, t8
    movl    -96(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -100(%ebp)       
    movl    $90554, %eax            #  32:     div    t10 <- 90554, 71140
    movl    $71140, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $56933, %eax            #  33:     add    t11 <- 56933, t10
    movl    -16(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -100(%ebp), %eax        #  34:     add    t12 <- t9, t11
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  35:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  36:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  37:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  38:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  39:     add    t15 <- t14, 14134
    movl    $14134, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  40:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  41:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  42:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  43:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  44:     add    t18 <- t17, 23330
    movl    $23330, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  45:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  46:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  47:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  48:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  49:     add    t21 <- t20, 22469
    movl    $22469, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  50:     mul    t22 <- t21, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  51:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  52:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  53:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  54:     add    t25 <- v2, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movzbl  -89(%ebp), %eax         #  55:     assign @t25 <- t7
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            

l_f2_exit:
    # epilogue
    addl    $92, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    movl    $99, %eax               #   1:     assign v0 <- 99
    movb    %al, v0                
    call    WriteLn                 #   2:     call   WriteLn
    call    dummyCHARfunc           #   3:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_0                #   4:     goto   0
l_test_2_if_false:
l_test_0:
    call    dummyBOOLfunc           #   7:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     assign v1 <- t1
    movb    %al, v1                
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
    movl    $17533, %eax            #  11:     assign v2 <- 17533
    movl    %eax, v2               
    movl    $98, %eax               #  12:     if     98 >= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_13_if_true      
    jmp     l_test_14_if_false      #  13:     goto   14_if_false
l_test_13_if_true:
    jmp     l_test_12               #  15:     goto   12
l_test_14_if_false:
l_test_12:
    jmp     l_test_8                #  18:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $99, %eax               #  21:     if     99 <= 98 goto 17_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_17_if_true      
    jmp     l_test_18_if_false      #  22:     goto   18_if_false
l_test_17_if_true:
    call    dummyCHARfunc           #  24:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_test_22_while_cond:
    jmp     l_test_21               #  26:     goto   21
    jmp     l_test_22_while_cond    #  27:     goto   22_while_cond
l_test_21:
    jmp     l_test_exit            
    jmp     l_test_16               #  30:     goto   16
l_test_18_if_false:
l_test_16:
l_test_26_while_cond:
    call    ReadInt                 #  34:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $89289, %eax            #  35:     if     89289 >= t3 goto 27_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_27_while_body   
    jmp     l_test_25               #  36:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  38:     goto   26_while_cond
l_test_25:

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
