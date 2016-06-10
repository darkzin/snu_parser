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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t9       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 30 of <array 43 of <array 40 of <array 100 of <array 48 of <char>>>>>>> %ebp+8 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $v4       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     assign v3 <- t9
    movb    %al, -15(%ebp)         
    movl    $7942, %eax             #   3:     assign v4 <- 7942
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t13      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t14      <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t15      <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t8       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t9       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 28 of <array 12 of <array 51 of <array 85 of <array 10 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #    -41(%ebp)   1  [ $v5       <bool> %ebp-41 ]

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
l_f1_1_while_cond:
    jmp     l_f1_0                  #   1:     goto   0
    movl    $23463, %eax            #   2:     if     23463 > 59555 goto 4
    movl    $59555, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_4                 
    jmp     l_f1_5                  #   3:     goto   5
l_f1_4:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -34(%ebp)         
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $0, %eax                #   8:     assign t8 <- 0
    movb    %al, -34(%ebp)         
l_f1_6:
    movzbl  -34(%ebp), %eax         #  10:     assign v5 <- t8
    movb    %al, -41(%ebp)         
    movl    $40842, %eax            #  11:     return 40842
    jmp     l_f1_exit              
    movl    $28354, %eax            #  12:     return 28354
    jmp     l_f1_exit              
l_f1_11_while_cond:
    movl    $98, %eax               #  14:     if     98 >= 99 goto 12_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_12_while_body     
    jmp     l_f1_10                 #  15:     goto   10
l_f1_12_while_body:
    jmp     l_f1_11_while_cond      #  17:     goto   11_while_cond
l_f1_10:
    jmp     l_f1_1_while_cond       #  19:     goto   1_while_cond
l_f1_0:
    movl    $31926, %eax            #  21:     add    t9 <- 31926, 50220
    movl    $50220, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     sub    t10 <- t9, 22401
    movl    $22401, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  23:     add    t11 <- t10, 60225
    movl    $60225, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  24:     sub    t12 <- t11, 62993
    movl    $62993, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     sub    t13 <- t12, 33887
    movl    $33887, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     add    t14 <- t13, 26535
    movl    $26535, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     return t14
    jmp     l_f1_exit              
l_f1_16_while_cond:
    call    dummyCHARfunc           #  29:     call   t15 <- dummyCHARfunc
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  30:     if     t15 < 97 goto 17_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_17_while_body     
    jmp     l_f1_15                 #  31:     goto   15
l_f1_17_while_body:
    jmp     l_f1_16_while_cond      #  33:     goto   16_while_cond
l_f1_15:

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t9       <ptr(4) to <array 28 of <array 12 of <array 51 of <array 85 of <array 10 of <int>>>>>>> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 74 of <array 38 of <array 44 of <array 100 of <array 21 of <int>>>>>>> %ebp+8 ]
    #   -58262448(%ebp)  58262424  [ $v3       <array 28 of <array 12 of <array 51 of <array 85 of <array 10 of <int>>>>>> %ebp-58262448 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $58262436, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $14565609, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-58262448(%ebp)      # local array 'v3': 5 dimensions
    movl    $28,-58262444(%ebp)     #   dimension 1: 28 elements
    movl    $12,-58262440(%ebp)     #   dimension 2: 12 elements
    movl    $51,-58262436(%ebp)     #   dimension 3: 51 elements
    movl    $85,-58262432(%ebp)     #   dimension 4: 85 elements
    movl    $10,-58262428(%ebp)     #   dimension 5: 10 elements

    # function body
l_f2_1_while_cond:
    jmp     l_f2_1_while_cond       #   1:     goto   1_while_cond
    call    dummyCHARfunc           #   2:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movl    $13485, %eax            #   3:     param  2 <- 13485
    pushl   %eax                   
    movl    $100, %eax              #   4:     param  1 <- 100
    pushl   %eax                   
    leal    -58262448(%ebp), %eax   #   5:     &()    t9 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t9
    pushl   %eax                   
    call    f1                      #   7:     call   t10 <- f1
    addl    $12, %esp              
    movl    %eax, -16(%ebp)        

l_f2_exit:
    # epilogue
    addl    $58262436, %esp         # remove locals
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
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   1:     goto   3
    jmp     l_test_3                #   2:     goto   3
    movl    $1, %eax                #   3:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_4                #   4:     goto   4
l_test_3:
    movl    $0, %eax                #   6:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_4:
    movzbl  -14(%ebp), %eax         #   8:     assign v0 <- t1
    movb    %al, v0                
l_test_7_while_cond:
    movl    $100, %eax              #  10:     if     100 # 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_8_while_body    
    jmp     l_test_6                #  11:     goto   6
l_test_8_while_body:
    call    ReadInt                 #  13:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  14:     assign v1 <- 99
    movb    %al, v1                
l_test_13_while_cond:
    movl    $97, %eax               #  16:     if     97 < 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_14_while_body   
    jmp     l_test_12               #  17:     goto   12
l_test_14_while_body:
    jmp     l_test_13_while_cond    #  19:     goto   13_while_cond
l_test_12:
    jmp     l_test_7_while_cond     #  21:     goto   7_while_cond
l_test_6:
    movl    $6075, %eax             #  23:     add    t3 <- 6075, 37081
    movl    $37081, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  24:     add    t4 <- t3, 50566
    movl    $50566, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  25:     if     t4 = 42809 goto 17_if_true
    movl    $42809, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_17_if_true      
    jmp     l_test_18_if_false      #  26:     goto   18_if_false
l_test_17_if_true:
    movl    $97, %eax               #  28:     assign v1 <- 97
    movb    %al, v1                
    jmp     l_test_16               #  29:     goto   16
l_test_18_if_false:
l_test_16:
    movl    $53653, %eax            #  32:     if     53653 < 32807 goto 25
    movl    $32807, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_25              
    jmp     l_test_26               #  33:     goto   26
l_test_25:
    movl    $1, %eax                #  35:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_test_27               #  36:     goto   27
l_test_26:
    movl    $0, %eax                #  38:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_test_27:
    movl    $1, %eax                #  40:     if     1 = t5 goto 22_if_true
    movzbl  -29(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_22_if_true      
    jmp     l_test_23_if_false      #  41:     goto   23_if_false
l_test_22_if_true:
    movl    $99, %eax               #  43:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_21               #  44:     goto   21
l_test_23_if_false:
l_test_21:
l_test_31_while_cond:
    movl    $88637, %eax            #  48:     sub    t6 <- 88637, 42966
    movl    $42966, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $37034, %eax            #  49:     add    t7 <- 37034, 95162
    movl    $95162, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  50:     if     t6 < t7 goto 32_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_32_while_body   
    jmp     l_test_30               #  51:     goto   30
l_test_32_while_body:
    jmp     l_test_31_while_cond    #  53:     goto   31_while_cond
l_test_30:

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
