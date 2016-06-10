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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v1       <int> %ebp+8 ]

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
    jmp     l_f0_1_if_true          #   0:     goto   1_if_true
    jmp     l_f0_2_if_false         #   1:     goto   2_if_false
    jmp     l_f0_2_if_false         #   2:     goto   2_if_false
l_f0_1_if_true:
    jmp     l_f0_0                  #   4:     goto   0
l_f0_2_if_false:
l_f0_0:
    call    dummyBOOLfunc           #   7:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   8:     call   t7 <- dummyCHARfunc
    movb    %al, -14(%ebp)         

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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 88 of <array 50 of <array 32 of <array 23 of <array 94 of <int>>>>>>> %ebp+8 ]
    #    -21(%ebp)   1  [ $v2       <char> %ebp-21 ]

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
    call    dummyCHARfunc           #   0:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     return t6
    jmp     l_f1_exit              
l_f1_2_while_cond:
    jmp     l_f1_4                  #   3:     goto   4
    jmp     l_f1_3_while_body       #   4:     goto   3_while_body
l_f1_4:
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   8:     goto   2_while_cond
l_f1_1:
    movl    $92875, %eax            #  10:     if     92875 <= 62476 goto 7_if_true
    movl    $62476, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_7_if_true         
    jmp     l_f1_8_if_false         #  11:     goto   8_if_false
l_f1_7_if_true:
    call    ReadInt                 #  13:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  14:     assign v2 <- 98
    movb    %al, -21(%ebp)         
l_f1_13_while_cond:
    movl    $0, %eax                #  16:     if     0 # 0 goto 14_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_14_while_body     
    jmp     l_f1_12                 #  17:     goto   12
l_f1_14_while_body:
    jmp     l_f1_13_while_cond      #  19:     goto   13_while_cond
l_f1_12:
    jmp     l_f1_6                  #  21:     goto   6
l_f1_8_if_false:
l_f1_6:

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t7       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t8       <bool> %ebp-15 ]
    #    -20(%ebp)   4  [ $t9       <int> %ebp-20 ]

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
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t6 = 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_1                 
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t7 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t7 <- 0
    movb    %al, -14(%ebp)         
l_f2_3:
    movzbl  -14(%ebp), %eax         #   9:     return t7
    jmp     l_f2_exit              
    movl    $97, %eax               #  10:     if     97 > 98 goto 6
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_6                 
    jmp     l_f2_7                  #  11:     goto   7
l_f2_6:
    movl    $1, %eax                #  13:     assign t8 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_8                  #  14:     goto   8
l_f2_7:
    movl    $0, %eax                #  16:     assign t8 <- 0
    movb    %al, -15(%ebp)         
l_f2_8:
    movzbl  -15(%ebp), %eax         #  18:     return t8
    jmp     l_f2_exit              
    call    dummyINTfunc            #  19:     call   t9 <- dummyINTfunc
    movl    %eax, -20(%ebp)        

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
    #    -20(%ebp)   4  [ $t1       <ptr(4) to <array 7 of <char>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t2       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $t5       <bool> %ebp-33 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $24, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $6, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $100, %eax              #   0:     if     100 # 97 goto 1_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_1_if_true       
    jmp     l_test_2_if_false       #   1:     goto   2_if_false
l_test_1_if_true:
    movl    $100, %eax              #   3:     if     100 = 98 goto 5_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    je      l_test_5_if_true       
    jmp     l_test_6_if_false       #   4:     goto   6_if_false
l_test_5_if_true:
    jmp     l_test_4                #   6:     goto   4
l_test_6_if_false:
l_test_4:
    jmp     l_test_0                #   9:     goto   0
l_test_2_if_false:
l_test_0:
    jmp     l_test_9_if_true        #  12:     goto   9_if_true
    jmp     l_test_9_if_true        #  13:     goto   9_if_true
    jmp     l_test_9_if_true        #  14:     goto   9_if_true
    jmp     l_test_9_if_true        #  15:     goto   9_if_true
    jmp     l_test_9_if_true        #  16:     goto   9_if_true
    jmp     l_test_10_if_false      #  17:     goto   10_if_false
l_test_9_if_true:
    movl    $1, %eax                #  19:     assign v0 <- 1
    movb    %al, v0                
    jmp     l_test_8                #  20:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $97, %eax               #  23:     if     97 > 99 goto 19_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_19_if_true      
    jmp     l_test_20_if_false      #  24:     goto   20_if_false
l_test_19_if_true:
    call    dummyCHARfunc           #  26:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #  27:     call   WriteLn
    leal    _str_1, %eax            #  28:     &()    t1 <- _str_1
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     param  0 <- t1
    pushl   %eax                   
    call    WriteStr                #  30:     call   WriteStr
    addl    $4, %esp               
    call    dummyBOOLfunc           #  31:     call   t2 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    jmp     l_test_18               #  32:     goto   18
l_test_20_if_false:
l_test_18:
    movl    $25671, %eax            #  35:     mul    t3 <- 25671, 46362
    movl    $46362, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  36:     add    t4 <- t3, 38528
    movl    $38528, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  37:     assign v1 <- t4
    movl    %eax, v1               
    call    dummyBOOLfunc           #  38:     call   t5 <- dummyBOOLfunc
    movb    %al, -33(%ebp)         
    movl    $44966, %eax            #  39:     assign v1 <- 44966
    movl    %eax, v1               

l_test_exit:
    # epilogue
    addl    $24, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
