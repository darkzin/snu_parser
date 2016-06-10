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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 83 of <array 62 of <array 35 of <array 83 of <array 52 of <bool>>>>>>> %ebp+12 ]
    #    -15(%ebp)   1  [ $v3       <char> %ebp-15 ]

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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   1:     if     99 = t3 goto 1_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
l_f0_5_while_cond:
    movl    $98, %eax               #   5:     if     98 > 97 goto 6_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6_while_body      
    jmp     l_f0_4                  #   6:     goto   4
l_f0_6_while_body:
    jmp     l_f0_5_while_cond       #   8:     goto   5_while_cond
l_f0_4:
    jmp     l_f0_10_if_false        #  10:     goto   10_if_false
    jmp     l_f0_8                  #  11:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_12_while_cond:
    call    dummyCHARfunc           #  18:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     if     t4 >= 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_13_while_body     
    jmp     l_f0_11                 #  20:     goto   11
l_f0_13_while_body:
    jmp     l_f0_12_while_cond      #  22:     goto   12_while_cond
l_f0_11:
    movl    $97, %eax               #  24:     assign v3 <- 97
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -16(%ebp)   1  [ $v2       <char> %ebp-16 ]

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
    jmp     l_f1_2_while_body       #   1:     goto   2_while_body
l_f1_2_while_body:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   4:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f1_8_while_cond:
    jmp     l_f1_8_while_cond       #   6:     goto   8_while_cond
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
l_f1_14_while_cond:
    jmp     l_f1_13                 #   9:     goto   13
    jmp     l_f1_14_while_cond      #  10:     goto   14_while_cond
l_f1_13:
    movl    $97, %eax               #  12:     assign v2 <- 97
    movb    %al, -16(%ebp)         
    call    dummyCHARfunc           #  13:     call   t4 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_f1_18                 #  14:     goto   18
l_f1_18:
    jmp     l_f1_21                 #  16:     goto   21
l_f1_21:
    movl    $60637, %eax            #  18:     assign v1 <- 60637
    movl    %eax, 8(%ebp)          
    call    dummyCHARfunc           #  19:     call   t5 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f1_26                 #  20:     goto   26
l_f1_26:
    jmp     l_f1_10                 #  22:     goto   10
l_f1_10:
l_f1_30_while_cond:
    movl    $34346, %eax            #  25:     if     34346 = 43146 goto 31_while_body
    movl    $43146, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_31_while_body     
    jmp     l_f1_29                 #  26:     goto   29
l_f1_31_while_body:
l_f1_34_while_cond:
    jmp     l_f1_33                 #  29:     goto   33
    jmp     l_f1_34_while_cond      #  30:     goto   34_while_cond
l_f1_33:
    jmp     l_f1_exit              
    movl    $72543, %eax            #  33:     assign v1 <- 72543
    movl    %eax, 8(%ebp)          
    jmp     l_f1_30_while_cond      #  34:     goto   30_while_cond
l_f1_29:

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
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 83 of <array 62 of <array 35 of <array 83 of <array 52 of <bool>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t9       <bool> %ebp-33 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 7 of <array 75 of <array 12 of <array 93 of <array 25 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 23 of <array 13 of <array 62 of <array 57 of <array 37 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v4       <bool> %ebp+20 ]
    #   -777354820(%ebp)  777354784  [ $v5       <array 83 of <array 62 of <array 35 of <array 83 of <array 52 of <bool>>>>>> %ebp-777354820 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $777354808, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $194338702, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-777354820(%ebp)     # local array 'v5': 5 dimensions
    movl    $83,-777354816(%ebp)    #   dimension 1: 83 elements
    movl    $62,-777354812(%ebp)    #   dimension 2: 62 elements
    movl    $35,-777354808(%ebp)    #   dimension 3: 35 elements
    movl    $83,-777354804(%ebp)    #   dimension 4: 83 elements
    movl    $52,-777354800(%ebp)    #   dimension 5: 52 elements

    # function body
    call    ReadInt                 #   0:     call   t3 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     if     t4 > 99 goto 2_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   3:     goto   3_if_false
l_f2_2_if_true:
    movl    $98, %eax               #   5:     if     98 > 99 goto 6
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $1, %eax                #   8:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_8                  #   9:     goto   8
l_f2_7:
    movl    $0, %eax                #  11:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_8:
    movzbl  -18(%ebp), %eax         #  13:     assign v4 <- t5
    movb    %al, 20(%ebp)          
    jmp     l_f2_1                  #  14:     goto   1
l_f2_3_if_false:
l_f2_1:
    leal    -777354820(%ebp), %eax  #  17:     &()    t6 <- v5
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     param  1 <- t6
    pushl   %eax                   
    movl    $18911, %eax            #  19:     add    t7 <- 18911, 65203
    movl    $65203, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  20:     sub    t8 <- t7, 71626
    movl    $71626, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  21:     param  0 <- t8
    pushl   %eax                   
    call    f0                      #  22:     call   t9 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         
    movzbl  -33(%ebp), %eax         #  23:     if     t9 = 1 goto 11_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_11_if_true        
    jmp     l_f2_12_if_false        #  24:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  26:     goto   10
l_f2_12_if_false:
l_f2_10:

l_f2_exit:
    # epilogue
    addl    $777354808, %esp        # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]

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
    movl    $41245, %eax            #   0:     if     41245 <= 42714 goto 1_if_true
    movl    $42714, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $784, %eax              #   3:     assign v0 <- 784
    movl    %eax, v0               
l_test_6_while_cond:
    movl    $1074, %eax             #   5:     if     1074 > 77142 goto 7_while_body
    movl    $77142, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   6:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   8:     goto   6_while_cond
l_test_5:
    movl    $99, %eax               #  10:     if     99 < 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_10_if_true      
    jmp     l_test_11_if_false      #  11:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #  13:     goto   9
l_test_11_if_false:
l_test_9:
    call    dummyBOOLfunc           #  16:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_test_15_while_cond:
    movl    $100, %eax              #  18:     if     100 <= 97 goto 16_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_16_while_body   
    jmp     l_test_14               #  19:     goto   14
l_test_16_while_body:
    jmp     l_test_15_while_cond    #  21:     goto   15_while_cond
l_test_14:
    jmp     l_test_0                #  23:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
    movl    $100, %eax              #  27:     assign v1 <- 100
    movb    %al, v1                
l_test_21_while_cond:
    jmp     l_test_26               #  29:     goto   26
l_test_26:
    jmp     l_test_22_while_body    #  31:     goto   22_while_body
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  33:     goto   21_while_cond
    call    dummyBOOLfunc           #  34:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  35:     if     t1 = 1 goto 29_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_29_if_true      
    jmp     l_test_30_if_false      #  36:     goto   30_if_false
l_test_29_if_true:
    call    dummyCHARfunc           #  38:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
l_test_33_while_cond:
    jmp     l_test_32               #  40:     goto   32
    jmp     l_test_33_while_cond    #  41:     goto   33_while_cond
l_test_32:
    jmp     l_test_28               #  43:     goto   28
l_test_30_if_false:
l_test_28:

l_test_exit:
    # epilogue
    addl    $4, %esp                # remove locals
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
v1:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
