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
    #    -52(%ebp)   4  [ $t19      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t20      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t21      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t22      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t23      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t24      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t25      <int> %ebp-76 ]
    #    -77(%ebp)   1  [ $t6       <char> %ebp-77 ]
    #    -78(%ebp)   1  [ $t7       <bool> %ebp-78 ]
    #    -79(%ebp)   1  [ $t8       <char> %ebp-79 ]
    #    -84(%ebp)   4  [ $t9       <int> %ebp-84 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 2 of <array 5 of <array 7 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <int> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $72, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $18, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -77(%ebp)         
    movl    $100, %eax              #   1:     if     100 < 97 goto 5_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
l_f0_5_if_true:
    call    dummyBOOLfunc           #   4:     call   t7 <- dummyBOOLfunc
    movb    %al, -78(%ebp)         
    jmp     l_f0_4                  #   5:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_0                  #   8:     goto   0
l_f0_0:
    call    dummyCHARfunc           #  10:     call   t8 <- dummyCHARfunc
    movb    %al, -79(%ebp)         
    movzbl  -79(%ebp), %eax         #  11:     if     t8 >= 97 goto 10_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  12:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  14:     goto   9
l_f0_11_if_false:
l_f0_9:
    movl    $34190, %eax            #  17:     mul    t9 <- 34190, 1093
    movl    $1093, %ebx            
    imull   %ebx                   
    movl    %eax, -84(%ebp)        
    movl    -84(%ebp), %eax         #  18:     if     t9 > 31641 goto 14_if_true
    movl    $31641, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  19:     goto   15_if_false
l_f0_14_if_true:
    movl    $2, %eax                #  21:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  23:     call   t10 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $30089, %eax            #  24:     mul    t11 <- 30089, t10
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     add    t12 <- t11, 24048
    movl    $24048, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  26:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #  27:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  28:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  29:     mul    t14 <- t12, t13
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  30:     add    t15 <- t14, 34809
    movl    $34809, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  31:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  32:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  33:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  34:     mul    t17 <- t15, t16
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  35:     add    t18 <- t17, 87547
    movl    $87547, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  36:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  37:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  38:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  39:     mul    t20 <- t18, t19
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     add    t21 <- t20, 27623
    movl    $27623, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  41:     mul    t22 <- t21, 4
    movl    $4, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    8(%ebp), %eax           #  42:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  43:     call   t23 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  44:     add    t24 <- t22, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    8(%ebp), %eax           #  45:     add    t25 <- v1, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $54584, %eax            #  46:     assign @t25 <- 54584
    movl    -76(%ebp), %edi        
    movl    %eax, (%edi)           
l_f0_19_while_cond:
    movl    $100, %eax              #  48:     if     100 = 98 goto 20_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_20_while_body     
    jmp     l_f0_18                 #  49:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  51:     goto   19_while_cond
l_f0_18:
l_f0_23_while_cond:
    jmp     l_f0_23_while_cond      #  54:     goto   23_while_cond
    jmp     l_f0_13                 #  55:     goto   13
l_f0_15_if_false:
l_f0_13:

l_f0_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t6       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t7       <char> %ebp-17 ]

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
    movl    $65182, %eax            #   1:     if     65182 <= 4964 goto 2_while_body
    movl    $4964, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    movl    $98, %eax               #   4:     if     98 <= 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   5:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   7:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_1_while_cond       #  10:     goto   1_while_cond
l_f1_0:
    call    ReadInt                 #  12:     call   t6 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f1_13_while_cond:
    jmp     l_f1_12                 #  14:     goto   12
    jmp     l_f1_13_while_cond      #  15:     goto   13_while_cond
l_f1_12:
    call    dummyCHARfunc           #  17:     call   t7 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f1_9                  #  18:     goto   9
l_f1_9:

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]

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
    movl    $98, %eax               #   1:     if     98 # 97 goto 2_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
l_f2_8_while_cond:
    jmp     l_f2_8_while_cond       #   7:     goto   8_while_cond
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    call    dummyCHARfunc           #  10:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     assign v1 <- t6
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  12:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  13:     return t7
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 # t0 goto 1
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_1               
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
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_7                #  11:     goto   7
    jmp     l_test_7                #  12:     goto   7
    jmp     l_test_7                #  13:     goto   7
l_test_7:
    movl    $1, %eax                #  15:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_9                #  16:     goto   9
    movl    $0, %eax                #  17:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_9:
    movzbl  -16(%ebp), %eax         #  19:     assign v0 <- t3
    movb    %al, v0                
    movl    $98, %eax               #  20:     assign v1 <- 98
    movb    %al, v1                
    call    dummyCHARfunc           #  21:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  22:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               
    call    dummyCHARfunc           #  24:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         

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
v0:                                 # <bool>
    .skip    1
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
