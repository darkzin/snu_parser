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
    #    -73(%ebp)   1  [ $t25      <char> %ebp-73 ]
    #    -74(%ebp)   1  [ $t8       <char> %ebp-74 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 4 of <array 3 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 6 of <array 1 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 7 of <array 2 of <array 7 of <array 1 of <array 10 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 6 of <array 10 of <array 8 of <array 4 of <bool>>>>>>> %ebp+20 ]
    #    -81(%ebp)   1  [ $v5       <char> %ebp-81 ]

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
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -74(%ebp)         
    movl    $2, %eax                #   1:     param  1 <- 2
    pushl   %eax                   
    movl    8(%ebp), %eax           #   2:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   3:     call   t9 <- DIM
    addl    $8, %esp               
    movl    %eax, -80(%ebp)        
    movl    $62429, %eax            #   4:     mul    t10 <- 62429, t9
    movl    -80(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     add    t11 <- t10, 10458
    movl    $10458, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $3, %eax                #   6:     param  1 <- 3
    pushl   %eax                   
    movl    8(%ebp), %eax           #   7:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #   8:     call   t12 <- DIM
    addl    $8, %esp               
    movl    %eax, -24(%ebp)        
    movl    -20(%ebp), %eax         #   9:     mul    t13 <- t11, t12
    movl    -24(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  10:     add    t14 <- t13, 31315
    movl    $31315, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $4, %eax                #  11:     param  1 <- 4
    pushl   %eax                   
    movl    8(%ebp), %eax           #  12:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  13:     call   t15 <- DIM
    addl    $8, %esp               
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  14:     mul    t16 <- t14, t15
    movl    -36(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  15:     add    t17 <- t16, 79082
    movl    $79082, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $5, %eax                #  16:     param  1 <- 5
    pushl   %eax                   
    movl    8(%ebp), %eax           #  17:     param  0 <- v1
    pushl   %eax                   
    call    DIM                     #  18:     call   t18 <- DIM
    addl    $8, %esp               
    movl    %eax, -48(%ebp)        
    movl    -44(%ebp), %eax         #  19:     mul    t19 <- t17, t18
    movl    -48(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  20:     add    t20 <- t19, 15677
    movl    $15677, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  21:     mul    t21 <- t20, 1
    movl    $1, %ebx               
    imull   %ebx                   
    movl    %eax, -60(%ebp)        
    movl    8(%ebp), %eax           #  22:     param  0 <- v1
    pushl   %eax                   
    call    DOFS                    #  23:     call   t22 <- DOFS
    addl    $4, %esp               
    movl    %eax, -64(%ebp)        
    movl    -60(%ebp), %eax         #  24:     add    t23 <- t21, t22
    movl    -64(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -68(%ebp)        
    movl    8(%ebp), %eax           #  25:     add    t24 <- v1, t23
    movl    -68(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -72(%ebp)        
    movzbl  -74(%ebp), %eax         #  26:     assign @t24 <- t8
    movl    -72(%ebp), %edi        
    movb    %al, (%edi)            
    call    dummyCHARfunc           #  27:     call   t25 <- dummyCHARfunc
    movb    %al, -73(%ebp)         
    movl    $97, %eax               #  28:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  29:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 6 of <array 1 of <array 5 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]

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
l_f1_1_while_cond:
l_f1_4_while_cond:
    call    dummyBOOLfunc           #   2:     call   t8 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t8 = 1 goto 5_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_while_body      
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   6:     goto   4_while_cond
l_f1_3:
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
    jmp     l_f1_7_if_true          #   9:     goto   7_if_true
l_f1_7_if_true:
l_f1_11_while_cond:
    movl    $100, %eax              #  12:     if     100 >= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  13:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  15:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_6                  #  17:     goto   6
l_f1_6:
    jmp     l_f1_16_if_false        #  19:     goto   16_if_false
    movl    $99, %eax               #  20:     if     99 > 97 goto 18
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_18                
    jmp     l_f1_19                 #  21:     goto   19
l_f1_18:
    movl    $1, %eax                #  23:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f1_20                 #  24:     goto   20
l_f1_19:
    movl    $0, %eax                #  26:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f1_20:
    movzbl  -15(%ebp), %eax         #  28:     return t9
    jmp     l_f1_exit              
    movl    $19727, %eax            #  29:     if     19727 <= 31798 goto 23_if_true
    movl    $31798, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  30:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  32:     goto   22
l_f1_24_if_false:
l_f1_22:
    call    dummyBOOLfunc           #  35:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_29_if_false        #  36:     goto   29_if_false
    jmp     l_f1_27                 #  37:     goto   27
l_f1_29_if_false:
l_f1_27:
    jmp     l_f1_14                 #  40:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 1 of <array 6 of <array 1 of <array 5 of <array 7 of <char>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t8       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 2 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>>> %ebp-24 ]
    #   -260(%ebp)  234  [ $v1       <array 1 of <array 6 of <array 1 of <array 5 of <array 7 of <char>>>>>> %ebp-260 ]
    #   -2300(%ebp)  2040  [ $v2       <array 2 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>> %ebp-2300 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $2288, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $572, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-260(%ebp)           # local array 'v1': 5 dimensions
    movl    $1,-256(%ebp)           #   dimension 1: 1 elements
    movl    $6,-252(%ebp)           #   dimension 2: 6 elements
    movl    $1,-248(%ebp)           #   dimension 3: 1 elements
    movl    $5,-244(%ebp)           #   dimension 4: 5 elements
    movl    $7,-240(%ebp)           #   dimension 5: 7 elements
    movl    $5,-2300(%ebp)          # local array 'v2': 5 dimensions
    movl    $2,-2296(%ebp)          #   dimension 1: 2 elements
    movl    $6,-2292(%ebp)          #   dimension 2: 6 elements
    movl    $4,-2288(%ebp)          #   dimension 3: 4 elements
    movl    $6,-2284(%ebp)          #   dimension 4: 6 elements
    movl    $7,-2280(%ebp)          #   dimension 5: 7 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t8 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   1:     return t8
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $82128, %eax            #   3:     if     82128 = 42086 goto 3_while_body
    movl    $42086, %ebx           
    cmpl    %ebx, %eax             
    je      l_f2_3_while_body      
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_while_body:
l_f2_6_while_cond:
    movl    $92316, %eax            #   7:     if     92316 # 96440 goto 7_while_body
    movl    $96440, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_7_while_body      
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_while_body:
    jmp     l_f2_6_while_cond       #  10:     goto   6_while_cond
l_f2_5:
l_f2_10_while_cond:
    movl    $1975, %eax             #  13:     if     1975 <= 79723 goto 11_while_body
    movl    $79723, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_11_while_body     
    jmp     l_f2_9                  #  14:     goto   9
l_f2_11_while_body:
    jmp     l_f2_10_while_cond      #  16:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_2_while_cond       #  18:     goto   2_while_cond
l_f2_1:
l_f2_14_while_cond:
    movl    $0, %eax                #  21:     param  2 <- 0
    pushl   %eax                   
    leal    -2300(%ebp), %eax       #  22:     &()    t9 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  1 <- t9
    pushl   %eax                   
    leal    -260(%ebp), %eax        #  24:     &()    t10 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    f1                      #  26:     call   t11 <- f1
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  27:     if     t11 = 1 goto 15_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_15_while_body     
    jmp     l_f2_13                 #  28:     goto   13
l_f2_15_while_body:
    jmp     l_f2_14_while_cond      #  30:     goto   14_while_cond
l_f2_13:

l_f2_exit:
    # epilogue
    addl    $2288, %esp             # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 2 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 1 of <array 6 of <array 1 of <array 5 of <array 7 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <bool> %ebp-26 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_2_if_false       #   2:     goto   2_if_false
l_test_1_if_true:
l_test_5_while_cond:
    movl    $97, %eax               #   5:     if     97 < 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_6_while_body    
    jmp     l_test_4                #   6:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   8:     goto   5_while_cond
l_test_4:
    jmp     l_test_0                #  10:     goto   0
l_test_2_if_false:
l_test_0:
    movl    $43322, %eax            #  13:     if     43322 > 9797 goto 9
    movl    $9797, %ebx            
    cmpl    %ebx, %eax             
    jg      l_test_9               
    jmp     l_test_10               #  14:     goto   10
l_test_9:
    movl    $1, %eax                #  16:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  17:     goto   11
l_test_10:
    movl    $0, %eax                #  19:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movzbl  -14(%ebp), %eax         #  21:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  23:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  24:     if     t2 = 1 goto 15
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15              
    jmp     l_test_16               #  25:     goto   16
l_test_15:
    movl    $1, %eax                #  27:     assign t3 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_test_17               #  28:     goto   17
l_test_16:
    movl    $0, %eax                #  30:     assign t3 <- 0
    movb    %al, -16(%ebp)         
l_test_17:
    movzbl  -16(%ebp), %eax         #  32:     assign v0 <- t3
    movb    %al, v0                
    movl    $1, %eax                #  33:     param  2 <- 1
    pushl   %eax                   
    leal    v2, %eax                #  34:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  35:     param  1 <- t4
    pushl   %eax                   
    leal    v1, %eax                #  36:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  38:     call   t6 <- f1
    addl    $12, %esp              
    movb    %al, -25(%ebp)         
    call    dummyBOOLfunc           #  39:     call   t7 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    .align   4
v1:                                 # <array 1 of <array 6 of <array 1 of <array 5 of <array 7 of <char>>>>>>
    .long    5
    .long    1
    .long    6
    .long    1
    .long    5
    .long    7
    .skip  210
    .align   4
v2:                                 # <array 2 of <array 6 of <array 4 of <array 6 of <array 7 of <char>>>>>>
    .long    5
    .long    2
    .long    6
    .long    4
    .long    6
    .long    7
    .skip 2016








    # end of global data section
    #-----------------------------------------

    .end
##################################################
