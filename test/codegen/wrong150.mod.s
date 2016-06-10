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
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]

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
l_f0_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t6 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   3:     goto   0
l_f0_2_while_body:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   6:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #   8:     if     98 > 97 goto 6_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f0_6_if_true         
    jmp     l_f0_7_if_false         #   9:     goto   7_if_false
l_f0_6_if_true:
    movl    $0, %eax                #  11:     assign v1 <- 0
    movb    %al, 12(%ebp)          
    jmp     l_f0_exit              
    movl    $71487, %eax            #  13:     if     71487 # 47564 goto 12_if_true
    movl    $47564, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  14:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  16:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_if_false:
l_f0_5:
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t6       <bool> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 10 of <array 3 of <array 3 of <array 6 of <int>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]

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
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
l_f1_6_while_cond:
    jmp     l_f1_6_while_cond       #   3:     goto   6_while_cond
l_f1_9_while_cond:
    movl    $84107, %eax            #   5:     if     84107 < 36969 goto 10_while_body
    movl    $36969, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_10_while_body     
    jmp     l_f1_8                  #   6:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #   8:     goto   9_while_cond
l_f1_8:
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  11:     goto   13_while_cond
    movl    $73280, %eax            #  12:     assign v1 <- 73280
    movl    %eax, -20(%ebp)        
    movl    $98, %eax               #  13:     if     98 < 100 goto 17_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f1_17_if_true        
    jmp     l_f1_18_if_false        #  14:     goto   18_if_false
l_f1_17_if_true:
    jmp     l_f1_16                 #  16:     goto   16
l_f1_18_if_false:
l_f1_16:
    jmp     l_f1_1                  #  19:     goto   1
l_f1_3_if_false:
l_f1_1:
    movl    $98, %eax               #  22:     param  0 <- 98
    pushl   %eax                   
    call    WriteChar               #  23:     call   WriteChar
    addl    $4, %esp               

l_f1_exit:
    # epilogue
    addl    $8, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t6       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 6 of <array 2 of <array 4 of <array 7 of <bool>>>>>>> %ebp+8 ]
    #    -20(%ebp)   4  [ $v1       <int> %ebp-20 ]
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
l_f2_1_while_cond:
    jmp     l_f2_5                  #   1:     goto   5
    jmp     l_f2_2_while_body       #   2:     goto   2_while_body
l_f2_5:
    jmp     l_f2_2_while_body       #   4:     goto   2_while_body
    jmp     l_f2_2_while_body       #   5:     goto   2_while_body
    jmp     l_f2_0                  #   6:     goto   0
l_f2_2_while_body:
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  11:     goto   9
l_f2_13_while_cond:
    movl    $100, %eax              #  13:     if     100 > 99 goto 14_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jg      l_f2_14_while_body     
    jmp     l_f2_12                 #  14:     goto   12
l_f2_14_while_body:
    movl    $46618, %eax            #  16:     assign v1 <- 46618
    movl    %eax, -20(%ebp)        
    movl    $99, %eax               #  17:     assign v2 <- 99
    movb    %al, -21(%ebp)         
    jmp     l_f2_13_while_cond      #  18:     goto   13_while_cond
l_f2_12:
    jmp     l_f2_10_while_cond      #  20:     goto   10_while_cond
l_f2_9:
    call    dummyCHARfunc           #  22:     call   t6 <- dummyCHARfunc
    movb    %al, -13(%ebp)         

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
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]

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
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_6_while_cond:
    movl    $35811, %eax            #   3:     if     35811 > 98530 goto 7_while_body
    movl    $98530, %ebx           
    cmpl    %ebx, %eax             
    jg      l_test_7_while_body    
    jmp     l_test_5                #   4:     goto   5
l_test_7_while_body:
    jmp     l_test_6_while_cond     #   6:     goto   6_while_cond
l_test_5:
    jmp     l_test_0                #   8:     goto   0
l_test_0:
l_test_10_while_cond:
    movl    $97994, %eax            #  11:     add    t0 <- 97994, 9006
    movl    $9006, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     sub    t1 <- t0, 78861
    movl    $78861, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    $44509, %eax            #  13:     if     44509 >= t1 goto 11_while_body
    movl    -20(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_11_while_body   
    jmp     l_test_9                #  14:     goto   9
l_test_11_while_body:
    jmp     l_test_10_while_cond    #  16:     goto   10_while_cond
l_test_9:
l_test_14_while_cond:
    jmp     l_test_15_while_body    #  19:     goto   15_while_body
    jmp     l_test_15_while_body    #  20:     goto   15_while_body
    jmp     l_test_15_while_body    #  21:     goto   15_while_body
l_test_15_while_body:
    jmp     l_test_14_while_cond    #  23:     goto   14_while_cond
    movl    $86130, %eax            #  24:     add    t2 <- 86130, 72371
    movl    $72371, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  25:     add    t3 <- t2, 35957
    movl    $35957, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  26:     sub    t4 <- t3, 25179
    movl    $25179, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  27:     sub    t5 <- t4, 91874
    movl    $91874, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  28:     assign v0 <- t5
    movl    %eax, v0               
    jmp     l_test_exit            

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
v0:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
