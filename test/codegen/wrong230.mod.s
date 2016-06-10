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
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t15      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t16      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t17      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t18      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t19      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t20      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t21      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t22      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t23      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t24      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t25      <int> %ebp-64 ]
    #    -68(%ebp)   4  [ $t26      <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t27      <int> %ebp-72 ]
    #    -76(%ebp)   4  [ $t28      <int> %ebp-76 ]
    #    -80(%ebp)   4  [ $t29      <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 4 of <array 10 of <array 10 of <array 5 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 1 of <array 2 of <array 9 of <array 5 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 6 of <array 1 of <array 2 of <array 4 of <array 2 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $68, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $53341, %eax            #   1:     if     53341 = 51385 goto 2_while_body
    movl    $51385, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
l_f0_5_while_cond:
    movl    $100, %eax              #   5:     if     100 < 100 goto 6_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    movl    $2, %eax                #  10:     param  1 <- 2
    pushl   %eax                   
    movl    12(%ebp), %eax          #  11:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  12:     call   t13 <- DIM
    addl    $8, %esp               
    movl    %eax, -16(%ebp)        
    movl    $95365, %eax            #  13:     mul    t14 <- 95365, t13
    movl    -16(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     add    t15 <- t14, 52305
    movl    $52305, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $3, %eax                #  15:     param  1 <- 3
    pushl   %eax                   
    movl    12(%ebp), %eax          #  16:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  17:     call   t16 <- DIM
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t17 <- t15, t16
    movl    -28(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  19:     add    t18 <- t17, 35636
    movl    $35636, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $4, %eax                #  20:     param  1 <- 4
    pushl   %eax                   
    movl    12(%ebp), %eax          #  21:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  22:     call   t19 <- DIM
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  23:     mul    t20 <- t18, t19
    movl    -40(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  24:     add    t21 <- t20, 33907
    movl    $33907, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $5, %eax                #  25:     param  1 <- 5
    pushl   %eax                   
    movl    12(%ebp), %eax          #  26:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  27:     call   t22 <- DIM
    addl    $8, %esp               
    movl    %eax, -52(%ebp)        
    movl    -48(%ebp), %eax         #  28:     mul    t23 <- t21, t22
    movl    -52(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  29:     add    t24 <- t23, 91191
    movl    $91191, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  30:     mul    t25 <- t24, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -64(%ebp)        
    movl    12(%ebp), %eax          #  31:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  32:     call   t26 <- DOFS
    addl    $4, %esp               
    movl    %eax, -68(%ebp)        
    movl    -64(%ebp), %eax         #  33:     add    t27 <- t25, t26
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movl    12(%ebp), %eax          #  34:     add    t28 <- v1, t27
    movl    -72(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -76(%ebp)        
    movl    $0, %eax                #  35:     assign @t28 <- 0
    movl    -76(%ebp), %edi        
    movb    %al, (%edi)            
    movl    $38533, %eax            #  36:     if     38533 <= 3714 goto 10_if_true
    movl    $3714, %ebx            
    cmpl    %ebx, %eax             
    jle     l_f0_10_if_true        
    jmp     l_f0_11_if_false        #  37:     goto   11_if_false
l_f0_10_if_true:
    jmp     l_f0_9                  #  39:     goto   9
l_f0_11_if_false:
l_f0_9:
l_f0_14_while_cond:
    jmp     l_f0_14_while_cond      #  43:     goto   14_while_cond
l_f0_17_while_cond:
    movl    $17024, %eax            #  45:     if     17024 >= 45762 goto 18_while_body
    movl    $45762, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_18_while_body     
    jmp     l_f0_16                 #  46:     goto   16
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  48:     goto   17_while_cond
l_f0_16:
    jmp     l_f0_1_while_cond       #  50:     goto   1_while_cond
l_f0_0:
    call    dummyINTfunc            #  52:     call   t29 <- dummyINTfunc
    movl    %eax, -80(%ebp)        
    movl    $99, %eax               #  53:     if     99 # 98 goto 22_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f0_22_if_true        
    jmp     l_f0_23_if_false        #  54:     goto   23_if_false
l_f0_22_if_true:
    movl    $378, %eax              #  56:     return 378
    jmp     l_f0_exit              
    movl    $99, %eax               #  57:     if     99 # 100 goto 27_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_27_if_true        
    jmp     l_f0_28_if_false        #  58:     goto   28_if_false
l_f0_27_if_true:
    jmp     l_f0_26                 #  60:     goto   26
l_f0_28_if_false:
l_f0_26:
    jmp     l_f0_21                 #  63:     goto   21
l_f0_23_if_false:
l_f0_21:

l_f0_exit:
    # epilogue
    addl    $68, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t14      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t15      <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 2 of <array 1 of <array 3 of <array 7 of <array 7 of <int>>>>>>> %ebp+8 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <char> %ebp-29 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $6740, %eax             #   0:     div    t13 <- 6740, 66386
    movl    $66386, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t14 <- t13, 10700
    movl    $10700, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     assign v1 <- t14
    movl    %eax, -28(%ebp)        
    movl    $100, %eax              #   3:     assign v2 <- 100
    movb    %al, -29(%ebp)         
    movl    $99, %eax               #   4:     if     99 >= 99 goto 7
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_7                 
    jmp     l_f1_4                  #   5:     goto   4
l_f1_7:
    jmp     l_f1_4                  #   7:     goto   4
    jmp     l_f1_4                  #   8:     goto   4
    movl    $1, %eax                #   9:     assign t15 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_5                  #  10:     goto   5
l_f1_4:
    movl    $0, %eax                #  12:     assign t15 <- 0
    movb    %al, -21(%ebp)         
l_f1_5:
    movzbl  -21(%ebp), %eax         #  14:     return t15
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t13      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <char> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 1 of <array 8 of <array 7 of <array 4 of <char>>>>>>> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t13 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   1:     return 100
    jmp     l_f2_exit              
l_f2_3_while_cond:
    movl    $0, %eax                #   3:     if     0 # 0 goto 4_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_4_while_body      
    jmp     l_f2_2                  #   4:     goto   2
l_f2_4_while_body:
l_f2_7_while_cond:
    call    dummyCHARfunc           #   7:     call   t14 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   8:     if     t14 = 98 goto 8_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #   9:     goto   6
l_f2_8_while_body:
    jmp     l_f2_7_while_cond       #  11:     goto   7_while_cond
l_f2_6:
    jmp     l_f2_3_while_cond       #  13:     goto   3_while_cond
l_f2_2:

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t10      <ptr(4) to <array 3 of <array 1 of <array 2 of <array 9 of <array 5 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t11      <ptr(4) to <array 2 of <array 4 of <array 10 of <array 10 of <array 5 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t12      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t4       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t5       <bool> %ebp-42 ]
    #    -48(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 1 of <array 3 of <array 7 of <array 7 of <int>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $t7       <bool> %ebp-49 ]
    #    -50(%ebp)   1  [ $t8       <bool> %ebp-50 ]
    #    -56(%ebp)   4  [ $t9       <ptr(4) to <array 6 of <array 1 of <array 2 of <array 4 of <array 2 of <int>>>>>>> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
    jmp     l_test_2_while_body     #   2:     goto   2_while_body
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   6:     goto   8_while_cond
    jmp     l_test_1_while_cond     #   7:     goto   1_while_cond
l_test_0:
    jmp     l_test_12_if_false      #   9:     goto   12_if_false
    jmp     l_test_exit            
    jmp     l_test_10               #  11:     goto   10
l_test_12_if_false:
l_test_10:
    call    dummyBOOLfunc           #  14:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $96828, %eax            #  15:     mul    t1 <- 96828, 10622
    movl    $10622, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     sub    t2 <- t1, 12200
    movl    $12200, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     sub    t3 <- t2, 75955
    movl    $75955, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  18:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyCHARfunc           #  19:     call   t4 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  20:     if     t4 = 97 goto 17
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_17              
    jmp     l_test_18               #  21:     goto   18
l_test_17:
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_19               #  24:     goto   19
l_test_18:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -42(%ebp)         
l_test_19:
    movzbl  -42(%ebp), %eax         #  28:     assign v1 <- t5
    movb    %al, v1                
    leal    v5, %eax                #  29:     &()    t6 <- v5
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  30:     param  0 <- t6
    pushl   %eax                   
    call    f1                      #  31:     call   t7 <- f1
    addl    $4, %esp               
    movb    %al, -49(%ebp)         
    movzbl  -49(%ebp), %eax         #  32:     if     t7 = 1 goto 22
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_22              
l_test_22:
    movl    $1, %eax                #  34:     assign t8 <- 1
    movb    %al, -50(%ebp)         
    jmp     l_test_24               #  35:     goto   24
    movl    $0, %eax                #  36:     assign t8 <- 0
    movb    %al, -50(%ebp)         
l_test_24:
    movzbl  -50(%ebp), %eax         #  38:     param  3 <- t8
    pushl   %eax                   
    leal    v4, %eax                #  39:     &()    t9 <- v4
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  40:     param  2 <- t9
    pushl   %eax                   
    leal    v3, %eax                #  41:     &()    t10 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  42:     param  1 <- t10
    pushl   %eax                   
    leal    v2, %eax                #  43:     &()    t11 <- v2
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  44:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  45:     call   t12 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v1:                                 # <bool>
    .skip    1
    .align   4
v2:                                 # <array 2 of <array 4 of <array 10 of <array 10 of <array 5 of <char>>>>>>
    .long    5
    .long    2
    .long    4
    .long   10
    .long   10
    .long    5
    .skip 4000
v3:                                 # <array 3 of <array 1 of <array 2 of <array 9 of <array 5 of <bool>>>>>>
    .long    5
    .long    3
    .long    1
    .long    2
    .long    9
    .long    5
    .skip  270
    .align   4
v4:                                 # <array 6 of <array 1 of <array 2 of <array 4 of <array 2 of <int>>>>>>
    .long    5
    .long    6
    .long    1
    .long    2
    .long    4
    .long    2
    .skip  384
v5:                                 # <array 2 of <array 1 of <array 3 of <array 7 of <array 7 of <int>>>>>>
    .long    5
    .long    2
    .long    1
    .long    3
    .long    7
    .long    7
    .skip 1176








    # end of global data section
    #-----------------------------------------

    .end
##################################################
