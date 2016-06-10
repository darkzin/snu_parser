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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $v1       <bool> %ebp-16 ]

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
    jmp     l_f0_5                  #   0:     goto   5
    jmp     l_f0_6                  #   1:     goto   6
l_f0_5:
    movl    $1, %eax                #   3:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   4:     goto   7
l_f0_6:
    movl    $0, %eax                #   6:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movl    $1, %eax                #   8:     if     1 = t8 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #   9:     goto   2
l_f0_1:
    movl    $1, %eax                #  11:     assign t9 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #  12:     goto   3
l_f0_2:
    movl    $0, %eax                #  14:     assign t9 <- 0
    movb    %al, -15(%ebp)         
l_f0_3:
    movzbl  -15(%ebp), %eax         #  16:     assign v1 <- t9
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  17:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #  18:     if     100 <= t10 goto 13_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  19:     goto   14_if_false
l_f0_13_if_true:
    movl    $4480, %eax             #  21:     if     4480 < 33702 goto 17_if_true
    movl    $33702, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_17_if_true        
    jmp     l_f0_18_if_false        #  22:     goto   18_if_false
l_f0_17_if_true:
    jmp     l_f0_16                 #  24:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_12                 #  27:     goto   12
l_f0_14_if_false:
l_f0_12:
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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t8       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t9       <bool> %ebp-22 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 98 of <array 33 of <array 35 of <array 88 of <array 82 of <int>>>>>>> %ebp+12 ]
    #    -23(%ebp)   1  [ $v3       <bool> %ebp-23 ]

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
    movl    $80467, %eax            #   0:     if     80467 < 539 goto 1_if_true
    movl    $539, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    call    dummyCHARfunc           #   3:     call   t8 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   5:     goto   6_while_cond
    movl    $98, %eax               #   6:     if     98 > 100 goto 9_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   7:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #   9:     goto   8
l_f1_10_if_false:
l_f1_8:
l_f1_13_while_cond:
    movl    $21083, %eax            #  13:     if     21083 # 24655 goto 14_while_body
    movl    $24655, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_14_while_body     
    jmp     l_f1_12                 #  14:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  16:     goto   13_while_cond
l_f1_12:
    movl    $20717, %eax            #  18:     if     20717 >= 72372 goto 17
    movl    $72372, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17                
    jmp     l_f1_18                 #  19:     goto   18
l_f1_17:
    movl    $1, %eax                #  21:     assign t9 <- 1
    movb    %al, -22(%ebp)         
    jmp     l_f1_19                 #  22:     goto   19
l_f1_18:
    movl    $0, %eax                #  24:     assign t9 <- 0
    movb    %al, -22(%ebp)         
l_f1_19:
    movzbl  -22(%ebp), %eax         #  26:     assign v3 <- t9
    movb    %al, -23(%ebp)         
    movl    $97, %eax               #  27:     return 97
    jmp     l_f1_exit              
l_f1_23_while_cond:
    movl    $100, %eax              #  29:     if     100 >= 98 goto 24_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_24_while_body     
    jmp     l_f1_22                 #  30:     goto   22
l_f1_24_while_body:
    jmp     l_f1_23_while_cond      #  32:     goto   23_while_cond
l_f1_22:
    movl    $100, %eax              #  34:     return 100
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  35:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  38:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyINTfunc            #  39:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <ptr(4) to <array 98 of <array 33 of <array 35 of <array 88 of <array 82 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 13 of <array 50 of <array 86 of <array 25 of <array 95 of <char>>>>>>> %ebp+12 ]
    #    -33(%ebp)   1  [ $v3       <char> %ebp-33 ]
    #   1027851076(%ebp)  -1027851112  [ $v4       <array 98 of <array 33 of <array 35 of <array 88 of <array 82 of <int>>>>>> %ebp+1027851076 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $-1027851088, %esp      # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $-256962772, %ecx      
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,1027851076(%ebp)     # local array 'v4': 5 dimensions
    movl    $98,1027851080(%ebp)    #   dimension 1: 98 elements
    movl    $33,1027851084(%ebp)    #   dimension 2: 33 elements
    movl    $35,1027851088(%ebp)    #   dimension 3: 35 elements
    movl    $88,1027851092(%ebp)    #   dimension 4: 88 elements
    movl    $82,1027851096(%ebp)    #   dimension 5: 82 elements

    # function body
l_f2_1_while_cond:
    movl    $83957, %eax            #   1:     sub    t8 <- 83957, 91177
    movl    $91177, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $50693, %eax            #   2:     div    t9 <- 50693, 78934
    movl    $78934, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -28(%ebp), %eax         #   3:     add    t10 <- t8, t9
    movl    -32(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    $43501, %eax            #   4:     if     43501 <= t10 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2_while_body      
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   7:     goto   1_while_cond
l_f2_0:
    leal    1027851076(%ebp), %eax  #   9:     &()    t11 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t11
    pushl   %eax                   
    movl    $99, %eax               #  11:     param  0 <- 99
    pushl   %eax                   
    call    f1                      #  12:     call   t12 <- f1
    addl    $8, %esp               
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #  13:     assign v3 <- t12
    movb    %al, -33(%ebp)         
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $-1027851088, %esp      # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t7       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
l_test_2_while_cond:
    jmp     l_test_1                #   3:     goto   1
    movl    $98, %eax               #   4:     if     98 > 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   5:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   7:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_exit            
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
    call    dummyCHARfunc           #  13:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_14_while_cond:
    movl    $96489, %eax            #  15:     if     96489 < 8128 goto 15_while_body
    movl    $8128, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_15_while_body   
    jmp     l_test_13               #  16:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  18:     goto   14_while_cond
l_test_13:
    call    dummyBOOLfunc           #  20:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_exit            
l_test_20_while_cond:
    movl    $63450, %eax            #  23:     if     63450 # 71278 goto 21_while_body
    movl    $71278, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_21_while_body   
    jmp     l_test_19               #  24:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  26:     goto   20_while_cond
l_test_19:
    jmp     l_test_10               #  28:     goto   10
l_test_10:
l_test_24_while_cond:
    movl    $35690, %eax            #  31:     mul    t3 <- 35690, 50409
    movl    $50409, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  32:     mul    t4 <- t3, 23209
    movl    $23209, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $74698, %eax            #  33:     if     74698 <= t4 goto 25_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_25_while_body   
    jmp     l_test_23               #  34:     goto   23
l_test_25_while_body:
    movl    $98, %eax               #  36:     assign v0 <- 98
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_24_while_cond    #  38:     goto   24_while_cond
l_test_23:
l_test_30_while_cond:
    movl    $5739, %eax             #  41:     mul    t5 <- 5739, 44765
    movl    $44765, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     div    t6 <- t5, 39000
    movl    $39000, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  43:     if     t6 <= 8923 goto 31_while_body
    movl    $8923, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_31_while_body   
    jmp     l_test_29               #  44:     goto   29
l_test_31_while_body:
    call    dummyBOOLfunc           #  46:     call   t7 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movl    $1, %eax                #  47:     assign v1 <- 1
    movb    %al, v1                
    jmp     l_test_30_while_cond    #  48:     goto   30_while_cond
l_test_29:

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
