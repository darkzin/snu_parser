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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
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
l_f0_1_while_cond:
    jmp     l_f0_0                  #   1:     goto   0
    movl    $61041, %eax            #   2:     return 61041
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   3:     goto   1_while_cond
l_f0_0:
l_f0_7_while_cond:
    call    dummyBOOLfunc           #   6:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   7:     if     t4 = 1 goto 9
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_9                 
    jmp     l_f0_6                  #   8:     goto   6
l_f0_9:
    jmp     l_f0_6                  #  10:     goto   6
    jmp     l_f0_7_while_cond       #  11:     goto   7_while_cond
l_f0_6:
    call    ReadInt                 #  13:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     assign v1 <- t5
    movl    %eax, -24(%ebp)        

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 85 of <array 66 of <array 43 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 34 of <array 34 of <array 5 of <array 28 of <array 99 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     return 98
    jmp     l_f1_exit              
l_f1_3_while_cond:
    jmp     l_f1_2                  #   3:     goto   2
    movl    $74096, %eax            #   4:     if     74096 = 40169 goto 4_while_body
    movl    $40169, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_4_while_body      
    jmp     l_f1_2                  #   5:     goto   2
l_f1_4_while_body:
    jmp     l_f1_3_while_cond       #   7:     goto   3_while_cond
l_f1_2:

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 34 of <array 34 of <array 5 of <array 28 of <array 99 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 38 of <array 85 of <array 66 of <array 43 of <array 3 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t8       <char> %ebp-29 ]
    #    -30(%ebp)   1  [ $t9       <bool> %ebp-30 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 33 of <array 5 of <array 64 of <array 62 of <array 36 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <int> %ebp+20 ]
    #   -110000936(%ebp)  110000904  [ $v5       <array 38 of <array 85 of <array 66 of <array 43 of <array 3 of <int>>>>>> %ebp-110000936 ]
    #   -174089600(%ebp)  64088664  [ $v6       <array 34 of <array 34 of <array 5 of <array 28 of <array 99 of <int>>>>>> %ebp-174089600 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $174089588, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $43522397, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-110000936(%ebp)     # local array 'v5': 5 dimensions
    movl    $38,-110000932(%ebp)    #   dimension 1: 38 elements
    movl    $85,-110000928(%ebp)    #   dimension 2: 85 elements
    movl    $66,-110000924(%ebp)    #   dimension 3: 66 elements
    movl    $43,-110000920(%ebp)    #   dimension 4: 43 elements
    movl    $3,-110000916(%ebp)     #   dimension 5: 3 elements
    movl    $5,-174089600(%ebp)     # local array 'v6': 5 dimensions
    movl    $34,-174089596(%ebp)    #   dimension 1: 34 elements
    movl    $34,-174089592(%ebp)    #   dimension 2: 34 elements
    movl    $5,-174089588(%ebp)     #   dimension 3: 5 elements
    movl    $28,-174089584(%ebp)    #   dimension 4: 28 elements
    movl    $99,-174089580(%ebp)    #   dimension 5: 99 elements

    # function body
l_f2_1_while_cond:
    movl    $56273, %eax            #   1:     if     56273 # 91304 goto 2_while_body
    movl    $91304, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
    movl    $1, %eax                #   6:     return 1
    jmp     l_f2_exit              
    movl    $30979, %eax            #   7:     if     30979 < 33789 goto 9_if_true
    movl    $33789, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   8:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $0, %eax                #  13:     return 0
    jmp     l_f2_exit              
    movl    $23430, %eax            #  14:     if     23430 # 28588 goto 14
    movl    $28588, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_14                
    jmp     l_f2_15                 #  15:     goto   15
l_f2_14:
    movl    $1, %eax                #  17:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_16                 #  18:     goto   16
l_f2_15:
    movl    $0, %eax                #  20:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_16:
    movzbl  -15(%ebp), %eax         #  22:     return t4
    jmp     l_f2_exit              
    movl    $13614, %eax            #  23:     if     13614 # 92384 goto 19_if_true
    movl    $92384, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  24:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  26:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $98, %eax               #  29:     if     98 <= 97 goto 23_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_23_if_true        
    jmp     l_f2_24_if_false        #  30:     goto   24_if_false
l_f2_23_if_true:
    jmp     l_f2_22                 #  32:     goto   22
l_f2_24_if_false:
l_f2_22:
    jmp     l_f2_1_while_cond       #  35:     goto   1_while_cond
l_f2_0:
    leal    -174089600(%ebp), %eax  #  37:     &()    t5 <- v6
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  38:     param  2 <- t5
    pushl   %eax                   
    leal    -110000936(%ebp), %eax  #  39:     &()    t6 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  40:     param  1 <- t6
    pushl   %eax                   
    movl    $2258, %eax             #  41:     div    t7 <- 2258, 95696
    movl    $95696, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  42:     param  0 <- t7
    pushl   %eax                   
    call    f1                      #  43:     call   t8 <- f1
    addl    $12, %esp              
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  44:     if     t8 < 98 goto 27
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_27                
    jmp     l_f2_28                 #  45:     goto   28
l_f2_27:
    movl    $1, %eax                #  47:     assign t9 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_f2_29                 #  48:     goto   29
l_f2_28:
    movl    $0, %eax                #  50:     assign t9 <- 0
    movb    %al, -30(%ebp)         
l_f2_29:
    movzbl  -30(%ebp), %eax         #  52:     assign v1 <- t9
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #  53:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #  54:     if     97 # t10 goto 32
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_32                
    jmp     l_f2_33                 #  55:     goto   33
l_f2_32:
    movl    $1, %eax                #  57:     assign t11 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_34                 #  58:     goto   34
l_f2_33:
    movl    $0, %eax                #  60:     assign t11 <- 0
    movb    %al, -14(%ebp)         
l_f2_34:
    movzbl  -14(%ebp), %eax         #  62:     return t11
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $174089588, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $97, %eax               #   1:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_3                #   2:     goto   3
    jmp     l_test_4                #   3:     goto   4
l_test_3:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_5                #   6:     goto   5
l_test_4:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_5:
    movzbl  -14(%ebp), %eax         #  10:     assign v1 <- t1
    movb    %al, v1                
    call    ReadInt                 #  11:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
l_test_9_while_cond:
    movl    $78617, %eax            #  13:     add    t3 <- 78617, 18211
    movl    $18211, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $71151, %eax            #  14:     if     71151 = t3 goto 10_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_10_while_body   
    jmp     l_test_8                #  15:     goto   8
l_test_10_while_body:
l_test_13_while_cond:
    movl    $99, %eax               #  18:     if     99 > 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_14_while_body   
    jmp     l_test_12               #  19:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  21:     goto   13_while_cond
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_9_while_cond     #  24:     goto   9_while_cond
l_test_8:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
