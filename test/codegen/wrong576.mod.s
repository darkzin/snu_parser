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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]

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
l_f0_1_while_cond:
    movl    $99, %eax               #   1:     if     99 # 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_6_if_false         #   6:     goto   6_if_false
    jmp     l_f0_10_if_false        #   7:     goto   10_if_false
    jmp     l_f0_8                  #   8:     goto   8
l_f0_10_if_false:
l_f0_8:
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_if_false:
l_f0_4:
    call    dummyCHARfunc           #  14:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  15:     return t2
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 6 of <array 5 of <array 5 of <array 4 of <array 4 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 9 of <array 1 of <array 4 of <array 8 of <array 7 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 4 of <array 7 of <array 8 of <array 2 of <bool>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $v4       <bool> %ebp-15 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    movl    $68631, %eax            #   1:     if     68631 >= 94170 goto 4_if_true
    movl    $94170, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $5752, %eax             #   7:     if     5752 = 30112 goto 8_if_true
    movl    $30112, %ebx           
    cmpl    %ebx, %eax             
    je      l_f1_8_if_true         
    jmp     l_f1_9_if_false         #   8:     goto   9_if_false
l_f1_8_if_true:
    jmp     l_f1_7                  #  10:     goto   7
l_f1_9_if_false:
l_f1_7:
    jmp     l_f1_0                  #  13:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $100, %eax              #  16:     assign v3 <- 100
    movb    %al, -14(%ebp)         
l_f1_13_while_cond:
    jmp     l_f1_12                 #  18:     goto   12
    jmp     l_f1_15                 #  19:     goto   15
l_f1_15:
    movl    $97, %eax               #  21:     if     97 > 99 goto 19
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_19                
    jmp     l_f1_20                 #  22:     goto   20
l_f1_19:
    movl    $1, %eax                #  24:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_21                 #  25:     goto   21
l_f1_20:
    movl    $0, %eax                #  27:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_21:
    movzbl  -13(%ebp), %eax         #  29:     return t2
    jmp     l_f1_exit              
    movl    $1, %eax                #  30:     assign v4 <- 1
    movb    %al, -15(%ebp)         
    movl    $97, %eax               #  31:     if     97 # 100 goto 25_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jne     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  32:     goto   26_if_false
l_f1_25_if_true:
l_f1_29_while_cond:
    movl    $99, %eax               #  35:     if     99 <= 99 goto 30_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_30_while_body     
    jmp     l_f1_28                 #  36:     goto   28
l_f1_30_while_body:
    jmp     l_f1_29_while_cond      #  38:     goto   29_while_cond
l_f1_28:
    jmp     l_f1_24                 #  40:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_13_while_cond      #  43:     goto   13_while_cond
l_f1_12:

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 4 of <array 6 of <array 5 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]

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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_5                  #   2:     goto   5
    movl    $1, %eax                #   3:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $0, %eax                #   6:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_6:
    movl    $0, %eax                #   8:     if     0 = t2 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   9:     goto   0
l_f2_2_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
l_f2_0:
    jmp     l_f2_exit              
    movl    $48204, %eax            #  15:     div    t3 <- 48204, 99311
    movl    $99311, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  16:     assign v1 <- t3
    movl    %eax, -24(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]

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
l_test_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_5_if_false       #   7:     goto   5_if_false
l_test_7_while_cond:
    movl    $98, %eax               #   9:     if     98 <= 99 goto 8_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_8_while_body    
    jmp     l_test_6                #  10:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  12:     goto   7_while_cond
l_test_6:
    movl    $57406, %eax            #  14:     assign v0 <- 57406
    movl    %eax, v0               
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_14_while_cond:
    jmp     l_test_13               #  18:     goto   13
    jmp     l_test_14_while_cond    #  19:     goto   14_while_cond
l_test_13:
    jmp     l_test_3                #  21:     goto   3
l_test_5_if_false:
l_test_3:
l_test_21_while_cond:
    movl    $98, %eax               #  25:     if     98 # 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_22_while_body   
    jmp     l_test_20               #  26:     goto   20
l_test_22_while_body:
    jmp     l_test_21_while_cond    #  28:     goto   21_while_cond
l_test_20:
    jmp     l_test_exit            
l_test_26_while_cond:
    movl    $56167, %eax            #  32:     if     56167 = 49797 goto 27_while_body
    movl    $49797, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_27_while_body   
    jmp     l_test_25               #  33:     goto   25
l_test_27_while_body:
    jmp     l_test_26_while_cond    #  35:     goto   26_while_cond
l_test_25:
    jmp     l_test_exit            
    jmp     l_test_17               #  38:     goto   17
l_test_17:
    movl    $98, %eax               #  40:     if     98 # 99 goto 31_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_31_if_true      
    jmp     l_test_32_if_false      #  41:     goto   32_if_false
l_test_31_if_true:
    call    ReadInt                 #  43:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $97, %eax               #  44:     assign v1 <- 97
    movb    %al, v1                
l_test_37_while_cond:
    jmp     l_test_37_while_cond    #  46:     goto   37_while_cond
    jmp     l_test_30               #  47:     goto   30
l_test_32_if_false:
l_test_30:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
