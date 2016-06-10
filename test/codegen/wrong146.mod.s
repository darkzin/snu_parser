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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t6       <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 3 of <array 5 of <array 2 of <array 2 of <array 5 of <bool>>>>>>> %ebp+8 ]
    #    -18(%ebp)   1  [ $v1       <char> %ebp-18 ]

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
    movl    $97, %eax               #   0:     assign v1 <- 97
    movb    %al, -18(%ebp)         
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_3_while_cond:
    jmp     l_f0_exit              
    call    dummyBOOLfunc           #   4:     call   t6 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
l_f0_8_while_cond:
    movl    $100, %eax              #   6:     if     100 >= 100 goto 9_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jge     l_f0_9_while_body      
    jmp     l_f0_7                  #   7:     goto   7
l_f0_9_while_body:
    jmp     l_f0_8_while_cond       #   9:     goto   8_while_cond
l_f0_7:
    jmp     l_f0_3_while_cond       #  11:     goto   3_while_cond

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
    #    -16(%ebp)   4  [ $t5       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t6       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t7       <bool> %ebp-21 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 4 of <array 3 of <array 3 of <array 8 of <array 1 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -22(%ebp)   1  [ $v2       <char> %ebp-22 ]

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
    movl    $98, %eax               #   0:     assign v2 <- 98
    movb    %al, -22(%ebp)         
    jmp     l_f1_3_if_false         #   1:     goto   3_if_false
l_f1_5_while_cond:
    jmp     l_f1_5_while_cond       #   3:     goto   5_while_cond
    call    dummyINTfunc            #   4:     call   t5 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyINTfunc            #   5:     call   t6 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_1                  #   6:     goto   1
l_f1_3_if_false:
l_f1_1:
    jmp     l_f1_11_if_false        #   9:     goto   11_if_false
l_f1_13_while_cond:
    jmp     l_f1_13_while_cond      #  11:     goto   13_while_cond
    jmp     l_f1_17                 #  12:     goto   17
    movl    $1, %eax                #  13:     assign t7 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_18                 #  14:     goto   18
l_f1_17:
    movl    $0, %eax                #  16:     assign t7 <- 0
    movb    %al, -21(%ebp)         
l_f1_18:
    movzbl  -21(%ebp), %eax         #  18:     return t7
    jmp     l_f1_exit              
    jmp     l_f1_9                  #  19:     goto   9
l_f1_11_if_false:
l_f1_9:

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
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t9       <int> %ebp-36 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #    -37(%ebp)   1  [ $v1       <bool> %ebp-37 ]

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
    call    WriteLn                 #   0:     call   WriteLn
    call    ReadInt                 #   1:     call   t5 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $45177, %eax            #   2:     add    t6 <- 45177, 36506
    movl    $36506, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     add    t7 <- t6, 8257
    movl    $8257, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     add    t8 <- t7, 71652
    movl    $71652, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     sub    t9 <- t8, 66559
    movl    $66559, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    $27773, %eax            #   6:     if     27773 >= t9 goto 3
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f2_3                 
    jmp     l_f2_4                  #   7:     goto   4
l_f2_3:
    movl    $1, %eax                #   9:     assign t10 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_5                  #  10:     goto   5
l_f2_4:
    movl    $0, %eax                #  12:     assign t10 <- 0
    movb    %al, -13(%ebp)         
l_f2_5:
    movzbl  -13(%ebp), %eax         #  14:     assign v1 <- t10
    movb    %al, -37(%ebp)         

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
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t1       <bool> %ebp-14 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 4 of <array 3 of <array 3 of <array 8 of <array 1 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]

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
l_test_1_while_cond:
    movl    $99, %eax               #   1:     if     99 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   2:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   4:     goto   1_while_cond
l_test_0:
l_test_5_while_cond:
    call    dummyCHARfunc           #   7:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $99, %eax               #   8:     if     99 <= t0 goto 6_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_test_6_while_body    
    jmp     l_test_4                #   9:     goto   4
l_test_6_while_body:
l_test_9_while_cond:
    jmp     l_test_8                #  12:     goto   8
    jmp     l_test_9_while_cond     #  13:     goto   9_while_cond
l_test_8:
    jmp     l_test_5_while_cond     #  15:     goto   5_while_cond
l_test_4:
    call    dummyBOOLfunc           #  17:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_13_if_true       #  18:     goto   13_if_true
l_test_13_if_true:
    jmp     l_test_exit            
    movl    $33177, %eax            #  21:     assign v0 <- 33177
    movl    %eax, v0               
    jmp     l_test_12               #  22:     goto   12
l_test_12:
    jmp     l_test_exit            
    jmp     l_test_exit            
    movl    $80002, %eax            #  26:     mul    t2 <- 80002, 28031
    movl    $28031, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  27:     param  1 <- t2
    pushl   %eax                   
    leal    v1, %eax                #  28:     &()    t3 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  29:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  30:     call   t4 <- f1
    addl    $8, %esp               
    movb    %al, -25(%ebp)         
    jmp     l_test_26_if_false      #  31:     goto   26_if_false
    jmp     l_test_24               #  32:     goto   24
l_test_26_if_false:
l_test_24:
    jmp     l_test_19               #  35:     goto   19
l_test_19:

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
v1:                                 # <array 4 of <array 3 of <array 3 of <array 8 of <array 1 of <bool>>>>>>
    .long    5
    .long    4
    .long    3
    .long    3
    .long    8
    .long    1
    .skip  288








    # end of global data section
    #-----------------------------------------

    .end
##################################################
