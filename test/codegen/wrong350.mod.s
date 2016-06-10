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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t2       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t3       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 6 of <array 1 of <array 10 of <array 7 of <bool>>>>>>> %ebp+8 ]

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
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   3:     if     t2 <= 97 goto 3_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_3_if_true         
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_3_if_true:
    movl    $97, %eax               #   6:     if     97 > 99 goto 7_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #   7:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #   9:     goto   6
l_f0_8_if_false:
l_f0_6:
l_f0_11_while_cond:
    movl    $97, %eax               #  13:     if     97 <= 97 goto 12_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_12_while_body     
    jmp     l_f0_10                 #  14:     goto   10
l_f0_12_while_body:
    jmp     l_f0_11_while_cond      #  16:     goto   11_while_cond
l_f0_10:
    call    dummyCHARfunc           #  18:     call   t3 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_f0_exit              
    jmp     l_f0_2                  #  20:     goto   2
l_f0_4_if_false:
l_f0_2:

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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 10 of <array 1 of <array 7 of <array 2 of <array 6 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 2 of <array 9 of <array 1 of <array 6 of <array 10 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <bool> %ebp+20 ]

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
    movl    $99, %eax               #   1:     if     99 < 98 goto 4_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_4_if_true         
    jmp     l_f1_5_if_false         #   2:     goto   5_if_false
l_f1_4_if_true:
    jmp     l_f1_3                  #   4:     goto   3
l_f1_5_if_false:
l_f1_3:
    jmp     l_f1_1_while_cond       #   7:     goto   1_while_cond
    jmp     l_f1_11                 #   8:     goto   11
    jmp     l_f1_11                 #   9:     goto   11
l_f1_11:
    jmp     l_f1_9                  #  11:     goto   9
    movl    $1, %eax                #  12:     assign t1 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #  13:     goto   10
l_f1_9:
    movl    $0, %eax                #  15:     assign t1 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movzbl  -13(%ebp), %eax         #  17:     return t1
    jmp     l_f1_exit              
    movl    $51235, %eax            #  18:     if     51235 < 49861 goto 15_if_true
    movl    $49861, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_15_if_true        
    jmp     l_f1_16_if_false        #  19:     goto   16_if_false
l_f1_15_if_true:
    jmp     l_f1_18                 #  21:     goto   18
l_f1_18:
l_f1_22_while_cond:
    jmp     l_f1_21                 #  24:     goto   21
    jmp     l_f1_22_while_cond      #  25:     goto   22_while_cond
l_f1_21:
    movl    $60902, %eax            #  27:     if     60902 <= 63337 goto 25_if_true
    movl    $63337, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_25_if_true        
    jmp     l_f1_26_if_false        #  28:     goto   26_if_false
l_f1_25_if_true:
    jmp     l_f1_24                 #  30:     goto   24
l_f1_26_if_false:
l_f1_24:
    jmp     l_f1_14                 #  33:     goto   14
l_f1_16_if_false:
l_f1_14:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $v0       <int> %ebp-20 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    movl    $28174, %eax            #   1:     return 28174
    jmp     l_f2_exit              
    movl    $43729, %eax            #   2:     assign v0 <- 43729
    movl    %eax, -20(%ebp)        
    movl    $81359, %eax            #   3:     return 81359
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   4:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_7_while_cond:
    jmp     l_f2_7_while_cond       #   8:     goto   7_while_cond
    movl    $82043, %eax            #   9:     mul    t1 <- 82043, 10807
    movl    $10807, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     return t1
    jmp     l_f2_exit              

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    jmp     l_test_exit            
    call    dummyCHARfunc           #   2:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
