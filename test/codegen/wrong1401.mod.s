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
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $98, %eax               #   0:     if     98 < 99 goto 1_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   4:     goto   5_while_cond
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_8_while_cond:
    call    dummyBOOLfunc           #   9:     call   t9 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     if     t9 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_7                  #  11:     goto   7
l_f0_10:
    jmp     l_f0_8_while_cond       #  13:     goto   8_while_cond
l_f0_7:
    movl    $0, %eax                #  15:     assign v2 <- 0
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 80 of <array 1 of <array 60 of <array 45 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #    -25(%ebp)   1  [ $v2       <char> %ebp-25 ]

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
    call    ReadInt                 #   0:     call   t9 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $70218, %eax            #   1:     param  0 <- 70218
    pushl   %eax                   
    call    f0                      #   2:     call   t10 <- f0
    addl    $4, %esp               
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   3:     assign v2 <- t10
    movb    %al, -25(%ebp)         
    call    dummyINTfunc            #   4:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
    #    -80(%ebp)   4  [ $t26      <int> %ebp-80 ]
    #    -81(%ebp)   1  [ $t9       <bool> %ebp-81 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 44 of <array 35 of <array 99 of <array 72 of <array 72 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 54 of <array 79 of <array 26 of <array 92 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 98 of <array 87 of <array 77 of <array 96 of <array 97 of <int>>>>>>> %ebp+20 ]
    #    -82(%ebp)   1  [ $v5       <char> %ebp-82 ]

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
    jmp     l_f2_6                  #   0:     goto   6
l_f2_6:
    jmp     l_f2_2                  #   2:     goto   2
    movl    $1, %eax                #   3:     assign t9 <- 1
    movb    %al, -81(%ebp)         
    jmp     l_f2_3                  #   4:     goto   3
l_f2_2:
    movl    $0, %eax                #   6:     assign t9 <- 0
    movb    %al, -81(%ebp)         
l_f2_3:
    movzbl  -81(%ebp), %eax         #   8:     assign v3 <- t9
    movb    %al, 16(%ebp)          
l_f2_10_while_cond:
    movl    $97, %eax               #  10:     if     97 # 98 goto 11_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_11_while_body     
    jmp     l_f2_9                  #  11:     goto   9
l_f2_11_while_body:
    movl    $60609, %eax            #  13:     if     60609 >= 77983 goto 14
    movl    $77983, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_14                
    jmp     l_f2_15                 #  14:     goto   15
l_f2_14:
    movl    $1, %eax                #  16:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_16                 #  17:     goto   16
l_f2_15:
    movl    $0, %eax                #  19:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_16:
    movzbl  -13(%ebp), %eax         #  21:     return t10
    jmp     l_f2_exit              
l_f2_19_while_cond:
    movl    $97, %eax               #  23:     if     97 <= 97 goto 20_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_20_while_body     
    jmp     l_f2_18                 #  24:     goto   18
l_f2_20_while_body:
    jmp     l_f2_19_while_cond      #  26:     goto   19_while_cond
l_f2_18:
    movl    $100, %eax              #  28:     if     100 >= 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  29:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  31:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_10_while_cond      #  34:     goto   10_while_cond
l_f2_9:
l_f2_27_while_cond:
    movl    $2, %eax                #  37:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  38:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  39:     call   t11 <- DIM
    addl    $8, %esp               
    movl    %eax, -20(%ebp)        
    movl    $70342, %eax            #  40:     mul    t12 <- 70342, t11
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  41:     add    t13 <- t12, 44265
    movl    $44265, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $3, %eax                #  42:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  43:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  44:     call   t14 <- DIM
    addl    $8, %esp               
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #  45:     mul    t15 <- t13, t14
    movl    -32(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  46:     add    t16 <- t15, 57407
    movl    $57407, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    $4, %eax                #  47:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  48:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  49:     call   t17 <- DIM
    addl    $8, %esp               
    movl    %eax, -44(%ebp)        
    movl    -40(%ebp), %eax         #  50:     mul    t18 <- t16, t17
    movl    -44(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  51:     add    t19 <- t18, 54291
    movl    $54291, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    $5, %eax                #  52:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  53:     param  0 <- v2
    pushl   %eax                   
    call    DIM                     #  54:     call   t20 <- DIM
    addl    $8, %esp               
    movl    %eax, -56(%ebp)        
    movl    -52(%ebp), %eax         #  55:     mul    t21 <- t19, t20
    movl    -56(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  56:     add    t22 <- t21, 7983
    movl    $7983, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  57:     mul    t23 <- t22, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    12(%ebp), %eax          #  58:     param  0 <- v2
    pushl   %eax                   
    call    DOFS                    #  59:     call   t24 <- DOFS
    addl    $4, %esp               
    movl    %eax, -72(%ebp)        
    movl    -68(%ebp), %eax         #  60:     add    t25 <- t23, t24
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    12(%ebp), %eax          #  61:     add    t26 <- v2, t25
    movl    -76(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -80(%ebp)        
    movl    $99, %eax               #  62:     assign @t26 <- 99
    movl    -80(%ebp), %edi        
    movb    %al, (%edi)            
l_f2_31_while_cond:
    movl    $98, %eax               #  64:     if     98 = 98 goto 32_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_32_while_body     
    jmp     l_f2_30                 #  65:     goto   30
l_f2_32_while_body:
    jmp     l_f2_31_while_cond      #  67:     goto   31_while_cond
l_f2_30:
    jmp     l_f2_27_while_cond      #  69:     goto   27_while_cond

l_f2_exit:
    # epilogue
    addl    $72, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <char>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t8       <char> %ebp-45 ]

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
l_test_1_while_cond:
    movl    $39118, %eax            #   1:     mul    t0 <- 39118, 37133
    movl    $37133, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     sub    t1 <- t0, 98488
    movl    $98488, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t2 <- t1, 40717
    movl    $40717, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t3 <- t2, 45306
    movl    $45306, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $94626, %eax            #   5:     if     94626 >= t3 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    leal    _str_1, %eax            #  11:     &()    t4 <- _str_1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  12:     param  0 <- t4
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    call    ReadInt                 #  14:     call   t5 <- ReadInt
    movl    %eax, -36(%ebp)        
    jmp     l_test_5_while_cond     #  15:     goto   5_while_cond
    call    dummyCHARfunc           #  16:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    movzbl  -37(%ebp), %eax         #  17:     assign v0 <- t6
    movb    %al, v0                
    call    ReadInt                 #  18:     call   t7 <- ReadInt
    movl    %eax, -44(%ebp)        
    jmp     l_test_exit            
    jmp     l_test_13_if_true       #  20:     goto   13_if_true
l_test_13_if_true:
    movl    $271, %eax              #  22:     param  0 <- 271
    pushl   %eax                   
    call    f0                      #  23:     call   t8 <- f0
    addl    $4, %esp               
    movb    %al, -45(%ebp)         
    jmp     l_test_12               #  24:     goto   12
l_test_12:

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
