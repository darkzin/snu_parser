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
    #    -13(%ebp)   1  [ $t5       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
l_f0_1_if_true:
    movl    $100, %eax              #   2:     return 100
    jmp     l_f0_exit              
    jmp     l_f0_0                  #   3:     goto   0
l_f0_0:
    call    dummyCHARfunc           #   5:     call   t5 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyProcedure          #   6:     call   dummyProcedure

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
    #    -16(%ebp)   4  [ $t5       <ptr(4) to <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t7       <ptr(4) to <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t8       <char> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #    -26(%ebp)   1  [ $v2       <bool> %ebp-26 ]
    #   -543711220(%ebp)  543711192  [ $v3       <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>> %ebp-543711220 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $543711208, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $135927802, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-543711220(%ebp)     # local array 'v3': 5 dimensions
    movl    $14,-543711216(%ebp)    #   dimension 1: 14 elements
    movl    $82,-543711212(%ebp)    #   dimension 2: 82 elements
    movl    $99,-543711208(%ebp)    #   dimension 3: 99 elements
    movl    $52,-543711204(%ebp)    #   dimension 4: 52 elements
    movl    $92,-543711200(%ebp)    #   dimension 5: 92 elements

    # function body
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
l_f1_4_while_cond:
    movl    $1, %eax                #   2:     if     1 = 0 goto 5_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    movl    $1, %eax                #   7:     assign v2 <- 1
    movb    %al, -26(%ebp)         
l_f1_9_while_cond:
    jmp     l_f1_8                  #   9:     goto   8
    jmp     l_f1_9_while_cond       #  10:     goto   9_while_cond
l_f1_8:
    movl    $65556, %eax            #  12:     return 65556
    jmp     l_f1_exit              
    movl    $52661, %eax            #  13:     return 52661
    jmp     l_f1_exit              
    call    dummyProcedure          #  14:     call   dummyProcedure
    jmp     l_f1_0                  #  15:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $97, %eax               #  18:     if     97 <= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  19:     goto   16_if_false
l_f1_15_if_true:
l_f1_19_while_cond:
    movl    $64285, %eax            #  22:     if     64285 >= 42764 goto 20_while_body
    movl    $42764, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_20_while_body     
    jmp     l_f1_18                 #  23:     goto   18
l_f1_20_while_body:
    jmp     l_f1_19_while_cond      #  25:     goto   19_while_cond
l_f1_18:
    movl    $2044, %eax             #  27:     return 2044
    jmp     l_f1_exit              
    movl    $0, %eax                #  28:     assign v2 <- 0
    movb    %al, -26(%ebp)         
l_f1_25_while_cond:
    jmp     l_f1_25_while_cond      #  30:     goto   25_while_cond
    jmp     l_f1_14                 #  31:     goto   14
l_f1_16_if_false:
l_f1_14:
    leal    -543711220(%ebp), %eax  #  34:     &()    t5 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  35:     param  1 <- t5
    pushl   %eax                   
    movl    $46762, %eax            #  36:     param  0 <- 46762
    pushl   %eax                   
    call    f0                      #  37:     call   t6 <- f0
    addl    $8, %esp               
    movb    %al, -17(%ebp)         
    leal    -543711220(%ebp), %eax  #  38:     &()    t7 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  1 <- t7
    pushl   %eax                   
    movl    $9283, %eax             #  40:     param  0 <- 9283
    pushl   %eax                   
    call    f0                      #  41:     call   t8 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -17(%ebp), %eax         #  42:     if     t6 > t8 goto 28_if_true
    movzbl  -25(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_28_if_true        
    jmp     l_f1_29_if_false        #  43:     goto   29_if_false
l_f1_28_if_true:
    jmp     l_f1_27                 #  45:     goto   27
l_f1_29_if_false:
l_f1_27:

l_f1_exit:
    # epilogue
    addl    $543711208, %esp        # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t8       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t9       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
    movl    $15496, %eax            #   0:     sub    t5 <- 15496, 70870
    movl    $70870, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t6 <- t5, 10367
    movl    $10367, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t6
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   3:     call   t7 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movl    $100, %eax              #   4:     param  1 <- 100
    pushl   %eax                   
    movl    $1501, %eax             #   5:     param  0 <- 1501
    pushl   %eax                   
    call    f1                      #   6:     call   t8 <- f1
    addl    $8, %esp               
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     add    t9 <- t8, 80187
    movl    $80187, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   8:     return t9
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <char> %ebp-29 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #   1:     assign v0 <- 98
    movb    %al, v0                
l_test_6_while_cond:
    movl    $99, %eax               #   3:     if     99 >= 97 goto 7_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    movl    $100, %eax              #   8:     assign v0 <- 100
    movb    %al, v0                
    leal    v1, %eax                #   9:     &()    t1 <- v1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  10:     param  1 <- t1
    pushl   %eax                   
    call    dummyINTfunc            #  11:     call   t2 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $79459, %eax            #  12:     sub    t3 <- 79459, t2
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  0 <- t3
    pushl   %eax                   
    call    f0                      #  14:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -29(%ebp)         
    jmp     l_test_0                #  15:     goto   0
l_test_0:
l_test_12_while_cond:
    jmp     l_test_11               #  18:     goto   11
    jmp     l_test_exit            
    jmp     l_test_12_while_cond    #  20:     goto   12_while_cond
l_test_11:
l_test_17_while_cond:
    jmp     l_test_16               #  23:     goto   16
    jmp     l_test_16               #  24:     goto   16
l_test_22_while_cond:
    jmp     l_test_21               #  26:     goto   21
    jmp     l_test_22_while_cond    #  27:     goto   22_while_cond
l_test_21:
    movl    $1, %eax                #  29:     assign v2 <- 1
    movb    %al, v2                
    movl    $98, %eax               #  30:     assign v0 <- 98
    movb    %al, v0                
    movl    $1, %eax                #  31:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_17_while_cond    #  32:     goto   17_while_cond
l_test_16:

l_test_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    .align   4
v1:                                 # <array 14 of <array 82 of <array 99 of <array 52 of <array 92 of <bool>>>>>>
    .long    5
    .long   14
    .long   82
    .long   99
    .long   52
    .long   92
    .skip 543711168
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
