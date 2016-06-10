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
    #    -16(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t4       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v1       <char> %ebp-19 ]

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
l_f0_1_while_cond:
    movl    $97, %eax               #   1:     if     97 = 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $79015, %eax            #   4:     if     79015 # 72108 goto 5_if_true
    movl    $72108, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   5:     goto   6_if_false
l_f0_5_if_true:
    leal    _str_1, %eax            #   7:     &()    t2 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   8:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #   9:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_4                  #  10:     goto   4
l_f0_6_if_false:
l_f0_4:
    jmp     l_f0_1_while_cond       #  13:     goto   1_while_cond
l_f0_0:
    jmp     l_f0_14                 #  15:     goto   14
    jmp     l_f0_14                 #  16:     goto   14
l_f0_14:
    jmp     l_f0_10                 #  18:     goto   10
l_f0_10:
    movl    $1, %eax                #  20:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_12                 #  21:     goto   12
    movl    $0, %eax                #  22:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_12:
    movzbl  -17(%ebp), %eax         #  24:     return t3
    jmp     l_f0_exit              
    movl    $100, %eax              #  25:     assign v1 <- 100
    movb    %al, -19(%ebp)         
    movl    $39309, %eax            #  26:     if     39309 > 67364 goto 22
    movl    $67364, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_22                
    jmp     l_f0_23                 #  27:     goto   23
l_f0_22:
    movl    $1, %eax                #  29:     assign t4 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f0_24                 #  30:     goto   24
l_f0_23:
    movl    $0, %eax                #  32:     assign t4 <- 0
    movb    %al, -18(%ebp)         
l_f0_24:
    movzbl  -18(%ebp), %eax         #  34:     return t4
    jmp     l_f0_exit              
    call    dummyProcedure          #  35:     call   dummyProcedure
    jmp     l_f0_29_if_false        #  36:     goto   29_if_false
    jmp     l_f0_27                 #  37:     goto   27
l_f0_29_if_false:
l_f0_27:
    jmp     l_f0_17                 #  40:     goto   17
l_f0_17:

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
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t6       <char> %ebp-22 ]
    #    -23(%ebp)   1  [ $t7       <bool> %ebp-23 ]
    #    -24(%ebp)   1  [ $t8       <char> %ebp-24 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 1 of <array 8 of <array 5 of <array 2 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 5 of <array 10 of <array 9 of <array 9 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 6 of <array 6 of <array 3 of <array 3 of <array 1 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 9 of <array 4 of <array 9 of <array 10 of <array 4 of <bool>>>>>>> %ebp+20 ]

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
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t2 > 99 goto 2_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f1_2_while_body      
    jmp     l_f1_0                  #   3:     goto   0
l_f1_2_while_body:
    call    dummyBOOLfunc           #   5:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    ReadInt                 #   6:     call   t4 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyCHARfunc           #   7:     call   t5 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    jmp     l_f1_1_while_cond       #   8:     goto   1_while_cond
l_f1_0:
l_f1_8_while_cond:
    call    dummyCHARfunc           #  11:     call   t6 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movl    $98, %eax               #  12:     if     98 > t6 goto 9_while_body
    movzbl  -22(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_9_while_body      
    jmp     l_f1_7                  #  13:     goto   7
l_f1_9_while_body:
    jmp     l_f1_8_while_cond       #  15:     goto   8_while_cond
l_f1_7:
    call    f0                      #  17:     call   t7 <- f0
    movb    %al, -23(%ebp)         
    movzbl  -23(%ebp), %eax         #  18:     if     t7 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f1_12_if_true        
    jmp     l_f1_13_if_false        #  19:     goto   13_if_false
l_f1_12_if_true:
    call    dummyCHARfunc           #  21:     call   t8 <- dummyCHARfunc
    movb    %al, -24(%ebp)         
    jmp     l_f1_11                 #  22:     goto   11
l_f1_13_if_false:
l_f1_11:

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
    #    -13(%ebp)   1  [ $t2       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t4       <bool> %ebp-15 ]
    #    -16(%ebp)   1  [ $t5       <bool> %ebp-16 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 7 of <array 8 of <array 8 of <array 1 of <char>>>>>>> %ebp+8 ]
    #    -17(%ebp)   1  [ $v2       <bool> %ebp-17 ]

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
    call    dummyCHARfunc           #   0:     call   t2 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   1:     call   t3 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   2:     if     t3 >= 99 goto 2
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_2                 
    jmp     l_f2_3                  #   3:     goto   3
l_f2_2:
    movl    $1, %eax                #   5:     assign t4 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_4                  #   6:     goto   4
l_f2_3:
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -15(%ebp)         
l_f2_4:
    movzbl  -15(%ebp), %eax         #  10:     return t4
    jmp     l_f2_exit              
    movl    $1, %eax                #  11:     assign t5 <- 1
    movb    %al, -16(%ebp)         
    jmp     l_f2_9                  #  12:     goto   9
    movl    $0, %eax                #  13:     assign t5 <- 0
    movb    %al, -16(%ebp)         
l_f2_9:
    movzbl  -16(%ebp), %eax         #  15:     assign v2 <- t5
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     assign v0 <- t0
    movb    %al, v0                
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
    movl    $99, %eax               #   3:     assign v0 <- 99
    movb    %al, v0                
    movl    $97, %eax               #   4:     assign v0 <- 97
    movb    %al, v0                
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_7_if_true        #   8:     goto   7_if_true
    jmp     l_test_8_if_false       #   9:     goto   8_if_false
l_test_7_if_true:
    jmp     l_test_6                #  11:     goto   6
l_test_8_if_false:
l_test_6:
    jmp     l_test_exit            
l_test_14_while_cond:
    call    dummyCHARfunc           #  16:     call   t1 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movl    $99, %eax               #  17:     if     99 # t1 goto 15_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_15_while_body   
    jmp     l_test_13               #  18:     goto   13
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  20:     goto   14_while_cond
l_test_13:

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
_str_1:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
