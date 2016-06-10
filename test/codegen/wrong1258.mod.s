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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <char> %ebp-18 ]
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
    movl    $1231, %eax             #   0:     if     1231 = 38765 goto 1_if_true
    movl    $38765, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    call    dummyINTfunc            #   3:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   4:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_f0_0                  #   5:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $99, %eax               #   8:     assign v0 <- 99
    movb    %al, -18(%ebp)         
    jmp     l_f0_8_if_true          #   9:     goto   8_if_true
    jmp     l_f0_8_if_true          #  10:     goto   8_if_true
    jmp     l_f0_9_if_false         #  11:     goto   9_if_false
l_f0_8_if_true:
    movl    $81453, %eax            #  13:     assign v1 <- 81453
    movl    %eax, -24(%ebp)        
    movl    $30256, %eax            #  14:     return 30256
    jmp     l_f0_exit              
    jmp     l_f0_7                  #  15:     goto   7
l_f0_9_if_false:
l_f0_7:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 46 of <array 22 of <array 56 of <array 74 of <array 24 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 79 of <array 65 of <array 31 of <array 75 of <array 90 of <bool>>>>>>> %ebp+16 ]

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
l_f1_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t1 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    jmp     l_f1_1_while_cond       #   5:     goto   1_while_cond
l_f1_0:
    jmp     l_f1_5_if_false         #   7:     goto   5_if_false
    jmp     l_f1_6                  #   8:     goto   6
l_f1_6:
l_f1_10_while_cond:
    movl    $80667, %eax            #  11:     if     80667 <= 79983 goto 11_while_body
    movl    $79983, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_11_while_body     
    jmp     l_f1_9                  #  12:     goto   9
l_f1_11_while_body:
    jmp     l_f1_10_while_cond      #  14:     goto   10_while_cond
l_f1_9:
    jmp     l_f1_3                  #  16:     goto   3
l_f1_5_if_false:
l_f1_3:
    movl    $98, %eax               #  19:     if     98 < 98 goto 14_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_14_if_true        
    jmp     l_f1_15_if_false        #  20:     goto   15_if_false
l_f1_14_if_true:
l_f1_18_while_cond:
    call    dummyCHARfunc           #  23:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  24:     if     99 < t2 goto 19_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_19_while_body     
    jmp     l_f1_17                 #  25:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  27:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_13                 #  29:     goto   13
l_f1_15_if_false:
l_f1_13:

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
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 76 of <array 84 of <array 74 of <array 58 of <array 6 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 12 of <array 91 of <array 1 of <array 20 of <array 65 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 60 of <array 64 of <array 71 of <array 62 of <array 28 of <char>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 60 of <array 12 of <array 16 of <array 62 of <array 71 of <bool>>>>>>> %ebp+20 ]
    #    -13(%ebp)   1  [ $v4       <char> %ebp-13 ]

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
    jmp     l_f2_exit              
    jmp     l_f2_3_if_false         #   1:     goto   3_if_false
    movl    $98, %eax               #   2:     assign v4 <- 98
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
    jmp     l_f2_1                  #   4:     goto   1
l_f2_3_if_false:
l_f2_1:
    jmp     l_f2_exit              

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
    movzbl  -13(%ebp), %eax         #   1:     if     t0 = 1 goto 1_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_1_if_true       
    jmp     l_test_1_if_true        #   2:     goto   1_if_true
    jmp     l_test_2_if_false       #   3:     goto   2_if_false
l_test_1_if_true:
    jmp     l_test_0                #   5:     goto   0
l_test_2_if_false:
l_test_0:
l_test_7_while_cond:
    jmp     l_test_6                #   9:     goto   6
    jmp     l_test_6                #  10:     goto   6
    movl    $80129, %eax            #  11:     assign v0 <- 80129
    movl    %eax, v0               
    jmp     l_test_7_while_cond     #  12:     goto   7_while_cond
l_test_6:
    movl    $99, %eax               #  14:     if     99 # 97 goto 12_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_12_if_true      
    jmp     l_test_13_if_false      #  15:     goto   13_if_false
l_test_12_if_true:
l_test_16_while_cond:
    movl    $97, %eax               #  18:     if     97 < 98 goto 17_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_17_while_body   
    jmp     l_test_15               #  19:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  21:     goto   16_while_cond
l_test_15:
    movl    $50630, %eax            #  23:     if     50630 = 95516 goto 20_if_true
    movl    $95516, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_20_if_true      
    jmp     l_test_21_if_false      #  24:     goto   21_if_false
l_test_20_if_true:
    jmp     l_test_19               #  26:     goto   19
l_test_21_if_false:
l_test_19:
    jmp     l_test_exit            
    jmp     l_test_11               #  30:     goto   11
l_test_13_if_false:
l_test_11:

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
