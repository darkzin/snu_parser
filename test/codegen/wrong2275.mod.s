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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 31 of <array 73 of <array 97 of <array 94 of <array 17 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]

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
    call    dummyBOOLfunc           #   0:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_exit              
l_f0_3_while_cond:
l_f0_9_while_cond:
    movl    $0, %eax                #   4:     if     0 = 0 goto 10_while_body
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_10_while_body     
    jmp     l_f0_8                  #   5:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #   7:     goto   9_while_cond
l_f0_8:
    call    dummyINTfunc            #   9:     call   t11 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f0_3_while_cond       #  10:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t12      <char> %ebp-21 ]
    #    -22(%ebp)   1  [ $t13      <char> %ebp-22 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 86 of <array 2 of <array 11 of <array 42 of <array 69 of <bool>>>>>>> %ebp+16 ]

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
    movl    $37386, %eax            #   1:     if     37386 <= 21541 goto 2_while_body
    movl    $21541, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_2_while_body      
    jmp     l_f1_0                  #   2:     goto   0
l_f1_2_while_body:
l_f1_5_while_cond:
    movl    $41785, %eax            #   5:     div    t10 <- 41785, 85250
    movl    $85250, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   6:     div    t11 <- t10, 29145
    movl    $29145, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    $70356, %eax            #   7:     if     70356 < t11 goto 6_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   8:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #  10:     goto   5_while_cond
l_f1_4:
    jmp     l_f1_1_while_cond       #  12:     goto   1_while_cond
l_f1_0:
l_f1_9_while_cond:
    call    dummyCHARfunc           #  15:     call   t12 <- dummyCHARfunc
    movb    %al, -21(%ebp)         
    movl    $98, %eax               #  16:     if     98 >= t12 goto 10_while_body
    movzbl  -21(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #  17:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #  19:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    call    dummyCHARfunc           #  22:     call   t13 <- dummyCHARfunc
    movb    %al, -22(%ebp)         
    movzbl  -22(%ebp), %eax         #  23:     if     t13 = 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f1_14_while_body     
    jmp     l_f1_12                 #  24:     goto   12
l_f1_14_while_body:
    movl    $51413, %eax            #  26:     if     51413 >= 21003 goto 17_if_true
    movl    $21003, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  27:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  29:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_13_while_cond      #  32:     goto   13_while_cond
l_f1_12:

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
    #    -13(%ebp)   1  [ $t10      <bool> %ebp-13 ]
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
l_f2_1_while_cond:
    jmp     l_f2_0                  #   1:     goto   0
    jmp     l_f2_1_while_cond       #   2:     goto   1_while_cond
l_f2_0:
l_f2_8_while_cond:
    movl    $100, %eax              #   5:     if     100 <= 98 goto 9_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f2_9_while_body      
    jmp     l_f2_7                  #   6:     goto   7
l_f2_9_while_body:
    jmp     l_f2_13_if_false        #   8:     goto   13_if_false
    jmp     l_f2_11                 #   9:     goto   11
l_f2_13_if_false:
l_f2_11:
    call    dummyProcedure          #  12:     call   dummyProcedure
    movl    $63443, %eax            #  13:     return 63443
    jmp     l_f2_exit              
    movl    $88864, %eax            #  14:     return 88864
    jmp     l_f2_exit              
    movl    $97, %eax               #  15:     if     97 >= 98 goto 18_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f2_18_if_true        
    jmp     l_f2_19_if_false        #  16:     goto   19_if_false
l_f2_18_if_true:
    jmp     l_f2_17                 #  18:     goto   17
l_f2_19_if_false:
l_f2_17:
    jmp     l_f2_8_while_cond       #  21:     goto   8_while_cond
l_f2_7:
    call    dummyBOOLfunc           #  23:     call   t10 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <ptr(4) to <array 7 of <char>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t7       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t8       <bool> %ebp-42 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    jmp     l_test_exit            
l_test_2_while_cond:
    movl    $97615, %eax            #   2:     sub    t0 <- 97615, 64993
    movl    $64993, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   3:     sub    t1 <- t0, 1983
    movl    $1983, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   4:     add    t2 <- t1, 72043
    movl    $72043, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   5:     add    t3 <- t2, 675
    movl    $675, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   6:     add    t4 <- t3, 73704
    movl    $73704, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $95490, %eax            #   7:     add    t5 <- 95490, 46792
    movl    $46792, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #   8:     if     t4 >= t5 goto 3_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_3_while_body    
    jmp     l_test_1                #   9:     goto   1
l_test_3_while_body:
    jmp     l_test_2_while_cond     #  11:     goto   2_while_cond
l_test_1:
l_test_6_while_cond:
    movl    $30762, %eax            #  14:     if     30762 < 13994 goto 7_while_body
    movl    $13994, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_7_while_body    
    jmp     l_test_7_while_body     #  15:     goto   7_while_body
    jmp     l_test_7_while_body     #  16:     goto   7_while_body
    jmp     l_test_5                #  17:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #  19:     goto   6_while_cond
l_test_5:
    leal    _str_1, %eax            #  21:     &()    t6 <- _str_1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  22:     param  0 <- t6
    pushl   %eax                   
    call    WriteStr                #  23:     call   WriteStr
    addl    $4, %esp               
    call    dummyCHARfunc           #  24:     call   t7 <- dummyCHARfunc
    movb    %al, -41(%ebp)         
    movl    $97, %eax               #  25:     if     97 < t7 goto 17
    movzbl  -41(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_test_17              
    jmp     l_test_18               #  26:     goto   18
l_test_17:
    movl    $1, %eax                #  28:     assign t8 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_test_19               #  29:     goto   19
l_test_18:
    movl    $0, %eax                #  31:     assign t8 <- 0
    movb    %al, -42(%ebp)         
l_test_19:
    movzbl  -42(%ebp), %eax         #  33:     param  0 <- t8
    pushl   %eax                   
    call    f2                      #  34:     call   t9 <- f2
    addl    $4, %esp               
    movl    %eax, -48(%ebp)        

l_test_exit:
    # epilogue
    addl    $36, %esp               # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
