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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 48 of <array 31 of <array 53 of <array 29 of <array 91 of <bool>>>>>>> %ebp+20 ]
    #    -13(%ebp)   1  [ $v4       <char> %ebp-13 ]

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
l_f0_1_while_cond:
    movl    $12956, %eax            #   1:     if     12956 = 10407 goto 2_while_body
    movl    $10407, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $100, %eax              #   4:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_7_if_false         #   5:     goto   7_if_false
    movl    $97, %eax               #   6:     assign v4 <- 97
    movb    %al, -13(%ebp)         
l_f0_10_while_cond:
    movl    $58763, %eax            #   8:     if     58763 > 39617 goto 11_while_body
    movl    $39617, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_11_while_body     
    jmp     l_f0_9                  #   9:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  11:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_5                  #  13:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_1_while_cond       #  16:     goto   1_while_cond
l_f0_0:
    movl    $99, %eax               #  18:     assign v4 <- 99
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  19:     return 100
    jmp     l_f0_exit              
    movl    $99, %eax               #  20:     return 99
    jmp     l_f0_exit              
    jmp     l_f0_14                 #  21:     goto   14
l_f0_14:

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f1_1_while_cond:
l_f1_4_while_cond:
    jmp     l_f1_4_while_cond       #   2:     goto   4_while_cond
    movl    $20338, %eax            #   3:     assign v1 <- 20338
    movl    %eax, -24(%ebp)        
    jmp     l_f1_1_while_cond       #   4:     goto   1_while_cond
    call    ReadInt                 #   5:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    $100, %eax              #   6:     if     100 < 97 goto 9
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_9                 
    jmp     l_f1_10                 #   7:     goto   10
l_f1_9:
    movl    $1, %eax                #   9:     assign t6 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_11                 #  10:     goto   11
l_f1_10:
    movl    $0, %eax                #  12:     assign t6 <- 0
    movb    %al, -17(%ebp)         
l_f1_11:
    movzbl  -17(%ebp), %eax         #  14:     assign v0 <- t6
    movb    %al, 8(%ebp)           

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t13      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t14      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t15      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t16      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t17      <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t18      <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t19      <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t20      <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t21      <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t22      <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t23      <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t5       <ptr(4) to <array 48 of <array 31 of <array 53 of <array 29 of <array 91 of <bool>>>>>>> %ebp-64 ]
    #    -68(%ebp)   4  [ $t6       <int> %ebp-68 ]
    #    -72(%ebp)   4  [ $t7       <int> %ebp-72 ]
    #    -73(%ebp)   1  [ $t8       <char> %ebp-73 ]
    #    -80(%ebp)   4  [ $t9       <int> %ebp-80 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 94 of <array 67 of <array 47 of <array 55 of <array 88 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 84 of <array 27 of <array 76 of <array 17 of <array 74 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 57 of <array 32 of <array 33 of <array 81 of <array 88 of <char>>>>>>> %ebp+20 ]
    #   -208122200(%ebp)  208122120  [ $v4       <array 48 of <array 31 of <array 53 of <array 29 of <array 91 of <bool>>>>>> %ebp-208122200 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $208122188, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $52030547, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-208122200(%ebp)     # local array 'v4': 5 dimensions
    movl    $48,-208122196(%ebp)    #   dimension 1: 48 elements
    movl    $31,-208122192(%ebp)    #   dimension 2: 31 elements
    movl    $53,-208122188(%ebp)    #   dimension 3: 53 elements
    movl    $29,-208122184(%ebp)    #   dimension 4: 29 elements
    movl    $91,-208122180(%ebp)    #   dimension 5: 91 elements

    # function body
l_f2_1_while_cond:
    movl    $0, %eax                #   1:     if     0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    leal    -208122200(%ebp), %eax  #   4:     &()    t5 <- v4
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #   5:     param  3 <- t5
    pushl   %eax                   
    movl    $53838, %eax            #   6:     param  2 <- 53838
    pushl   %eax                   
    movl    $93801, %eax            #   7:     param  1 <- 93801
    pushl   %eax                   
    movl    $90119, %eax            #   8:     div    t6 <- 90119, 84565
    movl    $84565, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -68(%ebp)        
    movl    -68(%ebp), %eax         #   9:     div    t7 <- t6, 33705
    movl    $33705, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -72(%ebp)        
    movl    -72(%ebp), %eax         #  10:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  11:     call   t8 <- f0
    addl    $16, %esp              
    movb    %al, -73(%ebp)         
    call    ReadInt                 #  12:     call   t9 <- ReadInt
    movl    %eax, -80(%ebp)        
    call    dummyBOOLfunc           #  13:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f2_8_while_cond:
    jmp     l_f2_7                  #  15:     goto   7
    jmp     l_f2_8_while_cond       #  16:     goto   8_while_cond
l_f2_7:
l_f2_11_while_cond:
    movl    $97, %eax               #  19:     if     97 > 100 goto 12_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_12_while_body     
    jmp     l_f2_10                 #  20:     goto   10
l_f2_12_while_body:
    jmp     l_f2_11_while_cond      #  22:     goto   11_while_cond
l_f2_10:
    jmp     l_f2_1_while_cond       #  24:     goto   1_while_cond
l_f2_0:
    call    dummyBOOLfunc           #  26:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  27:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #  28:     call   t12 <- f1
    addl    $4, %esp               
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  29:     if     t12 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  30:     goto   16_if_false
l_f2_15_if_true:
l_f2_18_while_cond:
    movl    $98, %eax               #  33:     if     98 <= 100 goto 19_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  34:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  36:     goto   18_while_cond
l_f2_17:
    call    dummyINTfunc            #  38:     call   t13 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    $91057, %eax            #  39:     if     91057 >= 26027 goto 23_if_true
    movl    $26027, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  40:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  42:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_14                 #  45:     goto   14
l_f2_16_if_false:
l_f2_14:
    movl    $86698, %eax            #  48:     sub    t14 <- 86698, 1484
    movl    $1484, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  49:     add    t15 <- t14, 55273
    movl    $55273, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  50:     add    t16 <- t15, 74903
    movl    $74903, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  51:     sub    t17 <- t16, 71971
    movl    $71971, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $11092, %eax            #  52:     div    t18 <- 11092, 70857
    movl    $70857, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  53:     mul    t19 <- t18, 14960
    movl    $14960, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  54:     mul    t20 <- t19, 17575
    movl    $17575, %ebx           
    imull   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  55:     mul    t21 <- t20, 206
    movl    $206, %ebx             
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  56:     div    t22 <- t21, 22177
    movl    $22177, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -36(%ebp), %eax         #  57:     add    t23 <- t17, t22
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  58:     return t23
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $208122188, %esp        # remove locals
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
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t4       <bool> %ebp-26 ]

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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    call    ReadInt                 #   2:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
l_test_7_while_cond:
    jmp     l_test_6                #   4:     goto   6
    jmp     l_test_7_while_cond     #   5:     goto   7_while_cond
l_test_6:
    movl    $99, %eax               #   7:     if     99 < 100 goto 10_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #   8:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  10:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $7342, %eax             #  13:     if     7342 >= 26263 goto 14_if_true
    movl    $26263, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  16:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $98, %eax               #  19:     if     98 = 98 goto 18
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_18              
    jmp     l_test_19               #  20:     goto   19
l_test_18:
    movl    $1, %eax                #  22:     assign t3 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_20               #  23:     goto   20
l_test_19:
    movl    $0, %eax                #  25:     assign t3 <- 0
    movb    %al, -25(%ebp)         
l_test_20:
    movzbl  -25(%ebp), %eax         #  27:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  28:     call   t4 <- f1
    addl    $4, %esp               
    movb    %al, -26(%ebp)         
    jmp     l_test_2                #  29:     goto   2
l_test_2:

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
