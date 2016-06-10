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
    #    -14(%ebp)   1  [ $t9       <bool> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 3 of <array 4 of <array 7 of <array 6 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <bool> %ebp+12 ]
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
    call    dummyBOOLfunc           #   0:     call   t8 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t8
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #   2:     call   t9 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $100, %eax              #   3:     assign v3 <- 100
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
    #    -13(%ebp)   1  [ $t8       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 10 of <array 9 of <array 6 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 9 of <array 6 of <array 1 of <array 6 of <array 9 of <bool>>>>>>> %ebp+16 ]

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
    movl    $37116, %eax            #   0:     if     37116 >= 91452 goto 1_if_true
    movl    $91452, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    call    dummyCHARfunc           #   4:     call   t8 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   5:     if     t8 = 98 goto 6_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_6_while_body      
    jmp     l_f1_4                  #   6:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   8:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_0                  #  10:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    ReadInt                 #  13:     call   t9 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t9       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]

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
    movl    $56006, %eax            #   0:     if     56006 > 72333 goto 1_if_true
    movl    $72333, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   3:     if     100 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_5_if_true         
    jmp     l_f2_6_if_false         #   4:     goto   6_if_false
l_f2_5_if_true:
    movl    $67632, %eax            #   6:     if     67632 >= 50991 goto 9_if_true
    movl    $50991, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_9_if_true         
    jmp     l_f2_10_if_false        #   7:     goto   10_if_false
l_f2_9_if_true:
    jmp     l_f2_8                  #   9:     goto   8
l_f2_10_if_false:
l_f2_8:
    movl    $100, %eax              #  12:     assign v1 <- 100
    movb    %al, 8(%ebp)           
    movl    $65252, %eax            #  13:     return 65252
    jmp     l_f2_exit              
    movl    $99, %eax               #  14:     if     99 # 97 goto 15_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_15_if_true        
    jmp     l_f2_16_if_false        #  15:     goto   16_if_false
l_f2_15_if_true:
    jmp     l_f2_14                 #  17:     goto   14
l_f2_16_if_false:
l_f2_14:
    jmp     l_f2_20_if_false        #  20:     goto   20_if_false
    jmp     l_f2_18                 #  21:     goto   18
l_f2_20_if_false:
l_f2_18:
    jmp     l_f2_4                  #  24:     goto   4
l_f2_6_if_false:
l_f2_4:
    jmp     l_f2_0                  #  27:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_22_while_cond:
    movl    $98, %eax               #  31:     if     98 > 100 goto 23_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f2_23_while_body     
    jmp     l_f2_21                 #  32:     goto   21
l_f2_23_while_body:
    movl    $36172, %eax            #  34:     add    t8 <- 36172, 68505
    movl    $68505, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     assign v2 <- t8
    movl    %eax, 12(%ebp)         
    jmp     l_f2_22_while_cond      #  36:     goto   22_while_cond
l_f2_21:
    call    ReadInt                 #  38:     call   t9 <- ReadInt
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  39:     mul    t10 <- t9, 12571
    movl    $12571, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  40:     div    t11 <- t10, 79707
    movl    $79707, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  41:     return t11
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t4       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $t5       <bool> %ebp-30 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 3 of <array 4 of <array 7 of <array 6 of <array 4 of <char>>>>>>> %ebp-36 ]
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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
    movl    $92285, %eax            #   2:     if     92285 < 7780 goto 5_if_true
    movl    $7780, %ebx            
    cmpl    %ebx, %eax             
    jl      l_test_5_if_true       
    jmp     l_test_6_if_false       #   3:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   5:     goto   4
l_test_6_if_false:
l_test_4:
    call    dummyINTfunc            #   8:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    movl    $42235, %eax            #  11:     if     42235 <= 87826 goto 10_if_true
    movl    $87826, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_10_if_true      
    jmp     l_test_11_if_false      #  12:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_exit            
    call    ReadInt                 #  15:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_9                #  16:     goto   9
l_test_11_if_false:
l_test_9:
    movl    $76444, %eax            #  19:     mul    t2 <- 76444, 74537
    movl    $74537, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  20:     div    t3 <- t2, 50070
    movl    $50070, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  21:     assign v0 <- t3
    movl    %eax, v0               
    call    dummyBOOLfunc           #  22:     call   t4 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movl    $100, %eax              #  23:     if     100 > 98 goto 18
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_18              
    jmp     l_test_19               #  24:     goto   19
l_test_18:
    movl    $1, %eax                #  26:     assign t5 <- 1
    movb    %al, -30(%ebp)         
    jmp     l_test_20               #  27:     goto   20
l_test_19:
    movl    $0, %eax                #  29:     assign t5 <- 0
    movb    %al, -30(%ebp)         
l_test_20:
    movzbl  -30(%ebp), %eax         #  31:     param  1 <- t5
    pushl   %eax                   
    leal    v1, %eax                #  32:     &()    t6 <- v1
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  33:     param  0 <- t6
    pushl   %eax                   
    call    f0                      #  34:     call   t7 <- f0
    addl    $8, %esp               
    movl    %eax, -40(%ebp)        
    jmp     l_test_24_if_false      #  35:     goto   24_if_false
l_test_27_while_cond:
    movl    $80427, %eax            #  37:     if     80427 # 27452 goto 28_while_body
    movl    $27452, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_28_while_body   
    jmp     l_test_26               #  38:     goto   26
l_test_28_while_body:
    jmp     l_test_27_while_cond    #  40:     goto   27_while_cond
l_test_26:
    jmp     l_test_22               #  42:     goto   22
l_test_24_if_false:
l_test_22:

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
v0:                                 # <int>
    .skip    4
v1:                                 # <array 3 of <array 4 of <array 7 of <array 6 of <array 4 of <char>>>>>>
    .long    5
    .long    3
    .long    4
    .long    7
    .long    6
    .long    4
    .skip 2016








    # end of global data section
    #-----------------------------------------

    .end
##################################################
