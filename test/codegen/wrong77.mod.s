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
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #    -16(%ebp)   4  [ $v3       <int> %ebp-16 ]

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
    movl    $91678, %eax            #   1:     assign v3 <- 91678
    movl    %eax, -16(%ebp)        
    jmp     l_f0_6_if_false         #   2:     goto   6_if_false
    jmp     l_f0_4                  #   3:     goto   4
l_f0_6_if_false:
l_f0_4:
l_f0_8_while_cond:
    movl    $100, %eax              #   7:     if     100 > 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f0_9_while_body      
    jmp     l_f0_7                  #   8:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #  10:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    jmp     l_f0_exit              
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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <char> %ebp-18 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]

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
    movl    $22276, %eax            #   0:     div    t2 <- 22276, 12596
    movl    $12596, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $92534, %eax            #   1:     if     92534 > t2 goto 1_if_true
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   2:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_exit              
l_f1_6_while_cond:
    movl    $5326, %eax             #   6:     if     5326 <= 48061 goto 7_while_body
    movl    $48061, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_while_body      
    jmp     l_f1_5                  #   7:     goto   5
l_f1_7_while_body:
    jmp     l_f1_6_while_cond       #   9:     goto   6_while_cond
l_f1_5:
    jmp     l_f1_9                  #  11:     goto   9
l_f1_9:
l_f1_13_while_cond:
    movl    $98, %eax               #  14:     if     98 >= 98 goto 14_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f1_14_while_body     
    jmp     l_f1_12                 #  15:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  17:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_exit              
    jmp     l_f1_0                  #  20:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  23:     call   t3 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    dummyCHARfunc           #  24:     call   t4 <- dummyCHARfunc
    movb    %al, -18(%ebp)         
    movzbl  -18(%ebp), %eax         #  25:     param  0 <- t4
    pushl   %eax                   
    call    WriteChar               #  26:     call   WriteChar
    addl    $4, %esp               

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #      8(%ebp)   1  [ %v2       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 2 of <array 8 of <array 8 of <array 6 of <array 3 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 3 of <array 7 of <array 9 of <array 5 of <array 8 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 8 of <array 7 of <array 7 of <array 2 of <array 4 of <int>>>>>>> %ebp+20 ]

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
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t2
    movb    %al, 8(%ebp)           
    call    dummyCHARfunc           #   2:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     return t3
    jmp     l_f2_exit              
    jmp     l_f2_3_if_true          #   4:     goto   3_if_true
    jmp     l_f2_4_if_false         #   5:     goto   4_if_false
l_f2_3_if_true:
    movl    $99, %eax               #   7:     if     99 >= 99 goto 11_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_11_if_true        
    jmp     l_f2_12_if_false        #   8:     goto   12_if_false
l_f2_11_if_true:
    jmp     l_f2_10                 #  10:     goto   10
l_f2_12_if_false:
l_f2_10:
l_f2_15_while_cond:
    jmp     l_f2_14                 #  14:     goto   14
    jmp     l_f2_15_while_cond      #  15:     goto   15_while_cond
l_f2_14:
l_f2_18_while_cond:
    jmp     l_f2_18_while_cond      #  18:     goto   18_while_cond
    movl    $99, %eax               #  19:     return 99
    jmp     l_f2_exit              
    jmp     l_f2_2                  #  20:     goto   2
l_f2_4_if_false:
l_f2_2:

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
l_test_1_while_cond:
    jmp     l_test_0                #   1:     goto   0
l_test_4_while_cond:
    movl    $83133, %eax            #   3:     if     83133 < 62261 goto 5_while_body
    movl    $62261, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_5_while_body    
    jmp     l_test_3                #   4:     goto   3
l_test_5_while_body:
    jmp     l_test_4_while_cond     #   6:     goto   4_while_cond
l_test_3:
l_test_8_while_cond:
    jmp     l_test_8_while_cond     #   9:     goto   8_while_cond
l_test_11_while_cond:
    jmp     l_test_11_while_cond    #  11:     goto   11_while_cond
    movl    $97, %eax               #  12:     assign v0 <- 97
    movb    %al, v0                
l_test_15_while_cond:
    jmp     l_test_14               #  14:     goto   14
    jmp     l_test_15_while_cond    #  15:     goto   15_while_cond
l_test_14:
    jmp     l_test_1_while_cond     #  17:     goto   1_while_cond
l_test_0:
l_test_18_while_cond:
    movl    $1, %eax                #  20:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_23               #  21:     goto   23
    movl    $0, %eax                #  22:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_23:
    movzbl  -13(%ebp), %eax         #  24:     if     t0 # 0 goto 19_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_19_while_body   
    jmp     l_test_17               #  25:     goto   17
l_test_19_while_body:
    jmp     l_test_exit            
    movl    $38177, %eax            #  28:     assign v1 <- 38177
    movl    %eax, v1               
    jmp     l_test_18_while_cond    #  29:     goto   18_while_cond
l_test_17:
    call    WriteLn                 #  31:     call   WriteLn
    movl    $26605, %eax            #  32:     if     26605 <= 63280 goto 29_if_true
    movl    $63280, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_29_if_true      
    jmp     l_test_30_if_false      #  33:     goto   30_if_false
l_test_29_if_true:
    jmp     l_test_exit            
    jmp     l_test_28               #  36:     goto   28
l_test_30_if_false:
l_test_28:
    jmp     l_test_exit            
    movl    $1, %eax                #  40:     if     1 # 0 goto 35
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_35              
    jmp     l_test_36               #  41:     goto   36
l_test_35:
    movl    $1, %eax                #  43:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_37               #  44:     goto   37
l_test_36:
    movl    $0, %eax                #  46:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_37:
    movzbl  -14(%ebp), %eax         #  48:     assign v2 <- t1
    movb    %al, v2                

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
    .align   4
v1:                                 # <int>
    .skip    4
v2:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
