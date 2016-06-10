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
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 3 of <array 2 of <array 9 of <array 2 of <array 4 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v4       <ptr(4) to <array 8 of <array 4 of <array 2 of <array 6 of <array 4 of <bool>>>>>>> %ebp+12 ]

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
    jmp     l_f0_2_if_false         #   0:     goto   2_if_false
    call    dummyBOOLfunc           #   1:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_if_false:
l_f0_0:
l_f0_5_while_cond:
    jmp     l_f0_4                  #   6:     goto   4
    movl    $99, %eax               #   7:     return 99
    jmp     l_f0_exit              
l_f0_9_while_cond:
    movl    $99, %eax               #   9:     if     99 <= 99 goto 10_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_f0_10_while_body     
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_while_body:
    jmp     l_f0_9_while_cond       #  12:     goto   9_while_cond
l_f0_8:
    jmp     l_f0_5_while_cond       #  14:     goto   5_while_cond
l_f0_4:
    call    ReadInt                 #  16:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t7       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t8       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $v3       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $20, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $5, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #   2:     goto   1
    call    ReadInt                 #   3:     call   t7 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $0, %eax                #   4:     assign v3 <- 0
    movb    %al, -25(%ebp)         
    jmp     l_f1_6                  #   5:     goto   6
l_f1_6:
    jmp     l_f1_11_if_false        #   7:     goto   11_if_false
    jmp     l_f1_9                  #   8:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_2_while_cond       #  11:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_14_if_false        #  13:     goto   14_if_false
    movl    $38667, %eax            #  14:     assign v4 <- 38667
    movl    %eax, -32(%ebp)        
    call    ReadInt                 #  15:     call   t8 <- ReadInt
    movl    %eax, -24(%ebp)        
l_f1_18_while_cond:
    movl    $8872, %eax             #  17:     if     8872 <= 20636 goto 19_while_body
    movl    $20636, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_19_while_body     
    jmp     l_f1_17                 #  18:     goto   17
l_f1_19_while_body:
    jmp     l_f1_18_while_cond      #  20:     goto   18_while_cond
l_f1_17:
    jmp     l_f1_exit              
    jmp     l_f1_12                 #  23:     goto   12
l_f1_14_if_false:
l_f1_12:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #      8(%ebp)   4  [ %v3       <ptr(4) to <array 10 of <array 4 of <array 7 of <array 6 of <array 5 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v4       <bool> %ebp+12 ]

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
    jmp     l_f2_2_if_false         #   0:     goto   2_if_false
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
    jmp     l_f2_exit              
    jmp     l_f2_0                  #   3:     goto   0
l_f2_2_if_false:
l_f2_0:
    jmp     l_f2_10_if_false        #   6:     goto   10_if_false
    call    dummyBOOLfunc           #   7:     call   t6 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f2_exit              
    call    dummyBOOLfunc           #   9:     call   t7 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_8                  #  10:     goto   8
l_f2_10_if_false:
l_f2_8:
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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 8 of <array 4 of <array 2 of <array 6 of <array 4 of <bool>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <ptr(4) to <array 3 of <array 2 of <array 9 of <array 2 of <array 4 of <char>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t5       <char> %ebp-25 ]

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
    call    dummyCHARfunc           #   0:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     param  0 <- t0
    pushl   %eax                   
    call    WriteChar               #   2:     call   WriteChar
    addl    $4, %esp               
    jmp     l_test_exit            
l_test_3_while_cond:
    movl    $100, %eax              #   5:     if     100 >= 97 goto 4_while_body
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_4_while_body    
    jmp     l_test_2                #   6:     goto   2
l_test_4_while_body:
    movl    $60215, %eax            #   8:     assign v0 <- 60215
    movl    %eax, v0               
    movl    $98, %eax               #   9:     assign v1 <- 98
    movb    %al, v1                
    movl    $1, %eax                #  10:     if     1 # 0 goto 9_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #  11:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  13:     goto   8
l_test_10_if_false:
l_test_8:
    movl    $97, %eax               #  16:     if     97 <= 99 goto 13
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jle     l_test_13              
    jmp     l_test_14               #  17:     goto   14
l_test_13:
    movl    $1, %eax                #  19:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_15               #  20:     goto   15
l_test_14:
    movl    $0, %eax                #  22:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_15:
    movzbl  -14(%ebp), %eax         #  24:     assign v2 <- t1
    movb    %al, v2                
    call    dummyProcedure          #  25:     call   dummyProcedure
l_test_19_while_cond:
    movl    $100, %eax              #  27:     if     100 < 100 goto 20_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_20_while_body   
    jmp     l_test_18               #  28:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  30:     goto   19_while_cond
l_test_18:
    call    dummyCHARfunc           #  32:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_3_while_cond     #  33:     goto   3_while_cond
l_test_2:
    jmp     l_test_exit            
    leal    v4, %eax                #  36:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  37:     param  1 <- t3
    pushl   %eax                   
    leal    v3, %eax                #  38:     &()    t4 <- v3
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  39:     param  0 <- t4
    pushl   %eax                   
    call    f0                      #  40:     call   t5 <- f0
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    movzbl  -25(%ebp), %eax         #  41:     assign v1 <- t5
    movb    %al, v1                
    jmp     l_test_exit            

l_test_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
v1:                                 # <char>
    .skip    1
v2:                                 # <bool>
    .skip    1
    .align   4
v3:                                 # <array 3 of <array 2 of <array 9 of <array 2 of <array 4 of <char>>>>>>
    .long    5
    .long    3
    .long    2
    .long    9
    .long    2
    .long    4
    .skip  432
v4:                                 # <array 8 of <array 4 of <array 2 of <array 6 of <array 4 of <bool>>>>>>
    .long    5
    .long    8
    .long    4
    .long    2
    .long    6
    .long    4
    .skip 1536








    # end of global data section
    #-----------------------------------------

    .end
##################################################
