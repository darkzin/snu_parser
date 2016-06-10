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
    #    -16(%ebp)   4  [ $t3       <ptr(4) to <array 7 of <char>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t5       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
l_f0_1_while_cond:
    jmp     l_f0_2_while_body       #   1:     goto   2_while_body
    jmp     l_f0_2_while_body       #   2:     goto   2_while_body
l_f0_2_while_body:
    leal    _str_1, %eax            #   4:     &()    t3 <- _str_1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   5:     param  0 <- t3
    pushl   %eax                   
    call    WriteStr                #   6:     call   WriteStr
    addl    $4, %esp               
    jmp     l_f0_exit              
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   9:     goto   1_while_cond
    movl    $100, %eax              #  10:     if     100 >= 98 goto 9_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_9_if_true         
    jmp     l_f0_10_if_false        #  11:     goto   10_if_false
l_f0_9_if_true:
    call    dummyINTfunc            #  13:     call   t4 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  14:     call   t5 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_f0_exit              
    movl    $99, %eax               #  16:     assign v0 <- 99
    movb    %al, 8(%ebp)           
    jmp     l_f0_8                  #  17:     goto   8
l_f0_10_if_false:
l_f0_8:
l_f0_17_while_cond:
    jmp     l_f0_16                 #  21:     goto   16
l_f0_20_while_cond:
    movl    $97, %eax               #  23:     if     97 > 99 goto 21_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_21_while_body     
    jmp     l_f0_19                 #  24:     goto   19
l_f0_21_while_body:
    jmp     l_f0_20_while_cond      #  26:     goto   20_while_cond
l_f0_19:
    call    dummyINTfunc            #  28:     call   t6 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    jmp     l_f0_17_while_cond      #  29:     goto   17_while_cond
l_f0_16:

l_f0_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t3       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t4       <bool> %ebp-17 ]
    #    -18(%ebp)   1  [ $v0       <char> %ebp-18 ]
    #    -24(%ebp)   4  [ $v1       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v2       <bool> %ebp-25 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $16, %esp               # make room for locals

    xorl    %eax, %eax              # memset local stack area to 0
    movl    %eax, 12(%esp)         
    movl    %eax, 8(%esp)          
    movl    %eax, 4(%esp)          
    movl    %eax, 0(%esp)          

    # function body
    movl    $97, %eax               #   0:     assign v0 <- 97
    movb    %al, -18(%ebp)         
    call    dummyINTfunc            #   1:     call   t3 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     assign v1 <- t3
    movl    %eax, -24(%ebp)        
    jmp     l_f1_3                  #   3:     goto   3
    jmp     l_f1_3                  #   4:     goto   3
    jmp     l_f1_3                  #   5:     goto   3
    jmp     l_f1_4                  #   6:     goto   4
    jmp     l_f1_4                  #   7:     goto   4
l_f1_3:
    movl    $1, %eax                #   9:     assign t4 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f1_5                  #  10:     goto   5
l_f1_4:
    movl    $0, %eax                #  12:     assign t4 <- 0
    movb    %al, -17(%ebp)         
l_f1_5:
    movzbl  -17(%ebp), %eax         #  14:     assign v2 <- t4
    movb    %al, -25(%ebp)         

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <char> %ebp-14 ]

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
l_f2_1_while_cond:
    call    dummyBOOLfunc           #   1:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t3 = 1 goto 2_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_2_while_body      
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_while_body:
    jmp     l_f2_3                  #   5:     goto   3
l_f2_3:
    jmp     l_f2_8_if_false         #   7:     goto   8_if_false
    jmp     l_f2_6                  #   8:     goto   6
l_f2_8_if_false:
l_f2_6:
    movl    $99, %eax               #  11:     return 99
    jmp     l_f2_exit              
    movl    $100, %eax              #  12:     param  0 <- 100
    pushl   %eax                   
    call    f0                      #  13:     call   f0
    addl    $4, %esp               
    call    dummyProcedure          #  14:     call   dummyProcedure
l_f2_13_while_cond:
    movl    $57058, %eax            #  16:     if     57058 < 55363 goto 14_while_body
    movl    $55363, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_14_while_body     
    jmp     l_f2_12                 #  17:     goto   12
l_f2_14_while_body:
    jmp     l_f2_13_while_cond      #  19:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_1_while_cond       #  21:     goto   1_while_cond
l_f2_0:
    movl    $100, %eax              #  23:     assign v0 <- 100
    movb    %al, -14(%ebp)         
    movl    $55211, %eax            #  24:     if     55211 = 5448 goto 18_if_true
    movl    $5448, %ebx            
    cmpl    %ebx, %eax             
    je      l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  25:     goto   19_if_false
l_f2_18_if_true:
    movl    $98, %eax               #  27:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_17                 #  28:     goto   17
l_f2_19_if_false:
l_f2_17:

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
    jmp     l_test_2_if_false       #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   2:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   3:     assign v0 <- 97
    movb    %al, v0                
l_test_7_while_cond:
    movl    $1, %eax                #   5:     if     1 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #   6:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #   8:     goto   7_while_cond
l_test_6:
    movl    $28813, %eax            #  10:     assign v1 <- 28813
    movl    %eax, v1               
    jmp     l_test_0                #  11:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_exit            
l_test_13_while_cond:
    jmp     l_test_16               #  16:     goto   16
l_test_16:
    movl    $1, %eax                #  18:     assign t2 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_test_18               #  19:     goto   18
    movl    $0, %eax                #  20:     assign t2 <- 0
    movb    %al, -15(%ebp)         
l_test_18:
    movl    $1, %eax                #  22:     if     1 # t2 goto 14_while_body
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_14_while_body   
    jmp     l_test_12               #  23:     goto   12
l_test_14_while_body:
    movl    $98, %eax               #  25:     if     98 = 100 goto 21_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    je      l_test_21_if_true      
    jmp     l_test_22_if_false      #  26:     goto   22_if_false
l_test_21_if_true:
    jmp     l_test_20               #  28:     goto   20
l_test_22_if_false:
l_test_20:
l_test_25_while_cond:
    jmp     l_test_25_while_cond    #  32:     goto   25_while_cond
    jmp     l_test_13_while_cond    #  33:     goto   13_while_cond
l_test_12:

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
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
