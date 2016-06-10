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
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 4 of <array 8 of <array 7 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 7 of <array 7 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 4 of <array 3 of <array 2 of <array 8 of <char>>>>>>> %ebp+16 ]

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
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
    movl    $18226, %eax            #   2:     if     18226 > 13029 goto 2_if_true
    movl    $13029, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #   3:     goto   3_if_false
l_f0_2_if_true:
    movl    $97, %eax               #   5:     return 97
    jmp     l_f0_exit              
    movl    $97, %eax               #   6:     if     97 >= 97 goto 7_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    movl    $96974, %eax            #  15:     param  0 <- 96974
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               

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
    #    -16(%ebp)   4  [ $t10      <ptr(4) to <array 2 of <array 4 of <array 8 of <array 7 of <array 7 of <bool>>>>>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t11      <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 1 of <array 4 of <array 3 of <array 2 of <array 8 of <char>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 7 of <array 7 of <int>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 4 of <array 8 of <array 7 of <array 7 of <bool>>>>>>> %ebp-32 ]
    #    -33(%ebp)   1  [ $t6       <char> %ebp-33 ]
    #    -34(%ebp)   1  [ $t7       <bool> %ebp-34 ]
    #    -40(%ebp)   4  [ $t8       <ptr(4) to <array 1 of <array 4 of <array 3 of <array 2 of <array 8 of <char>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <ptr(4) to <array 5 of <array 3 of <array 10 of <array 7 of <array 7 of <int>>>>>>> %ebp-44 ]
    #   -3204(%ebp)  3160  [ $v2       <array 2 of <array 4 of <array 8 of <array 7 of <array 7 of <bool>>>>>> %ebp-3204 ]
    #   -32628(%ebp)  29424  [ $v3       <array 5 of <array 3 of <array 10 of <array 7 of <array 7 of <int>>>>>> %ebp-32628 ]
    #   -32844(%ebp)  216  [ $v4       <array 1 of <array 4 of <array 3 of <array 2 of <array 8 of <char>>>>>> %ebp-32844 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32832, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8208, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3204(%ebp)          # local array 'v2': 5 dimensions
    movl    $2,-3200(%ebp)          #   dimension 1: 2 elements
    movl    $4,-3196(%ebp)          #   dimension 2: 4 elements
    movl    $8,-3192(%ebp)          #   dimension 3: 8 elements
    movl    $7,-3188(%ebp)          #   dimension 4: 7 elements
    movl    $7,-3184(%ebp)          #   dimension 5: 7 elements
    movl    $5,-32628(%ebp)         # local array 'v3': 5 dimensions
    movl    $5,-32624(%ebp)         #   dimension 1: 5 elements
    movl    $3,-32620(%ebp)         #   dimension 2: 3 elements
    movl    $10,-32616(%ebp)        #   dimension 3: 10 elements
    movl    $7,-32612(%ebp)         #   dimension 4: 7 elements
    movl    $7,-32608(%ebp)         #   dimension 5: 7 elements
    movl    $5,-32844(%ebp)         # local array 'v4': 5 dimensions
    movl    $1,-32840(%ebp)         #   dimension 1: 1 elements
    movl    $4,-32836(%ebp)         #   dimension 2: 4 elements
    movl    $3,-32832(%ebp)         #   dimension 3: 3 elements
    movl    $2,-32828(%ebp)         #   dimension 4: 2 elements
    movl    $8,-32824(%ebp)         #   dimension 5: 8 elements

    # function body
l_f1_1_while_cond:
    movl    $49725, %eax            #   1:     if     49725 = 98320 goto 2_while_body
    movl    $98320, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
    leal    -32844(%ebp), %eax      #   4:     &()    t3 <- v4
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     param  2 <- t3
    pushl   %eax                   
    leal    -32628(%ebp), %eax      #   6:     &()    t4 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   7:     param  1 <- t4
    pushl   %eax                   
    leal    -3204(%ebp), %eax       #   8:     &()    t5 <- v2
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   9:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  10:     call   t6 <- f0
    addl    $12, %esp              
    movb    %al, -33(%ebp)         
    movl    $78928, %eax            #  11:     if     78928 = 9353 goto 6_if_true
    movl    $9353, %ebx            
    cmpl    %ebx, %eax             
    je      l_f1_6_if_true         
    jmp     l_f1_7_if_false         #  12:     goto   7_if_false
l_f1_6_if_true:
    jmp     l_f1_5                  #  14:     goto   5
l_f1_7_if_false:
l_f1_5:
    jmp     l_f1_1_while_cond       #  17:     goto   1_while_cond
l_f1_0:
    call    dummyBOOLfunc           #  19:     call   t7 <- dummyBOOLfunc
    movb    %al, -34(%ebp)         
    leal    -32844(%ebp), %eax      #  20:     &()    t8 <- v4
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  21:     param  2 <- t8
    pushl   %eax                   
    leal    -32628(%ebp), %eax      #  22:     &()    t9 <- v3
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  23:     param  1 <- t9
    pushl   %eax                   
    leal    -3204(%ebp), %eax       #  24:     &()    t10 <- v2
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  25:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  26:     call   t11 <- f0
    addl    $12, %esp              
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  27:     param  0 <- t11
    pushl   %eax                   
    call    WriteChar               #  28:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $32832, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 5 of <array 8 of <array 10 of <array 10 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #    -25(%ebp)   1  [ $v4       <char> %ebp-25 ]

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
    movl    $97, %eax               #   0:     assign v4 <- 97
    movb    %al, -25(%ebp)         
    movl    $98, %eax               #   1:     assign v4 <- 98
    movb    %al, -25(%ebp)         
    movl    $15822, %eax            #   2:     mul    t3 <- 15822, 6681
    movl    $6681, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   3:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    movl    -16(%ebp), %eax         #   4:     mul    t5 <- t3, t4
    movl    -20(%ebp), %ebx        
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     return t5
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
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
l_test_4_while_cond:
    movl    $97, %eax               #   1:     if     97 # 100 goto 5_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_test_5_while_body    
    jmp     l_test_3                #   2:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   4:     goto   4_while_cond
l_test_3:
    call    WriteLn                 #   6:     call   WriteLn
    jmp     l_test_0                #   7:     goto   0
l_test_0:
    jmp     l_test_exit            
    movl    $87191, %eax            #  10:     assign v0 <- 87191
    movl    %eax, v0               
    movl    $97, %eax               #  11:     if     97 = 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_14_if_true      
    jmp     l_test_15_if_false      #  12:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
    call    WriteLn                 #  17:     call   WriteLn
    movl    $99, %eax               #  18:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_19               #  19:     goto   19
l_test_19:
    call    dummyBOOLfunc           #  21:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #  22:     goto   8
l_test_8:
l_test_24_while_cond:
    movl    $9762, %eax             #  25:     add    t1 <- 9762, 80375
    movl    $80375, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  26:     if     t1 < 50173 goto 25_while_body
    movl    $50173, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_25_while_body   
    jmp     l_test_23               #  27:     goto   23
l_test_25_while_body:
    jmp     l_test_24_while_cond    #  29:     goto   24_while_cond
l_test_23:
l_test_28_while_cond:
    movl    $7235, %eax             #  32:     if     7235 < 26338 goto 29_while_body
    movl    $26338, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_29_while_body   
    jmp     l_test_27               #  33:     goto   27
l_test_29_while_body:
    call    ReadInt                 #  35:     call   t2 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $1, %eax                #  36:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
l_test_27:
l_test_34_while_cond:
    jmp     l_test_35_while_body    #  40:     goto   35_while_body
    jmp     l_test_35_while_body    #  41:     goto   35_while_body
    jmp     l_test_35_while_body    #  42:     goto   35_while_body
    jmp     l_test_35_while_body    #  43:     goto   35_while_body
    jmp     l_test_33               #  44:     goto   33
l_test_35_while_body:
l_test_41_while_cond:
    jmp     l_test_40               #  47:     goto   40
    jmp     l_test_41_while_cond    #  48:     goto   41_while_cond
l_test_40:
    movl    $99, %eax               #  50:     assign v1 <- 99
    movb    %al, v1                
    movl    $98, %eax               #  51:     if     98 # 99 goto 45_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_45_if_true      
    jmp     l_test_46_if_false      #  52:     goto   46_if_false
l_test_45_if_true:
    jmp     l_test_44               #  54:     goto   44
l_test_46_if_false:
l_test_44:
    jmp     l_test_34_while_cond    #  57:     goto   34_while_cond
l_test_33:
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
