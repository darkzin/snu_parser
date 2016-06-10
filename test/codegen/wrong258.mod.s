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
    #    -13(%ebp)   1  [ $t7       <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t8       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t9       <char> %ebp-15 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 5 of <array 5 of <array 7 of <array 6 of <char>>>>>>> %ebp+8 ]

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
    call    dummyCHARfunc           #   0:     call   t7 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_5                  #   1:     goto   5
    jmp     l_f0_5                  #   2:     goto   5
    jmp     l_f0_5                  #   3:     goto   5
l_f0_5:
    movl    $1, %eax                #   5:     assign t8 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_f0_7                  #   6:     goto   7
    movl    $0, %eax                #   7:     assign t8 <- 0
    movb    %al, -14(%ebp)         
l_f0_7:
    movzbl  -14(%ebp), %eax         #   9:     if     t8 = 1 goto 2_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_2_if_true         
    jmp     l_f0_3_if_false         #  10:     goto   3_if_false
l_f0_2_if_true:
    jmp     l_f0_1                  #  12:     goto   1
l_f0_3_if_false:
l_f0_1:
    call    dummyCHARfunc           #  15:     call   t9 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  16:     if     t9 < 100 goto 14_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_14_if_true        
    jmp     l_f0_15_if_false        #  17:     goto   15_if_false
l_f0_14_if_true:
    jmp     l_f0_13                 #  19:     goto   13
l_f0_15_if_false:
l_f0_13:

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
    #    -16(%ebp)   4  [ $t7       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t8       <char> %ebp-17 ]
    #    -18(%ebp)   1  [ $t9       <bool> %ebp-18 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 1 of <array 3 of <array 10 of <array 3 of <array 2 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 6 of <array 9 of <array 5 of <array 3 of <array 4 of <int>>>>>>> %ebp+12 ]
    #    -19(%ebp)   1  [ $v2       <bool> %ebp-19 ]

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
    jmp     l_f1_2_if_false         #   0:     goto   2_if_false
    call    dummyINTfunc            #   1:     call   t7 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    $0, %eax                #   2:     assign v2 <- 0
    movb    %al, -19(%ebp)         
    jmp     l_f1_5                  #   3:     goto   5
l_f1_5:
l_f1_9_while_cond:
    movl    $34408, %eax            #   6:     if     34408 >= 29995 goto 10_while_body
    movl    $29995, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f1_10_while_body     
    jmp     l_f1_8                  #   7:     goto   8
l_f1_10_while_body:
    jmp     l_f1_9_while_cond       #   9:     goto   9_while_cond
l_f1_8:
    jmp     l_f1_0                  #  11:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyCHARfunc           #  14:     call   t8 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #  15:     param  0 <- t8
    pushl   %eax                   
    call    WriteChar               #  16:     call   WriteChar
    addl    $4, %esp               
    jmp     l_f1_15                 #  17:     goto   15
    jmp     l_f1_15                 #  18:     goto   15
    movl    $1, %eax                #  19:     assign t9 <- 1
    movb    %al, -18(%ebp)         
    jmp     l_f1_16                 #  20:     goto   16
l_f1_15:
    movl    $0, %eax                #  22:     assign t9 <- 0
    movb    %al, -18(%ebp)         
l_f1_16:
    movzbl  -18(%ebp), %eax         #  24:     assign v2 <- t9
    movb    %al, -19(%ebp)         

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
    #    -16(%ebp)   4  [ $t7       <ptr(4) to <array 1 of <array 5 of <array 5 of <array 7 of <array 6 of <char>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t8       <int> %ebp-20 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 5 of <array 10 of <array 3 of <array 1 of <array 6 of <char>>>>>>> %ebp+8 ]
    #   -1096(%ebp)  1074  [ $v1       <array 1 of <array 5 of <array 5 of <array 7 of <array 6 of <char>>>>>> %ebp-1096 ]
    #   -1100(%ebp)   4  [ $v2       <int> %ebp-1100 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1088, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $272, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1096(%ebp)          # local array 'v1': 5 dimensions
    movl    $1,-1092(%ebp)          #   dimension 1: 1 elements
    movl    $5,-1088(%ebp)          #   dimension 2: 5 elements
    movl    $5,-1084(%ebp)          #   dimension 3: 5 elements
    movl    $7,-1080(%ebp)          #   dimension 4: 7 elements
    movl    $6,-1076(%ebp)          #   dimension 5: 6 elements

    # function body
    leal    -1096(%ebp), %eax       #   0:     &()    t7 <- v1
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #   2:     call   f0
    addl    $4, %esp               
    movl    $81554, %eax            #   3:     if     81554 < 98113 goto 2_if_true
    movl    $98113, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_2_if_true         
    jmp     l_f2_3_if_false         #   4:     goto   3_if_false
l_f2_2_if_true:
    call    dummyINTfunc            #   6:     call   t8 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f2_1                  #   7:     goto   1
l_f2_3_if_false:
l_f2_1:
l_f2_7_while_cond:
    jmp     l_f2_exit              
    movl    $74356, %eax            #  12:     assign v2 <- 74356
    movl    %eax, -1100(%ebp)      
    jmp     l_f2_7_while_cond       #  13:     goto   7_while_cond

l_f2_exit:
    # epilogue
    addl    $1088, %esp             # remove locals
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
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]

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
l_test_1_while_cond:
    movl    $68993, %eax            #   1:     mul    t0 <- 68993, 33771
    movl    $33771, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     mul    t1 <- t0, 94768
    movl    $94768, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     div    t2 <- t1, 51350
    movl    $51350, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     sub    t3 <- t2, 46568
    movl    $46568, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $58482, %eax            #   5:     if     58482 # t3 goto 2_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_2_while_body    
    jmp     l_test_0                #   6:     goto   0
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   8:     goto   1_while_cond
l_test_0:
    call    dummyINTfunc            #  10:     call   t4 <- dummyINTfunc
    movl    %eax, -32(%ebp)        
    movl    $79566, %eax            #  11:     mul    t5 <- 79566, 70076
    movl    $70076, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  12:     add    t6 <- t5, 66616
    movl    $66616, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  13:     assign v0 <- t6
    movl    %eax, v0               

l_test_exit:
    # epilogue
    addl    $28, %esp               # remove locals
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
