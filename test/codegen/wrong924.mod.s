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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 6 of <array 6 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 5 of <array 4 of <array 9 of <array 2 of <array 9 of <bool>>>>>>> %ebp+12 ]
    #    -24(%ebp)   4  [ $v2       <int> %ebp-24 ]

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
    movl    $100, %eax              #   1:     if     100 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    call    dummyINTfunc            #   4:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    ReadInt                 #   7:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_7_while_cond:
    jmp     l_f0_6                  #   9:     goto   6
    movl    $63292, %eax            #  10:     assign v2 <- 63292
    movl    %eax, -24(%ebp)        
    jmp     l_f0_7_while_cond       #  11:     goto   7_while_cond
l_f0_6:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 4 of <array 9 of <array 2 of <array 9 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 6 of <array 6 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t6       <bool> %ebp-26 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #   -9124(%ebp)  9096  [ $v1       <array 6 of <array 7 of <array 6 of <array 6 of <array 6 of <char>>>>>> %ebp-9124 ]
    #   -12388(%ebp)  3264  [ $v2       <array 5 of <array 4 of <array 9 of <array 2 of <array 9 of <bool>>>>>> %ebp-12388 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12376, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3094, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9124(%ebp)          # local array 'v1': 5 dimensions
    movl    $6,-9120(%ebp)          #   dimension 1: 6 elements
    movl    $7,-9116(%ebp)          #   dimension 2: 7 elements
    movl    $6,-9112(%ebp)          #   dimension 3: 6 elements
    movl    $6,-9108(%ebp)          #   dimension 4: 6 elements
    movl    $6,-9104(%ebp)          #   dimension 5: 6 elements
    movl    $5,-12388(%ebp)         # local array 'v2': 5 dimensions
    movl    $5,-12384(%ebp)         #   dimension 1: 5 elements
    movl    $4,-12380(%ebp)         #   dimension 2: 4 elements
    movl    $9,-12376(%ebp)         #   dimension 3: 9 elements
    movl    $2,-12372(%ebp)         #   dimension 4: 2 elements
    movl    $9,-12368(%ebp)         #   dimension 5: 9 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
l_f1_2_while_cond:
    leal    -12388(%ebp), %eax      #   3:     &()    t3 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     param  1 <- t3
    pushl   %eax                   
    leal    -9124(%ebp), %eax       #   5:     &()    t4 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   6:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #   7:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #   8:     if     t5 <= 99 goto 3_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_3_while_body      
    jmp     l_f1_1                  #   9:     goto   1
l_f1_3_while_body:
    call    dummyProcedure          #  11:     call   dummyProcedure
    jmp     l_f1_2_while_cond       #  12:     goto   2_while_cond
l_f1_1:
    movl    $15112, %eax            #  14:     if     15112 >= 6648 goto 10_if_true
    movl    $6648, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_if_false:
l_f1_9:
    call    dummyBOOLfunc           #  20:     call   t6 <- dummyBOOLfunc
    movb    %al, -26(%ebp)         
    movl    $98, %eax               #  21:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_17_if_false        #  22:     goto   17_if_false
    jmp     l_f1_15                 #  23:     goto   15
l_f1_17_if_false:
l_f1_15:
    jmp     l_f1_6                  #  26:     goto   6
l_f1_6:

l_f1_exit:
    # epilogue
    addl    $12376, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <array 4 of <array 9 of <array 2 of <array 9 of <bool>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t7       <ptr(4) to <array 6 of <array 7 of <array 6 of <array 6 of <array 6 of <char>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t8       <char> %ebp-33 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 7 of <array 3 of <array 10 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 1 of <array 3 of <array 2 of <int>>>>>>> %ebp+16 ]
    #    -40(%ebp)   4  [ $v3       <int> %ebp-40 ]
    #   -9136(%ebp)  9096  [ $v4       <array 6 of <array 7 of <array 6 of <array 6 of <array 6 of <char>>>>>> %ebp-9136 ]
    #   -12400(%ebp)  3264  [ $v5       <array 5 of <array 4 of <array 9 of <array 2 of <array 9 of <bool>>>>>> %ebp-12400 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $12388, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $3097, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-9136(%ebp)          # local array 'v4': 5 dimensions
    movl    $6,-9132(%ebp)          #   dimension 1: 6 elements
    movl    $7,-9128(%ebp)          #   dimension 2: 7 elements
    movl    $6,-9124(%ebp)          #   dimension 3: 6 elements
    movl    $6,-9120(%ebp)          #   dimension 4: 6 elements
    movl    $6,-9116(%ebp)          #   dimension 5: 6 elements
    movl    $5,-12400(%ebp)         # local array 'v5': 5 dimensions
    movl    $5,-12396(%ebp)         #   dimension 1: 5 elements
    movl    $4,-12392(%ebp)         #   dimension 2: 4 elements
    movl    $9,-12388(%ebp)         #   dimension 3: 9 elements
    movl    $2,-12384(%ebp)         #   dimension 4: 2 elements
    movl    $9,-12380(%ebp)         #   dimension 5: 9 elements

    # function body
l_f2_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
    call    dummyBOOLfunc           #   4:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #   5:     if     1 = 1 goto 6_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_6_if_true         
    jmp     l_f2_7_if_false         #   6:     goto   7_if_false
l_f2_6_if_true:
    jmp     l_f2_5                  #   8:     goto   5
l_f2_7_if_false:
l_f2_5:
    movl    $97, %eax               #  11:     param  0 <- 97
    pushl   %eax                   
    call    f1                      #  12:     call   t3 <- f1
    addl    $4, %esp               
    movb    %al, -14(%ebp)         
l_f2_11_while_cond:
    jmp     l_f2_11_while_cond      #  14:     goto   11_while_cond
    jmp     l_f2_1_while_cond       #  15:     goto   1_while_cond
l_f2_0:
    movl    $12957, %eax            #  17:     div    t4 <- 12957, 84702
    movl    $84702, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $199, %eax              #  18:     add    t5 <- 199, t4
    movl    -20(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  19:     assign v3 <- t5
    movl    %eax, -40(%ebp)        
    leal    -12400(%ebp), %eax      #  20:     &()    t6 <- v5
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     param  1 <- t6
    pushl   %eax                   
    leal    -9136(%ebp), %eax       #  22:     &()    t7 <- v4
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  24:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -33(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12388, %esp            # remove locals
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
    movl    $99686, %eax            #   0:     if     99686 < 85248 goto 1_if_true
    movl    $85248, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1_if_true       
l_test_1_if_true:
    jmp     l_test_0                #   2:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $1, %eax                #   5:     if     1 # 1 goto 7_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_7_if_true       
    jmp     l_test_8_if_false       #   6:     goto   8_if_false
l_test_7_if_true:
    movl    $1, %eax                #   8:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_6                #  10:     goto   6
l_test_8_if_false:
l_test_6:
    movl    $37393, %eax            #  13:     if     37393 <= 83949 goto 13_if_true
    movl    $83949, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_if_true      
    jmp     l_test_14_if_false      #  14:     goto   14_if_false
l_test_13_if_true:
l_test_17_while_cond:
    jmp     l_test_16               #  17:     goto   16
    jmp     l_test_17_while_cond    #  18:     goto   17_while_cond
l_test_16:
    call    dummyBOOLfunc           #  20:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $1, %eax                #  21:     if     1 = 1 goto 21_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  22:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  24:     goto   20
l_test_22_if_false:
l_test_20:
    jmp     l_test_12               #  27:     goto   12
l_test_14_if_false:
l_test_12:
    movl    $98, %eax               #  30:     if     98 <= 97 goto 25
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_25              
    jmp     l_test_26               #  31:     goto   26
l_test_25:
    movl    $1, %eax                #  33:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_27               #  34:     goto   27
l_test_26:
    movl    $0, %eax                #  36:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_27:
    movzbl  -14(%ebp), %eax         #  38:     assign v0 <- t1
    movb    %al, v0                

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
