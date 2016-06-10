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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 6 of <array 10 of <array 2 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
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
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_6_if_false         #   3:     goto   6_if_false
    jmp     l_f0_4                  #   4:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $92038, %eax            #   7:     return 92038
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   8:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $78393, %eax            #  11:     sub    t4 <- 78393, 45094
    movl    $45094, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     return t4
    jmp     l_f0_exit              
    jmp     l_f0_11_if_false        #  13:     goto   11_if_false
    movl    $85393, %eax            #  14:     assign v4 <- 85393
    movl    %eax, -20(%ebp)        
    jmp     l_f0_9                  #  15:     goto   9
l_f0_11_if_false:
l_f0_9:

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
    #    -14(%ebp)   1  [ $t5       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 6 of <array 10 of <array 2 of <array 4 of <char>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $v1       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v2       <bool> %ebp-27 ]
    #    -32(%ebp)   4  [ $v3       <int> %ebp-32 ]
    #   -1016(%ebp)  984  [ $v4       <array 2 of <array 6 of <array 10 of <array 2 of <array 4 of <char>>>>>> %ebp-1016 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1004, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $251, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1016(%ebp)          # local array 'v4': 5 dimensions
    movl    $2,-1012(%ebp)          #   dimension 1: 2 elements
    movl    $6,-1008(%ebp)          #   dimension 2: 6 elements
    movl    $10,-1004(%ebp)         #   dimension 3: 10 elements
    movl    $2,-1000(%ebp)          #   dimension 4: 2 elements
    movl    $4,-996(%ebp)           #   dimension 5: 4 elements

    # function body
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -26(%ebp)         
    call    dummyCHARfunc           #   1:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t4 = 98 goto 2
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_2                 
    jmp     l_f1_3                  #   3:     goto   3
l_f1_2:
    movl    $1, %eax                #   5:     assign t5 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_4                  #   6:     goto   4
l_f1_3:
    movl    $0, %eax                #   8:     assign t5 <- 0
    movb    %al, -14(%ebp)         
l_f1_4:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t5
    movb    %al, -27(%ebp)         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
    movl    $14246, %eax            #  12:     assign v3 <- 14246
    movl    %eax, -32(%ebp)        
    movl    $100, %eax              #  13:     param  2 <- 100
    pushl   %eax                   
    movl    $97, %eax               #  14:     param  1 <- 97
    pushl   %eax                   
    leal    -1016(%ebp), %eax       #  15:     &()    t6 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  17:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -24(%ebp)        
    call    dummyCHARfunc           #  18:     call   t8 <- dummyCHARfunc
    movb    %al, -25(%ebp)         
l_f1_13_while_cond:
    jmp     l_f1_12                 #  20:     goto   12
    jmp     l_f1_13_while_cond      #  21:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_6                  #  23:     goto   6
l_f1_8_if_false:
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $1004, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t5       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t6       <char> %ebp-18 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #    -19(%ebp)   1  [ $v2       <char> %ebp-19 ]

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
    call    dummyINTfunc            #   0:     call   t4 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f2_2_while_cond:
    movl    $0, %eax                #   2:     if     0 # 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    call    f1                      #   5:     call   t5 <- f1
    movb    %al, -17(%ebp)         
    jmp     l_f2_2_while_cond       #   6:     goto   2_while_cond
l_f2_1:
    call    dummyCHARfunc           #   8:     call   t6 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #   9:     assign v2 <- t6
    movb    %al, -19(%ebp)         

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
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <char> %ebp-16 ]

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
l_test_1_while_cond:
    movl    $90175, %eax            #   1:     if     90175 = 38396 goto 2_while_body
    movl    $38396, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    movl    $98, %eax               #   4:     assign v0 <- 98
    movb    %al, v0                
    movl    $39171, %eax            #   5:     if     39171 # 41209 goto 6_if_true
    movl    $41209, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_6_if_true       
    jmp     l_test_7_if_false       #   6:     goto   7_if_false
l_test_6_if_true:
    jmp     l_test_5                #   8:     goto   5
l_test_7_if_false:
l_test_5:
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
l_test_0:
l_test_10_while_cond:
    jmp     l_test_11_while_body    #  14:     goto   11_while_body
    jmp     l_test_11_while_body    #  15:     goto   11_while_body
l_test_11_while_body:
    movl    $100, %eax              #  17:     assign v0 <- 100
    movb    %al, v0                
    jmp     l_test_10_while_cond    #  18:     goto   10_while_cond
l_test_16_while_cond:
    jmp     l_test_17_while_body    #  20:     goto   17_while_body
    jmp     l_test_17_while_body    #  21:     goto   17_while_body
    jmp     l_test_17_while_body    #  22:     goto   17_while_body
    jmp     l_test_17_while_body    #  23:     goto   17_while_body
    jmp     l_test_15               #  24:     goto   15
l_test_17_while_body:
    jmp     l_test_24_if_false      #  26:     goto   24_if_false
    jmp     l_test_22               #  27:     goto   22
l_test_24_if_false:
l_test_22:
l_test_26_while_cond:
    movl    $95318, %eax            #  31:     if     95318 < 50927 goto 27_while_body
    movl    $50927, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_27_while_body   
    jmp     l_test_25               #  32:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  34:     goto   26_while_cond
l_test_25:
    call    dummyBOOLfunc           #  36:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_exit            
    jmp     l_test_16_while_cond    #  38:     goto   16_while_cond
l_test_15:
l_test_32_while_cond:
    call    dummyBOOLfunc           #  41:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  42:     if     t1 = 1 goto 33_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_33_while_body   
    jmp     l_test_31               #  43:     goto   31
l_test_33_while_body:
    jmp     l_test_32_while_cond    #  45:     goto   32_while_cond
l_test_31:
    call    dummyCHARfunc           #  47:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $99, %eax               #  48:     if     99 >= t2 goto 35_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_35_if_true      
    jmp     l_test_36_if_false      #  49:     goto   36_if_false
l_test_35_if_true:
    jmp     l_test_exit            
    jmp     l_test_34               #  52:     goto   34
l_test_36_if_false:
l_test_34:
    call    dummyCHARfunc           #  55:     call   t3 <- dummyCHARfunc
    movb    %al, -16(%ebp)         

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
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
