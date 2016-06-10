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
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v1       <bool> %ebp-18 ]

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
    call    ReadInt                 #   0:     call   t2 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyProcedure          #   1:     call   dummyProcedure
    jmp     l_f0_9                  #   2:     goto   9
l_f0_9:
    jmp     l_f0_3                  #   4:     goto   3
    jmp     l_f0_3                  #   5:     goto   3
    jmp     l_f0_3                  #   6:     goto   3
    jmp     l_f0_4                  #   7:     goto   4
l_f0_3:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_5                  #  10:     goto   5
l_f0_4:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_5:
    movzbl  -17(%ebp), %eax         #  14:     assign v1 <- t3
    movb    %al, -18(%ebp)         

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 67 of <array 61 of <array 15 of <array 77 of <array 65 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 81 of <array 22 of <array 41 of <array 10 of <array 90 of <char>>>>>>> %ebp+12 ]
    #    -14(%ebp)   1  [ $v3       <char> %ebp-14 ]

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
l_f1_4_while_cond:
    movl    $41358, %eax            #   2:     if     41358 > 72969 goto 5_while_body
    movl    $72969, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f1_5_while_body      
    jmp     l_f1_3                  #   3:     goto   3
l_f1_5_while_body:
    jmp     l_f1_4_while_cond       #   5:     goto   4_while_cond
l_f1_3:
    movl    $90268, %eax            #   7:     return 90268
    jmp     l_f1_exit              
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
    movl    $97, %eax               #   9:     assign v3 <- 97
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #  10:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  11:     param  0 <- t2
    pushl   %eax                   
    call    WriteChar               #  12:     call   WriteChar
    addl    $4, %esp               

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
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 18 of <array 84 of <array 37 of <array 77 of <array 27 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 21 of <array 72 of <array 55 of <array 54 of <array 12 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]

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
    call    dummyBOOLfunc           #   1:     call   t2 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
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
    #    -14(%ebp)   1  [ $t1       <char> %ebp-14 ]

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
    movl    $23198, %eax            #   0:     assign v0 <- 23198
    movl    %eax, v0               
l_test_2_while_cond:
    jmp     l_test_4                #   2:     goto   4
l_test_4:
    jmp     l_test_9_if_false       #   4:     goto   9_if_false
    jmp     l_test_7                #   5:     goto   7
l_test_9_if_false:
l_test_7:
    movl    $17100, %eax            #   8:     param  0 <- 17100
    pushl   %eax                   
    call    WriteInt                #   9:     call   WriteInt
    addl    $4, %esp               
    movl    $0, %eax                #  10:     if     0 = 0 goto 12_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_12_if_true      
    jmp     l_test_13_if_false      #  11:     goto   13_if_false
l_test_12_if_true:
    jmp     l_test_11               #  13:     goto   11
l_test_13_if_false:
l_test_11:
    call    dummyBOOLfunc           #  16:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_2_while_cond     #  17:     goto   2_while_cond
l_test_17_while_cond:
    call    dummyCHARfunc           #  19:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  20:     if     t1 # 99 goto 18_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_18_while_body   
    jmp     l_test_16               #  21:     goto   16
l_test_18_while_body:
    jmp     l_test_17_while_cond    #  23:     goto   17_while_cond
l_test_16:
l_test_21_while_cond:
    movl    $98, %eax               #  26:     if     98 = 98 goto 22_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_22_while_body   
    jmp     l_test_20               #  27:     goto   20
l_test_22_while_body:
    movl    $99, %eax               #  29:     if     99 > 98 goto 25_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_25_if_true      
    jmp     l_test_26_if_false      #  30:     goto   26_if_false
l_test_25_if_true:
    jmp     l_test_24               #  32:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_exit            
    jmp     l_test_exit            
    jmp     l_test_21_while_cond    #  37:     goto   21_while_cond
l_test_20:
l_test_31_while_cond:
    jmp     l_test_exit            
    jmp     l_test_36_if_false      #  41:     goto   36_if_false
    jmp     l_test_34               #  42:     goto   34
l_test_36_if_false:
l_test_34:
l_test_38_while_cond:
    movl    $97, %eax               #  46:     if     97 = 98 goto 39_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_39_while_body   
    jmp     l_test_37               #  47:     goto   37
l_test_39_while_body:
    jmp     l_test_38_while_cond    #  49:     goto   38_while_cond
l_test_37:
    jmp     l_test_31_while_cond    #  51:     goto   31_while_cond
    jmp     l_test_42_if_true       #  52:     goto   42_if_true
    jmp     l_test_42_if_true       #  53:     goto   42_if_true
    jmp     l_test_42_if_true       #  54:     goto   42_if_true
    jmp     l_test_43_if_false      #  55:     goto   43_if_false
l_test_42_if_true:
    jmp     l_test_41               #  57:     goto   41
l_test_43_if_false:
l_test_41:

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
