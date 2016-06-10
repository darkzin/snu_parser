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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
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
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t3
    jmp     l_f0_exit              
l_f0_2_while_cond:
    jmp     l_f0_7_if_false         #   3:     goto   7_if_false
    jmp     l_f0_5                  #   4:     goto   5
l_f0_7_if_false:
l_f0_5:
l_f0_9_while_cond:
    jmp     l_f0_9_while_cond       #   8:     goto   9_while_cond
    jmp     l_f0_2_while_cond       #   9:     goto   2_while_cond
    call    dummyBOOLfunc           #  10:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  11:     if     t4 = 1 goto 12
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_12                
    jmp     l_f0_13                 #  12:     goto   13
l_f0_12:
    movl    $1, %eax                #  14:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f0_14                 #  15:     goto   14
l_f0_13:
    movl    $0, %eax                #  17:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f0_14:
    movzbl  -15(%ebp), %eax         #  19:     assign v2 <- t5
    movb    %al, -16(%ebp)         

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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]

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
    movl    $36716, %eax            #   1:     if     36716 >= 47842 goto 5_if_true
    movl    $47842, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #   2:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #   4:     goto   4
l_f1_6_if_false:
l_f1_4:
l_f1_9_while_cond:
    jmp     l_f1_9_while_cond       #   8:     goto   9_while_cond
    jmp     l_f1_0                  #   9:     goto   0
l_f1_0:
l_f1_12_while_cond:
    movl    $99, %eax               #  12:     if     99 = 100 goto 13_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_f1_13_while_body     
    jmp     l_f1_11                 #  13:     goto   11
l_f1_13_while_body:
    call    dummyProcedure          #  15:     call   dummyProcedure
    jmp     l_f1_12_while_cond      #  16:     goto   12_while_cond
l_f1_11:
    jmp     l_f1_exit              
    call    dummyCHARfunc           #  19:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  20:     param  1 <- t3
    pushl   %eax                   
    movl    $97, %eax               #  21:     param  0 <- 97
    pushl   %eax                   
    call    f0                      #  22:     call   t4 <- f0
    addl    $8, %esp               
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_16                 #  24:     goto   16
l_f1_16:

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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <char>>> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $t5       <bool> %ebp-18 ]
    #    -19(%ebp)   1  [ $v0       <bool> %ebp-19 ]

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
    movl    $57886, %eax            #   0:     if     57886 < 82937 goto 1_if_true
    movl    $82937, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    leal    _str_1, %eax            #   3:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   4:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   5:     call   WriteStr
    addl    $4, %esp               
    movl    $63479, %eax            #   6:     return 63479
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   7:     goto   0
l_f2_2_if_false:
l_f2_0:
    movl    $0, %eax                #  10:     if     0 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_7                 
    jmp     l_f2_8                  #  11:     goto   8
l_f2_7:
    movl    $1, %eax                #  13:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f2_9                  #  14:     goto   9
l_f2_8:
    movl    $0, %eax                #  16:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f2_9:
    movzbl  -17(%ebp), %eax         #  18:     assign v0 <- t4
    movb    %al, -19(%ebp)         
    movl    $28998, %eax            #  19:     if     28998 > 96294 goto 12
    movl    $96294, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f2_12                
    jmp     l_f2_13                 #  20:     goto   13
l_f2_12:
    movl    $1, %eax                #  22:     assign t5 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f2_14                 #  23:     goto   14
l_f2_13:
    movl    $0, %eax                #  25:     assign t5 <- 0
    movb    %al, -18(%ebp)         
l_f2_14:
    movzbl  -18(%ebp), %eax         #  27:     assign v0 <- t5
    movb    %al, -19(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <ptr(4) to <array 7 of <char>>> %ebp-24 ]

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
    movl    $97, %eax               #   0:     if     97 >= 98 goto 1
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_1               
    jmp     l_test_2                #   1:     goto   2
l_test_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_3                #   4:     goto   3
l_test_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, v0                
l_test_6_while_cond:
    movl    $66045, %eax            #  10:     sub    t1 <- 66045, 60305
    movl    $60305, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $9102, %eax             #  11:     if     9102 # t1 goto 7_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #  12:     goto   5
l_test_7_while_body:
    movl    $88396, %eax            #  14:     assign v1 <- 88396
    movl    %eax, v1               
    movl    $97, %eax               #  15:     assign v2 <- 97
    movb    %al, v2                
    jmp     l_test_6_while_cond     #  16:     goto   6_while_cond
l_test_5:
    movl    $67321, %eax            #  18:     if     67321 <= 66636 goto 12_if_true
    movl    $66636, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_12_if_true      
    jmp     l_test_13_if_false      #  19:     goto   13_if_false
l_test_12_if_true:
l_test_16_while_cond:
    leal    _str_2, %eax            #  22:     &()    t2 <- _str_2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     param  0 <- t2
    pushl   %eax                   
    call    WriteStr                #  24:     call   WriteStr
    addl    $4, %esp               
    jmp     l_test_16_while_cond    #  25:     goto   16_while_cond
    jmp     l_test_11               #  26:     goto   11
l_test_13_if_false:
l_test_11:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
    .align   4
_str_2:                             # <array 7 of <char>>
    .long    1
    .long    7
    .asciz "hello\n"
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4
v2:                                 # <char>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
