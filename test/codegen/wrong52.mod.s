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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 6 of <array 1 of <array 3 of <array 1 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 4 of <array 5 of <char>>>>>>> %ebp+20 ]

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
    jmp     l_f0_1                  #   0:     goto   1
l_f0_1:
    movl    $1, %eax                #   2:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_3                  #   3:     goto   3
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f0_3:
    movzbl  -13(%ebp), %eax         #   6:     return t2
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   7:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   8:     if     t3 = 1 goto 10
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10                
    jmp     l_f0_11                 #   9:     goto   11
l_f0_10:
    movl    $1, %eax                #  11:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_12                 #  12:     goto   12
l_f0_11:
    movl    $0, %eax                #  14:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f0_12:
    movzbl  -15(%ebp), %eax         #  16:     return t4
    jmp     l_f0_exit              
    movl    $100, %eax              #  17:     if     100 <= 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_15_if_true        
    jmp     l_f0_16_if_false        #  18:     goto   16_if_false
l_f0_15_if_true:
l_f0_19_while_cond:
    jmp     l_f0_18                 #  21:     goto   18
    jmp     l_f0_19_while_cond      #  22:     goto   19_while_cond
l_f0_18:
l_f0_22_while_cond:
    movl    $4608, %eax             #  25:     if     4608 <= 86112 goto 23_while_body
    movl    $86112, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_23_while_body     
    jmp     l_f0_21                 #  26:     goto   21
l_f0_23_while_body:
    jmp     l_f0_22_while_cond      #  28:     goto   22_while_cond
l_f0_21:
    movl    $56697, %eax            #  30:     if     56697 < 71169 goto 26_if_true
    movl    $71169, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_26_if_true        
    jmp     l_f0_27_if_false        #  31:     goto   27_if_false
l_f0_26_if_true:
    jmp     l_f0_25                 #  33:     goto   25
l_f0_27_if_false:
l_f0_25:
    call    dummyINTfunc            #  36:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
l_f0_31_while_cond:
    jmp     l_f0_31_while_cond      #  38:     goto   31_while_cond
    jmp     l_f0_14                 #  39:     goto   14
l_f0_16_if_false:
l_f0_14:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 4 of <array 10 of <array 6 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 4 of <array 6 of <array 1 of <array 1 of <array 9 of <int>>>>>>> %ebp+16 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t2
    jmp     l_f1_exit              
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    movl    $97, %eax               #   4:     if     97 = 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   5:     goto   4_if_false
l_f1_3_if_true:
l_f1_7_while_cond:
    jmp     l_f1_6                  #   8:     goto   6
    jmp     l_f1_7_while_cond       #   9:     goto   7_while_cond
l_f1_6:
l_f1_10_while_cond:
    jmp     l_f1_9                  #  12:     goto   9
    jmp     l_f1_10_while_cond      #  13:     goto   10_while_cond
l_f1_9:
    movl    $9570, %eax             #  15:     param  0 <- 9570
    pushl   %eax                   
    call    WriteInt                #  16:     call   WriteInt
    addl    $4, %esp               
    jmp     l_f1_2                  #  17:     goto   2
l_f1_4_if_false:
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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 5 of <array 2 of <array 4 of <array 5 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t4       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 2 of <array 6 of <array 1 of <array 3 of <array 1 of <char>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 10 of <array 1 of <array 7 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 9 of <array 3 of <array 6 of <array 8 of <array 3 of <char>>>>>>> %ebp+20 ]
    #   -100(%ebp)  60  [ $v6       <array 2 of <array 6 of <array 1 of <array 3 of <array 1 of <char>>>>>> %ebp-100 ]
    #   -924(%ebp)  824  [ $v7       <array 4 of <array 5 of <array 2 of <array 4 of <array 5 of <char>>>>>> %ebp-924 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $912, %esp              # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $228, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-100(%ebp)           # local array 'v6': 5 dimensions
    movl    $2,-96(%ebp)            #   dimension 1: 2 elements
    movl    $6,-92(%ebp)            #   dimension 2: 6 elements
    movl    $1,-88(%ebp)            #   dimension 3: 1 elements
    movl    $3,-84(%ebp)            #   dimension 4: 3 elements
    movl    $1,-80(%ebp)            #   dimension 5: 1 elements
    movl    $5,-924(%ebp)           # local array 'v7': 5 dimensions
    movl    $4,-920(%ebp)           #   dimension 1: 4 elements
    movl    $5,-916(%ebp)           #   dimension 2: 5 elements
    movl    $2,-912(%ebp)           #   dimension 3: 2 elements
    movl    $4,-908(%ebp)           #   dimension 4: 4 elements
    movl    $5,-904(%ebp)           #   dimension 5: 5 elements

    # function body
l_f2_4_while_cond:
    movl    $98, %eax               #   1:     if     98 > 98 goto 5_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_5_while_body      
    jmp     l_f2_3                  #   2:     goto   3
l_f2_5_while_body:
    jmp     l_f2_4_while_cond       #   4:     goto   4_while_cond
l_f2_3:
    movl    $13499, %eax            #   6:     return 13499
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   7:     goto   0
l_f2_0:
    movl    $64535, %eax            #   9:     if     64535 <= 87695 goto 9_if_true
    movl    $87695, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #  10:     goto   10_if_false
l_f2_9_if_true:
    leal    -924(%ebp), %eax        #  12:     &()    t2 <- v7
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  13:     param  3 <- t2
    pushl   %eax                   
    movl    $45454, %eax            #  14:     mul    t3 <- 45454, 28724
    movl    $28724, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  15:     param  2 <- t3
    pushl   %eax                   
    movl    $76091, %eax            #  16:     if     76091 >= 74308 goto 13
    movl    $74308, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_13                
    jmp     l_f2_14                 #  17:     goto   14
l_f2_13:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_15                 #  20:     goto   15
l_f2_14:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -21(%ebp)         
l_f2_15:
    movzbl  -21(%ebp), %eax         #  24:     param  1 <- t4
    pushl   %eax                   
    leal    -100(%ebp), %eax        #  25:     &()    t5 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  27:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -29(%ebp)         
l_f2_18_while_cond:
    movl    $98, %eax               #  29:     if     98 <= 98 goto 19_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_19_while_body     
    jmp     l_f2_17                 #  30:     goto   17
l_f2_19_while_body:
    jmp     l_f2_18_while_cond      #  32:     goto   18_while_cond
l_f2_17:
    jmp     l_f2_8                  #  34:     goto   8
l_f2_10_if_false:
l_f2_8:
l_f2_22_while_cond:
    movl    $99, %eax               #  38:     if     99 > 99 goto 23_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_23_while_body     
    jmp     l_f2_21                 #  39:     goto   21
l_f2_23_while_body:
l_f2_26_while_cond:
    movl    $89610, %eax            #  42:     if     89610 >= 24153 goto 27_while_body
    movl    $24153, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_27_while_body     
    jmp     l_f2_25                 #  43:     goto   25
l_f2_27_while_body:
    jmp     l_f2_26_while_cond      #  45:     goto   26_while_cond
l_f2_25:
    call    dummyINTfunc            #  47:     call   t7 <- dummyINTfunc
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #  48:     call   t8 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  49:     return t8
    jmp     l_f2_exit              
    jmp     l_f2_22_while_cond      #  50:     goto   22_while_cond
l_f2_21:

l_f2_exit:
    # epilogue
    addl    $912, %esp              # remove locals
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
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     assign v1 <- t1
    movb    %al, v1                
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $65150, %eax            #   6:     if     65150 > 80590 goto 5_if_true
    movl    $80590, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_5_if_true       
    jmp     l_test_6_if_false       #   7:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_10_if_false      #   9:     goto   10_if_false
    jmp     l_test_8                #  10:     goto   8
l_test_10_if_false:
l_test_8:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $1, %eax                #  15:     assign v2 <- 1
    movb    %al, v2                
    jmp     l_test_4                #  16:     goto   4
l_test_6_if_false:
l_test_4:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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
