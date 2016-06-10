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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 18 of <array 83 of <array 20 of <array 84 of <array 20 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 10 of <array 20 of <array 71 of <array 20 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_3_if_false         #   1:     goto   3_if_false
    movl    $1, %eax                #   2:     if     1 # 1 goto 5
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f0_5                 
    jmp     l_f0_6                  #   3:     goto   6
l_f0_5:
    movl    $1, %eax                #   5:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
l_f0_6:
    movl    $0, %eax                #   8:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #  10:     assign v2 <- t1
    movb    %al, 16(%ebp)          
    jmp     l_f0_1                  #  11:     goto   1
l_f0_3_if_false:
l_f0_1:
    jmp     l_f0_11                 #  14:     goto   11
    movl    $1, %eax                #  15:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_12                 #  16:     goto   12
l_f0_11:
    movl    $0, %eax                #  18:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_f0_12:
    movzbl  -15(%ebp), %eax         #  20:     return t2
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]

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
l_f1_1_while_cond:
    movl    $91568, %eax            #   1:     mul    t0 <- 91568, 24478
    movl    $24478, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $30817, %eax            #   2:     if     30817 >= t0 goto 2_while_body
    movl    -16(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    movl    $100, %eax              #   5:     if     100 > 99 goto 5
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_5                 
    jmp     l_f1_6                  #   6:     goto   6
l_f1_5:
    movl    $1, %eax                #   8:     assign t1 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_7                  #   9:     goto   7
l_f1_6:
    movl    $0, %eax                #  11:     assign t1 <- 0
    movb    %al, -17(%ebp)         
l_f1_7:
    movzbl  -17(%ebp), %eax         #  13:     assign v0 <- t1
    movb    %al, 8(%ebp)           
    movl    $98, %eax               #  14:     if     98 < 99 goto 10_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  15:     goto   11_if_false
l_f1_10_if_true:
    jmp     l_f1_9                  #  17:     goto   9
l_f1_11_if_false:
l_f1_9:
    movl    $97, %eax               #  20:     assign v1 <- 97
    movb    %al, 12(%ebp)          
    call    dummyBOOLfunc           #  21:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_f1_1_while_cond       #  22:     goto   1_while_cond
l_f1_0:
    movl    $0, %eax                #  24:     if     0 = 1 goto 16_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_16_if_true        
    jmp     l_f1_17_if_false        #  25:     goto   17_if_false
l_f1_16_if_true:
    call    dummyBOOLfunc           #  27:     call   t3 <- dummyBOOLfunc
    movb    %al, -19(%ebp)         
    jmp     l_f1_exit              
l_f1_22_while_cond:
    jmp     l_f1_21                 #  30:     goto   21
    jmp     l_f1_22_while_cond      #  31:     goto   22_while_cond
l_f1_21:
    movl    $97, %eax               #  33:     if     97 <= 99 goto 25_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  34:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  36:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_15                 #  39:     goto   15
l_f1_17_if_false:
l_f1_15:
    call    dummyINTfunc            #  42:     call   t4 <- dummyINTfunc
    movl    %eax, -24(%ebp)        

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 54 of <array 50 of <array 34 of <array 66 of <array 67 of <int>>>>>>> %ebp+12 ]
    #    -18(%ebp)   1  [ $v2       <bool> %ebp-18 ]

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
    movl    $1, %eax                #   1:     assign v2 <- 1
    movb    %al, -18(%ebp)         
    call    dummyCHARfunc           #   2:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         

l_f2_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $98, %eax               #   0:     if     98 >= 100 goto 1_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $99, %eax               #   3:     if     99 <= 99 goto 5_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_8                #   9:     goto   8
l_test_8:
l_test_12_while_cond:
    movl    $42420, %eax            #  12:     if     42420 > 37563 goto 13_while_body
    movl    $37563, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_13_while_body   
    jmp     l_test_11               #  13:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_0                #  17:     goto   0
l_test_2_if_false:
l_test_0:
l_test_16_while_cond:
    jmp     l_test_17_while_body    #  21:     goto   17_while_body
    jmp     l_test_17_while_body    #  22:     goto   17_while_body
    jmp     l_test_15               #  23:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
l_test_15:
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
