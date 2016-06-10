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
    #    -16(%ebp)   4  [ $t4       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <ptr(4) to <array 5 of <char>>> %ebp-24 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
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
l_f0_1_while_cond:
    call    ReadInt                 #   1:     call   t4 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     div    t5 <- t4, 85948
    movl    $85948, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     if     t5 > 22237 goto 2_while_body
    movl    $22237, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_6_if_false         #   8:     goto   6_if_false
l_f0_8_while_cond:
    jmp     l_f0_8_while_cond       #  10:     goto   8_while_cond
    leal    _str_1, %eax            #  11:     &()    t6 <- _str_1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  13:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_4                  #  16:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t6       <bool> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 36 of <array 91 of <array 43 of <array 66 of <array 65 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 51 of <array 29 of <array 94 of <array 63 of <array 15 of <bool>>>>>>> %ebp+12 ]
    #    -16(%ebp)   1  [ $v2       <bool> %ebp-16 ]

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
    movl    $76905, %eax            #   0:     param  2 <- 76905
    pushl   %eax                   
    movl    $90403, %eax            #   1:     if     90403 <= 27610 goto 1
    movl    $27610, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1                 
    jmp     l_f1_2                  #   2:     goto   2
l_f1_1:
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   5:     goto   3
l_f1_2:
    movl    $0, %eax                #   7:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   9:     param  1 <- t4
    pushl   %eax                   
    call    dummyCHARfunc           #  10:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     param  0 <- t5
    pushl   %eax                   
    call    f0                      #  12:     call   f0
    addl    $12, %esp              
    call    dummyBOOLfunc           #  13:     call   t6 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  14:     assign v2 <- t6
    movb    %al, -16(%ebp)         
    movl    $98, %eax               #  15:     if     98 < 100 goto 11_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_11_if_true        
    jmp     l_f1_12_if_false        #  16:     goto   12_if_false
l_f1_11_if_true:
    jmp     l_f1_10                 #  18:     goto   10
l_f1_12_if_false:
l_f1_10:
    jmp     l_f1_6                  #  21:     goto   6
l_f1_6:

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
    #    -13(%ebp)   1  [ $t4       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <int> %ebp+20 ]
    #    -22(%ebp)   1  [ $v4       <char> %ebp-22 ]

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
    call    dummyCHARfunc           #   0:     call   t4 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
l_f2_2_while_cond:
    movl    $99, %eax               #   2:     if     99 > 98 goto 3_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    call    dummyProcedure          #   6:     call   dummyProcedure
    movl    $99, %eax               #   7:     assign v4 <- 99
    movb    %al, -22(%ebp)         
l_f2_9_while_cond:
    jmp     l_f2_8                  #   9:     goto   8
    jmp     l_f2_9_while_cond       #  10:     goto   9_while_cond
l_f2_8:
    call    dummyINTfunc            #  12:     call   t5 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_2_while_cond       #  13:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  15:     call   t6 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t2       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $t3       <bool> %ebp-19 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_0                #   3:     goto   0
    movl    $97, %eax               #   4:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #   5:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    call    dummyBOOLfunc           #   8:     call   t1 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_10               #   9:     goto   10
l_test_10:
    jmp     l_test_exit            
    jmp     l_test_1_while_cond     #  12:     goto   1_while_cond
l_test_0:
    call    dummyBOOLfunc           #  14:     call   t2 <- dummyBOOLfunc
    movb    %al, -18(%ebp)         
    jmp     l_test_14               #  15:     goto   14
l_test_14:
l_test_19_while_cond:
l_test_22_while_cond:
    jmp     l_test_26               #  19:     goto   26
    jmp     l_test_26               #  20:     goto   26
    movl    $1, %eax                #  21:     assign t3 <- 1
    movb    %al, -19(%ebp)         
    jmp     l_test_27               #  22:     goto   27
l_test_26:
    movl    $0, %eax                #  24:     assign t3 <- 0
    movb    %al, -19(%ebp)         
l_test_27:
    movzbl  -19(%ebp), %eax         #  26:     if     t3 # 1 goto 23_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_23_while_body   
    jmp     l_test_21               #  27:     goto   21
l_test_23_while_body:
    jmp     l_test_22_while_cond    #  29:     goto   22_while_cond
l_test_21:
    jmp     l_test_19_while_cond    #  31:     goto   19_while_cond
    movl    $0, %eax                #  32:     assign v0 <- 0
    movb    %al, v0                
    movl    $100, %eax              #  33:     if     100 < 97 goto 36_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_test_36_if_true      
    jmp     l_test_37_if_false      #  34:     goto   37_if_false
l_test_36_if_true:
    jmp     l_test_35               #  36:     goto   35
l_test_37_if_false:
l_test_35:
    jmp     l_test_31               #  39:     goto   31
l_test_31:

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
