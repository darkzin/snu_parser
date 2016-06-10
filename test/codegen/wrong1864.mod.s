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
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_f0_1_while_cond:
    movl    $44220, %eax            #   1:     assign v1 <- 44220
    movl    %eax, -32(%ebp)        
    jmp     l_f0_1_while_cond       #   2:     goto   1_while_cond
    movl    $34504, %eax            #   3:     sub    t2 <- 34504, 11838
    movl    $11838, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     sub    t3 <- t2, 42342
    movl    $42342, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   5:     add    t4 <- t3, 17051
    movl    $17051, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    $78422, %eax            #   6:     if     78422 >= t4 goto 7
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_7                 
    jmp     l_f0_8                  #   7:     goto   8
l_f0_7:
    movl    $1, %eax                #   9:     assign t5 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f0_9                  #  10:     goto   9
l_f0_8:
    movl    $0, %eax                #  12:     assign t5 <- 0
    movb    %al, -25(%ebp)         
l_f0_9:
    movzbl  -25(%ebp), %eax         #  14:     assign v2 <- t5
    movb    %al, -33(%ebp)         
    movl    $97, %eax               #  15:     if     97 = 99 goto 12_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  16:     goto   13_if_false
l_f0_12_if_true:
    movl    $0, %eax                #  18:     assign v2 <- 0
    movb    %al, -33(%ebp)         
    jmp     l_f0_18_if_false        #  19:     goto   18_if_false
    jmp     l_f0_16                 #  20:     goto   16
l_f0_18_if_false:
l_f0_16:
    jmp     l_f0_11                 #  23:     goto   11
l_f0_13_if_false:
l_f0_11:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
    #    -20(%ebp)   4  [ $v2       <int> %ebp-20 ]

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
    jmp     l_f1_1_if_true          #   0:     goto   1_if_true
    jmp     l_f1_1_if_true          #   1:     goto   1_if_true
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
    jmp     l_f1_2_if_false         #   3:     goto   2_if_false
    jmp     l_f1_2_if_false         #   4:     goto   2_if_false
    jmp     l_f1_2_if_false         #   5:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_0                  #   7:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $98, %eax               #  10:     if     98 # 99 goto 14_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  11:     goto   15_if_false
l_f1_14_if_true:
    jmp     l_f1_13                 #  13:     goto   13
l_f1_15_if_false:
l_f1_13:
    call    dummyBOOLfunc           #  16:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movl    $98, %eax               #  17:     return 98
    jmp     l_f1_exit              
    jmp     l_f1_21_if_false        #  18:     goto   21_if_false
    jmp     l_f1_19                 #  19:     goto   19
l_f1_21_if_false:
l_f1_19:
    movl    $46521, %eax            #  22:     if     46521 > 80375 goto 23_if_true
    movl    $80375, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_23_if_true        
    jmp     l_f1_24_if_false        #  23:     goto   24_if_false
l_f1_23_if_true:
    jmp     l_f1_22                 #  25:     goto   22
l_f1_24_if_false:
l_f1_22:
    jmp     l_f1_10                 #  28:     goto   10
l_f1_10:
    jmp     l_f1_28_if_false        #  30:     goto   28_if_false
    jmp     l_f1_28_if_false        #  31:     goto   28_if_false
    movl    $40496, %eax            #  32:     assign v2 <- 40496
    movl    %eax, -20(%ebp)        
    jmp     l_f1_26                 #  33:     goto   26
l_f1_28_if_false:
l_f1_26:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v1       <bool> %ebp-15 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $1, %eax                #   1:     return 1
    jmp     l_f2_exit              
    movl    $99, %eax               #   2:     if     99 < 100 goto 5
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   3:     goto   6
l_f2_5:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   6:     goto   7
l_f2_6:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  10:     assign v1 <- t2
    movb    %al, -15(%ebp)         
    jmp     l_f2_0                  #  11:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_11_while_body      #  15:     goto   11_while_body
    jmp     l_f2_11_while_body      #  16:     goto   11_while_body
    jmp     l_f2_9                  #  17:     goto   9
l_f2_11_while_body:
l_f2_15_while_cond:
    movl    $99, %eax               #  20:     if     99 <= 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_16_while_body     
    jmp     l_f2_14                 #  21:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  23:     goto   15_while_cond
l_f2_14:
    jmp     l_f2_10_while_cond      #  25:     goto   10_while_cond
l_f2_9:
    movl    $98, %eax               #  27:     if     98 # 98 goto 19_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  28:     goto   20_if_false
l_f2_19_if_true:
    movl    $63108, %eax            #  30:     if     63108 < 72242 goto 23
    movl    $72242, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_23                
    jmp     l_f2_24                 #  31:     goto   24
l_f2_23:
    movl    $1, %eax                #  33:     assign t3 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_25                 #  34:     goto   25
l_f2_24:
    movl    $0, %eax                #  36:     assign t3 <- 0
    movb    %al, -14(%ebp)         
l_f2_25:
    movzbl  -14(%ebp), %eax         #  38:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_18                 #  39:     goto   18
l_f2_20_if_false:
l_f2_18:

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
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, v0                
l_test_2_while_cond:
    movl    $97, %eax               #   2:     if     97 > 100 goto 3_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_test_3_while_body    
    jmp     l_test_1                #   3:     goto   1
l_test_3_while_body:
    movl    $41425, %eax            #   5:     if     41425 <= 82895 goto 6
    movl    $82895, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_6               
    jmp     l_test_7                #   6:     goto   7
l_test_6:
    movl    $1, %eax                #   8:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_8                #   9:     goto   8
l_test_7:
    movl    $0, %eax                #  11:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_8:
    movzbl  -13(%ebp), %eax         #  13:     assign v1 <- t0
    movb    %al, v1                
    jmp     l_test_12_if_false      #  14:     goto   12_if_false
    jmp     l_test_10               #  15:     goto   10
l_test_12_if_false:
l_test_10:
    jmp     l_test_2_while_cond     #  18:     goto   2_while_cond
l_test_1:
    jmp     l_test_exit            
    call    f2                      #  21:     call   t1 <- f2
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  22:     if     t1 = 1 goto 15_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_15_if_true      
    jmp     l_test_16_if_false      #  23:     goto   16_if_false
l_test_15_if_true:
    movl    $97, %eax               #  25:     if     97 < 100 goto 18_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_18_if_true      
    jmp     l_test_19_if_false      #  26:     goto   19_if_false
l_test_18_if_true:
    jmp     l_test_17               #  28:     goto   17
l_test_19_if_false:
l_test_17:
    jmp     l_test_14               #  31:     goto   14
l_test_16_if_false:
l_test_14:

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
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
