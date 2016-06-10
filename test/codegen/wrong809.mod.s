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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t9       <bool> %ebp-29 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 1 of <array 2 of <array 2 of <array 9 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_6                  #   0:     goto   6
    movl    $1, %eax                #   1:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_7                  #   2:     goto   7
l_f0_6:
    movl    $0, %eax                #   4:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f0_7:
    jmp     l_f0_9                  #   6:     goto   9
    jmp     l_f0_9                  #   7:     goto   9
    jmp     l_f0_9                  #   8:     goto   9
    jmp     l_f0_10                 #   9:     goto   10
l_f0_9:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_11                 #  12:     goto   11
l_f0_10:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f0_11:
    movzbl  -13(%ebp), %eax         #  16:     if     t3 = t4 goto 1
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f0_1                 
    jmp     l_f0_2                  #  17:     goto   2
l_f0_1:
    movl    $1, %eax                #  19:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_3                  #  20:     goto   3
l_f0_2:
    movl    $0, %eax                #  22:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_3:
    movzbl  -15(%ebp), %eax         #  24:     return t5
    jmp     l_f0_exit              
l_f0_18_while_cond:
    jmp     l_f0_19_while_body      #  26:     goto   19_while_body
    jmp     l_f0_17                 #  27:     goto   17
l_f0_19_while_body:
    jmp     l_f0_26_if_false        #  29:     goto   26_if_false
    jmp     l_f0_24                 #  30:     goto   24
l_f0_26_if_false:
l_f0_24:
    jmp     l_f0_18_while_cond      #  33:     goto   18_while_cond
l_f0_17:
    movl    $62118, %eax            #  35:     sub    t6 <- 62118, 11121
    movl    $11121, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  36:     sub    t7 <- t6, 56677
    movl    $56677, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  37:     sub    t8 <- t7, 87034
    movl    $87034, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $12793, %eax            #  38:     if     12793 <= t8 goto 28
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f0_28                
    jmp     l_f0_29                 #  39:     goto   29
l_f0_28:
    movl    $1, %eax                #  41:     assign t9 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f0_30                 #  42:     goto   30
l_f0_29:
    movl    $0, %eax                #  44:     assign t9 <- 0
    movb    %al, -29(%ebp)         
l_f0_30:
    movzbl  -29(%ebp), %eax         #  46:     return t9
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 3 of <array 1 of <array 2 of <array 2 of <array 9 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 7 of <array 5 of <array 10 of <array 10 of <array 6 of <int>>>>>>> %ebp+8 ]
    #   -160(%ebp)  132  [ $v1       <array 3 of <array 1 of <array 2 of <array 2 of <array 9 of <bool>>>>>> %ebp-160 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $148, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $37, %ecx              
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-160(%ebp)           # local array 'v1': 5 dimensions
    movl    $3,-156(%ebp)           #   dimension 1: 3 elements
    movl    $1,-152(%ebp)           #   dimension 2: 1 elements
    movl    $2,-148(%ebp)           #   dimension 3: 2 elements
    movl    $2,-144(%ebp)           #   dimension 4: 2 elements
    movl    $9,-140(%ebp)           #   dimension 5: 9 elements

    # function body
    leal    _str_1, %eax            #   0:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   2:     call   WriteStr
    addl    $4, %esp               
    movl    $64836, %eax            #   3:     sub    t4 <- 64836, 2260
    movl    $2260, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     return t4
    jmp     l_f1_exit              
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
    jmp     l_f1_4_if_false         #   6:     goto   4_if_false
    leal    -160(%ebp), %eax        #   7:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   8:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #   9:     call   t6 <- f0
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movl    $97686, %eax            #  10:     return 97686
    jmp     l_f1_exit              
    movl    $99, %eax               #  11:     if     99 >= 98 goto 11_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  12:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  14:     goto   10
l_f1_12_if_false:
l_f1_10:
    movl    $97, %eax               #  17:     if     97 = 98 goto 15_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  18:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_14                 #  20:     goto   14
l_f1_16_if_false:
l_f1_14:
    jmp     l_f1_2                  #  23:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $148, %esp              # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $97, %eax               #   0:     if     97 = 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     return 100
    jmp     l_f2_exit              
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f2_0                  #   5:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyCHARfunc           #   8:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   9:     if     99 # t3 goto 7
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f2_7                 
    jmp     l_f2_8                  #  10:     goto   8
l_f2_7:
    movl    $1, %eax                #  12:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_9                  #  13:     goto   9
l_f2_8:
    movl    $0, %eax                #  15:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f2_9:
    movzbl  -14(%ebp), %eax         #  17:     assign v1 <- t4
    movb    %al, 12(%ebp)          
l_f2_12_while_cond:
l_f2_15_while_cond:
    jmp     l_f2_15_while_cond      #  20:     goto   15_while_cond
    movl    $98, %eax               #  21:     assign v0 <- 98
    movb    %al, 8(%ebp)           
    jmp     l_f2_12_while_cond      #  22:     goto   12_while_cond

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
l_test_1_while_cond:
l_test_5_while_cond:
    movl    $42017, %eax            #   2:     if     42017 <= 8353 goto 6_while_body
    movl    $8353, %ebx            
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   3:     goto   4
l_test_6_while_body:
    jmp     l_test_5_while_cond     #   5:     goto   5_while_cond
l_test_4:
    call    dummyProcedure          #   7:     call   dummyProcedure
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyCHARfunc           #  11:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  12:     assign v0 <- t0
    movb    %al, v0                
    movl    $98, %eax               #  13:     if     98 <= 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
l_test_13_if_true:
l_test_17_while_cond:
    movl    $95658, %eax            #  17:     mul    t1 <- 95658, 55003
    movl    $55003, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  18:     if     t1 >= 14104 goto 18_while_body
    movl    $14104, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_18_while_body   
    jmp     l_test_16               #  19:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  21:     goto   17_while_cond
l_test_16:
    jmp     l_test_12               #  23:     goto   12
l_test_14_if_false:
l_test_12:
l_test_21_while_cond:
    call    dummyINTfunc            #  27:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  28:     if     t2 >= 2448 goto 22_while_body
    movl    $2448, %ebx            
    cmpl    %ebx, %eax             
    jge     l_test_22_while_body   
    jmp     l_test_20               #  29:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  31:     goto   21_while_cond
l_test_20:

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
