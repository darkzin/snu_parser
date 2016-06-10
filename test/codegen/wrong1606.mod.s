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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 60 of <array 93 of <array 4 of <array 62 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 77 of <array 79 of <array 89 of <array 18 of <array 89 of <int>>>>>>> %ebp+12 ]

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
    movl    $99, %eax               #   0:     if     99 = 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_1_if_true         
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
l_f0_1_if_true:
    movl    $63747, %eax            #   3:     return 63747
    jmp     l_f0_exit              
l_f0_6_while_cond:
    jmp     l_f0_7_while_body       #   5:     goto   7_while_body
    jmp     l_f0_7_while_body       #   6:     goto   7_while_body
    jmp     l_f0_7_while_body       #   7:     goto   7_while_body
    jmp     l_f0_5                  #   8:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  10:     goto   6_while_cond
l_f0_5:
    jmp     l_f0_0                  #  12:     goto   0
l_f0_2_if_false:
l_f0_0:
    movl    $100, %eax              #  15:     if     100 <= 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  16:     goto   15_if_false
l_f0_14_if_true:
    leal    _str_1, %eax            #  18:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  19:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #  20:     call   WriteStr
    addl    $4, %esp               
l_f0_19_while_cond:
    movl    $1, %eax                #  22:     if     1 = 0 goto 20_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_20_while_body     
    jmp     l_f0_18                 #  23:     goto   18
l_f0_20_while_body:
    jmp     l_f0_19_while_cond      #  25:     goto   19_while_cond
l_f0_18:
    movl    $97, %eax               #  27:     if     97 >= 99 goto 23_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_23_if_true        
    jmp     l_f0_24_if_false        #  28:     goto   24_if_false
l_f0_23_if_true:
    jmp     l_f0_22                 #  30:     goto   22
l_f0_24_if_false:
l_f0_22:
l_f0_27_while_cond:
    movl    $95972, %eax            #  34:     if     95972 = 40118 goto 28_while_body
    movl    $40118, %ebx           
    cmpl    %ebx, %eax             
    je      l_f0_28_while_body     
    jmp     l_f0_26                 #  35:     goto   26
l_f0_28_while_body:
    jmp     l_f0_27_while_cond      #  37:     goto   27_while_cond
l_f0_26:
    jmp     l_f0_13                 #  39:     goto   13
l_f0_15_if_false:
l_f0_13:
    movl    $10230, %eax            #  42:     div    t4 <- 10230, 19000
    movl    $19000, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  43:     return t4
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
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
    jmp     l_f1_exit              
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
    jmp     l_f1_exit              
    jmp     l_f1_1                  #   3:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyCHARfunc           #   6:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   7:     if     100 <= t3 goto 7
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f1_7                 
    jmp     l_f1_8                  #   8:     goto   8
l_f1_7:
    movl    $1, %eax                #  10:     assign t4 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f1_9                  #  11:     goto   9
l_f1_8:
    movl    $0, %eax                #  13:     assign t4 <- 0
    movb    %al, -14(%ebp)         
l_f1_9:
    movzbl  -14(%ebp), %eax         #  15:     assign v1 <- t4
    movb    %al, -15(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v1       <bool> %ebp+8 ]
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
    call    dummyCHARfunc           #   0:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v2 <- t3
    movb    %al, -14(%ebp)         
    call    WriteLn                 #   2:     call   WriteLn
    movl    $0, %eax                #   3:     assign v1 <- 0
    movb    %al, 8(%ebp)           

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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
    jmp     l_test_2                #   0:     goto   2
    jmp     l_test_2                #   1:     goto   2
    movl    $99, %eax               #   2:     if     99 = 99 goto 1
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v0 <- t0
    movb    %al, v0                
l_test_8_while_cond:
    jmp     l_test_7                #  12:     goto   7
    movl    $90970, %eax            #  13:     param  0 <- 90970
    pushl   %eax                   
    call    WriteInt                #  14:     call   WriteInt
    addl    $4, %esp               
    call    dummyCHARfunc           #  15:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_8_while_cond     #  16:     goto   8_while_cond
l_test_7:
    jmp     l_test_exit            
l_test_15_while_cond:
    movl    $100, %eax              #  20:     if     100 > 98 goto 16_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_16_while_body   
    jmp     l_test_14               #  21:     goto   14
l_test_16_while_body:
    jmp     l_test_exit            
l_test_20_while_cond:
    jmp     l_test_21_while_body    #  25:     goto   21_while_body
    jmp     l_test_19               #  26:     goto   19
l_test_21_while_body:
    jmp     l_test_20_while_cond    #  28:     goto   20_while_cond
l_test_19:
    jmp     l_test_15_while_cond    #  30:     goto   15_while_cond
l_test_14:
l_test_28_while_cond:
    call    dummyBOOLfunc           #  33:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  34:     if     t2 = 1 goto 31
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_31              
    jmp     l_test_27               #  35:     goto   27
l_test_31:
    jmp     l_test_28_while_cond    #  37:     goto   28_while_cond
l_test_27:

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
_str_1:                             # <array 5 of <char>>
    .long    1
    .long    5
    .asciz "bye\n"
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
