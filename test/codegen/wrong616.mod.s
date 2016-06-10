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
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 3 of <array 7 of <array 10 of <array 6 of <array 3 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <bool> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    movl    $72412, %eax            #   1:     if     72412 = 48917 goto 4
    movl    $48917, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_4                 
    jmp     l_f0_5                  #   2:     goto   5
l_f0_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f0_6                  #   5:     goto   6
l_f0_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f0_6:
    movzbl  -13(%ebp), %eax         #   9:     return t8
    jmp     l_f0_exit              
    movl    $83183, %eax            #  10:     assign v1 <- 83183
    movl    %eax, 8(%ebp)          
    movl    $1, %eax                #  11:     assign v3 <- 1
    movb    %al, 16(%ebp)          
    movl    $51719, %eax            #  12:     assign v1 <- 51719
    movl    %eax, 8(%ebp)          
    movl    $97, %eax               #  13:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f0_0                  #  14:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #  17:     if     99 <= 99 goto 13_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_13_if_true        
    jmp     l_f0_14_if_false        #  18:     goto   14_if_false
l_f0_13_if_true:
    jmp     l_f0_12                 #  20:     goto   12
l_f0_14_if_false:
l_f0_12:
    jmp     l_f0_18_if_false        #  23:     goto   18_if_false
l_f0_20_while_cond:
    jmp     l_f0_19                 #  25:     goto   19
    jmp     l_f0_20_while_cond      #  26:     goto   20_while_cond
l_f0_19:
    jmp     l_f0_24_if_false        #  28:     goto   24_if_false
    jmp     l_f0_22                 #  29:     goto   22
l_f0_24_if_false:
l_f0_22:
    movl    $98, %eax               #  32:     assign v4 <- 98
    movb    %al, -14(%ebp)         
    jmp     l_f0_16                 #  33:     goto   16
l_f0_18_if_false:
l_f0_16:

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
    #    -13(%ebp)   1  [ $t8       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 3 of <array 1 of <array 4 of <char>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    jmp     l_f1_4                  #   0:     goto   4
    movl    $98, %eax               #   1:     if     98 >= 100 goto 4
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f1_4                 
    jmp     l_f1_5                  #   2:     goto   5
l_f1_4:
    movl    $1, %eax                #   4:     assign t8 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_5:
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -13(%ebp)         
l_f1_6:
    movzbl  -13(%ebp), %eax         #   9:     if     t8 # 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #  10:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #  12:     goto   0
l_f1_2_if_false:
l_f1_0:
l_f1_10_while_cond:
    movl    $53752, %eax            #  16:     if     53752 >= 39435 goto 11_while_body
    movl    $39435, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_11_while_body     
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_while_body:
    movl    $100, %eax              #  19:     assign v2 <- 100
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_10_while_cond      #  21:     goto   10_while_cond
l_f1_9:
l_f1_16_while_cond:
    movl    $1, %eax                #  24:     if     1 # 1 goto 17_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_17_while_body     
    jmp     l_f1_15                 #  25:     goto   15
l_f1_17_while_body:
l_f1_20_while_cond:
    movl    $49976, %eax            #  28:     if     49976 # 21823 goto 21_while_body
    movl    $21823, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_21_while_body     
    jmp     l_f1_19                 #  29:     goto   19
l_f1_21_while_body:
    jmp     l_f1_20_while_cond      #  31:     goto   20_while_cond
l_f1_19:
l_f1_24_while_cond:
    jmp     l_f1_23                 #  34:     goto   23
    jmp     l_f1_24_while_cond      #  35:     goto   24_while_cond
l_f1_23:
    jmp     l_f1_exit              
l_f1_28_while_cond:
    jmp     l_f1_27                 #  39:     goto   27
    jmp     l_f1_27                 #  40:     goto   27
    jmp     l_f1_28_while_cond      #  41:     goto   28_while_cond
l_f1_27:
    jmp     l_f1_16_while_cond      #  43:     goto   16_while_cond
l_f1_15:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t9       <char> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]

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
    call    ReadInt                 #   0:     call   t8 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   1:     call   t9 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $97, %eax               #   2:     if     97 <= t9 goto 2
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #  10:     return t10
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #  11:     call   t11 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

l_f2_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <char> %ebp-18 ]
    #    -19(%ebp)   1  [ $t6       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t7       <int> %ebp-24 ]

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
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    call    dummyCHARfunc           #   5:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
l_test_5_while_cond:
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
    call    dummyBOOLfunc           #  11:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  12:     if     t2 = 1 goto 9_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_9_if_true       
    jmp     l_test_10_if_false      #  13:     goto   10_if_false
l_test_9_if_true:
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         
    movl    $70907, %eax            #  16:     if     70907 >= 17125 goto 13
    movl    $17125, %ebx           
    cmpl    %ebx, %eax             
    jge     l_test_13              
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $1, %eax                #  19:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $0, %eax                #  22:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_test_15:
    movzbl  -17(%ebp), %eax         #  24:     assign v0 <- t4
    movb    %al, v0                
    jmp     l_test_8                #  25:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyCHARfunc           #  28:     call   t5 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  29:     param  0 <- t5
    pushl   %eax                   
    call    f2                      #  30:     call   t6 <- f2
    addl    $4, %esp               
    movb    %al, -19(%ebp)         
l_test_19_while_cond:
    call    dummyINTfunc            #  32:     call   t7 <- dummyINTfunc
    movl    %eax, -24(%ebp)        
    movl    $62030, %eax            #  33:     if     62030 < t7 goto 20_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  34:     goto   18
l_test_20_while_body:
l_test_23_while_cond:
    jmp     l_test_22               #  37:     goto   22
    jmp     l_test_23_while_cond    #  38:     goto   23_while_cond
l_test_22:
    movl    $0, %eax                #  40:     assign v0 <- 0
    movb    %al, v0                
    jmp     l_test_19_while_cond    #  41:     goto   19_while_cond
l_test_18:
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
