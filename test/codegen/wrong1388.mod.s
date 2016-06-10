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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t3       <bool> %ebp-25 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 73 of <array 10 of <array 50 of <array 78 of <array 86 of <bool>>>>>>> %ebp+8 ]
    #    -32(%ebp)   4  [ $v1       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v2       <char> %ebp-33 ]

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
    movl    $25816, %eax            #   0:     sub    t0 <- 25816, 17361
    movl    $17361, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t1 <- t0, 79094
    movl    $79094, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 81629
    movl    $81629, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     assign v1 <- t2
    movl    %eax, -32(%ebp)        
    jmp     l_f0_3_if_false         #   4:     goto   3_if_false
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   6:     goto   5_while_cond
    movl    $98, %eax               #   7:     if     98 = 99 goto 8_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    je      l_f0_8_if_true         
    jmp     l_f0_9_if_false         #   8:     goto   9_if_false
l_f0_8_if_true:
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_if_false:
l_f0_7:
    jmp     l_f0_11                 #  13:     goto   11
l_f0_11:
    jmp     l_f0_exit              
    jmp     l_f0_1                  #  16:     goto   1
l_f0_3_if_false:
l_f0_1:
l_f0_16_while_cond:
    jmp     l_f0_15                 #  20:     goto   15
    jmp     l_f0_15                 #  21:     goto   15
    movl    $100, %eax              #  22:     assign v2 <- 100
    movb    %al, -33(%ebp)         
    call    dummyBOOLfunc           #  23:     call   t3 <- dummyBOOLfunc
    movb    %al, -25(%ebp)         
    jmp     l_f0_16_while_cond      #  24:     goto   16_while_cond
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -22(%ebp)   1  [ $v0       <bool> %ebp-22 ]
    #    -23(%ebp)   1  [ $v1       <char> %ebp-23 ]

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
    movl    $0, %eax                #   0:     if     0 # 1 goto 1
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f1_1                 
    jmp     l_f1_2                  #   1:     goto   2
l_f1_1:
    movl    $1, %eax                #   3:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   4:     goto   3
l_f1_2:
    movl    $0, %eax                #   6:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   8:     assign v0 <- t0
    movb    %al, -22(%ebp)         
    call    WriteLn                 #   9:     call   WriteLn
l_f1_7_while_cond:
    jmp     l_f1_6                  #  11:     goto   6
    movl    $66465, %eax            #  12:     if     66465 # 28609 goto 10_if_true
    movl    $28609, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f1_10_if_true        
    jmp     l_f1_11_if_false        #  13:     goto   11_if_false
l_f1_10_if_true:
l_f1_14_while_cond:
    movl    $99, %eax               #  16:     if     99 < 100 goto 15_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_15_while_body     
    jmp     l_f1_13                 #  17:     goto   13
l_f1_15_while_body:
    jmp     l_f1_14_while_cond      #  19:     goto   14_while_cond
l_f1_13:
    movl    $97, %eax               #  21:     return 97
    jmp     l_f1_exit              
    movl    $75544, %eax            #  22:     if     75544 <= 47415 goto 19_if_true
    movl    $47415, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_19_if_true        
    jmp     l_f1_20_if_false        #  23:     goto   20_if_false
l_f1_19_if_true:
    jmp     l_f1_18                 #  25:     goto   18
l_f1_20_if_false:
l_f1_18:
    movl    $98, %eax               #  28:     assign v1 <- 98
    movb    %al, -23(%ebp)         
    call    dummyBOOLfunc           #  29:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyINTfunc            #  30:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #  31:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
l_f1_27_while_cond:
    jmp     l_f1_27_while_cond      #  33:     goto   27_while_cond
    jmp     l_f1_9                  #  34:     goto   9
l_f1_11_if_false:
l_f1_9:
    jmp     l_f1_7_while_cond       #  37:     goto   7_while_cond
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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $28, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyINTfunc            #   0:     call   t0 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    ReadInt                 #   1:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t2 <- t1, 27699
    movl    $27699, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t2
    jmp     l_f2_exit              
    movl    $35607, %eax            #   4:     div    t3 <- 35607, 76419
    movl    $76419, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t4 <- t3, 30693
    movl    $30693, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     div    t5 <- t4, 97377
    movl    $97377, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     sub    t6 <- t5, 38349
    movl    $38349, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   8:     return t6
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $28, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    jmp     l_test_exit            
    jmp     l_test_5                #   2:     goto   5
l_test_5:
    jmp     l_test_8                #   4:     goto   8
l_test_8:
    movl    $25626, %eax            #   6:     assign v1 <- 25626
    movl    %eax, v1               
    jmp     l_test_exit            
    jmp     l_test_2                #   8:     goto   2
l_test_2:

l_test_exit:
    # epilogue
    addl    $0, %esp                # remove locals
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
v0:                                 # <char>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
