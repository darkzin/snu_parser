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
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]

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
    movl    $97, %eax               #   0:     return 97
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   2:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t3 > 92297 goto 3_if_true
    movl    $92297, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    movl    $36692, %eax            #   6:     if     36692 > 13369 goto 7_if_true
    movl    $13369, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
    jmp     l_f0_2                  #  12:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     mul    t3 <- t2, 27830
    movl    $27830, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     return t3
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   3:     goto   3_if_false
    call    dummyINTfunc            #   4:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $47381, %eax            #   5:     return 47381
    jmp     l_f1_exit              
l_f1_7_while_cond:
    jmp     l_f1_7_while_cond       #   7:     goto   7_while_cond
    jmp     l_f1_1                  #   8:     goto   1
l_f1_3_if_false:
l_f1_1:
l_f1_10_while_cond:
l_f1_13_while_cond:
    jmp     l_f1_12                 #  13:     goto   12
    jmp     l_f1_13_while_cond      #  14:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_15                 #  16:     goto   15
l_f1_15:
    jmp     l_f1_10_while_cond      #  18:     goto   10_while_cond

l_f1_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t2 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $32273, %eax            #   4:     if     32273 # 10763 goto 4_if_true
    movl    $10763, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f2_4_if_true         
    jmp     l_f2_5_if_false         #   5:     goto   5_if_false
l_f2_4_if_true:
    jmp     l_f2_3                  #   7:     goto   3
l_f2_5_if_false:
l_f2_3:
    jmp     l_f2_0                  #  10:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_8_while_cond:
    call    dummyBOOLfunc           #  14:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  15:     if     t3 = 1 goto 9_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_9_while_body      
    jmp     l_f2_9_while_body       #  16:     goto   9_while_body
    jmp     l_f2_7                  #  17:     goto   7
l_f2_9_while_body:
    jmp     l_f2_8_while_cond       #  19:     goto   8_while_cond
l_f2_7:
l_f2_13_while_cond:
    jmp     l_f2_14_while_body      #  22:     goto   14_while_body
    jmp     l_f2_12                 #  23:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  25:     goto   13_while_cond
l_f2_12:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]

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
    call    ReadInt                 #   0:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_2_if_true        #   1:     goto   2_if_true
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
l_test_7_while_cond:
    jmp     l_test_6                #   9:     goto   6
    call    dummyBOOLfunc           #  10:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movl    $76364, %eax            #  11:     if     76364 >= 14656 goto 14_if_true
    movl    $14656, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_14_if_true      
    jmp     l_test_15_if_false      #  12:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  14:     goto   13
l_test_15_if_false:
l_test_13:
    jmp     l_test_exit            
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    jmp     l_test_exit            
    movl    $99, %eax               #  21:     if     99 >= 99 goto 20_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_20_if_true      
    jmp     l_test_21_if_false      #  22:     goto   21_if_false
l_test_20_if_true:
    movl    $100, %eax              #  24:     if     100 = 99 goto 24_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_24_if_true      
    jmp     l_test_25_if_false      #  25:     goto   25_if_false
l_test_24_if_true:
    jmp     l_test_29_if_false      #  27:     goto   29_if_false
    jmp     l_test_27               #  28:     goto   27
l_test_29_if_false:
l_test_27:
    movl    $1, %eax                #  31:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_23               #  33:     goto   23
l_test_25_if_false:
l_test_23:
    jmp     l_test_19               #  36:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_34_if_false      #  39:     goto   34_if_false
l_test_36_while_cond:
    movl    $22492, %eax            #  41:     if     22492 > 95607 goto 37_while_body
    movl    $95607, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_37_while_body   
    jmp     l_test_35               #  42:     goto   35
l_test_37_while_body:
    jmp     l_test_36_while_cond    #  44:     goto   36_while_cond
l_test_35:
l_test_40_while_cond:
    movl    $100, %eax              #  47:     if     100 < 100 goto 41_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_41_while_body   
    jmp     l_test_39               #  48:     goto   39
l_test_41_while_body:
    jmp     l_test_40_while_cond    #  50:     goto   40_while_cond
l_test_39:
    jmp     l_test_32               #  52:     goto   32
l_test_34_if_false:
l_test_32:

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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
