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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]
    #    -14(%ebp)   1  [ $v2       <char> %ebp-14 ]

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
    call    dummyProcedure          #   0:     call   dummyProcedure
    call    dummyCHARfunc           #   1:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v2 <- t1
    movb    %al, -14(%ebp)         
    movl    $97, %eax               #   3:     return 97
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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 10 of <array 1 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <char> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]

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
    movl    $27264, %eax            #   0:     if     27264 <= 88843 goto 1_if_true
    movl    $88843, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
l_f1_5_while_cond:
    jmp     l_f1_4                  #   4:     goto   4
    jmp     l_f1_5_while_cond       #   5:     goto   5_while_cond
l_f1_4:
    movl    $60296, %eax            #   7:     return 60296
    jmp     l_f1_exit              
    movl    $26311, %eax            #   8:     if     26311 <= 72047 goto 9_if_true
    movl    $72047, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f1_9_if_true         
    jmp     l_f1_10_if_false        #   9:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_0                  #  14:     goto   0
l_f1_2_if_false:
l_f1_0:
    call    dummyBOOLfunc           #  17:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    jmp     l_f1_15_if_false        #  18:     goto   15_if_false
    movl    $20820, %eax            #  19:     return 20820
    jmp     l_f1_exit              
    call    dummyINTfunc            #  20:     call   t2 <- dummyINTfunc
    movl    %eax, -20(%ebp)        
    jmp     l_f1_13                 #  21:     goto   13
l_f1_15_if_false:
l_f1_13:

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
    #    -13(%ebp)   1  [ $t1       <char> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <ptr(4) to <array 4 of <array 5 of <array 8 of <array 10 of <array 1 of <bool>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <char> %ebp+12 ]
    #   -1664(%ebp)  1624  [ $v2       <array 4 of <array 5 of <array 8 of <array 10 of <array 1 of <bool>>>>>> %ebp-1664 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1652, %esp             # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $413, %ecx             
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-1664(%ebp)          # local array 'v2': 5 dimensions
    movl    $4,-1660(%ebp)          #   dimension 1: 4 elements
    movl    $5,-1656(%ebp)          #   dimension 2: 5 elements
    movl    $8,-1652(%ebp)          #   dimension 3: 8 elements
    movl    $10,-1648(%ebp)         #   dimension 4: 10 elements
    movl    $1,-1644(%ebp)          #   dimension 5: 1 elements

    # function body
    call    dummyCHARfunc           #   0:     call   t1 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   1:     if     t1 # 98 goto 1_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   2:     goto   2_if_false
l_f2_1_if_true:
    movl    $100, %eax              #   4:     param  3 <- 100
    pushl   %eax                   
    movl    $100, %eax              #   5:     param  2 <- 100
    pushl   %eax                   
    leal    -1664(%ebp), %eax       #   6:     &()    t2 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   7:     param  1 <- t2
    pushl   %eax                   
    jmp     l_f2_6                  #   8:     goto   6
    jmp     l_f2_6                  #   9:     goto   6
    jmp     l_f2_6                  #  10:     goto   6
    movl    $1, %eax                #  11:     assign t3 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f2_7                  #  12:     goto   7
l_f2_6:
    movl    $0, %eax                #  14:     assign t3 <- 0
    movb    %al, -21(%ebp)         
l_f2_7:
    movzbl  -21(%ebp), %eax         #  16:     param  0 <- t3
    pushl   %eax                   
    call    f1                      #  17:     call   t4 <- f1
    addl    $16, %esp              
    movl    %eax, -28(%ebp)        
    jmp     l_f2_0                  #  18:     goto   0
l_f2_2_if_false:
l_f2_0:
    call    dummyBOOLfunc           #  21:     call   t5 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    movzbl  -29(%ebp), %eax         #  22:     if     t5 = 1 goto 12_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_12_if_true        
    jmp     l_f2_13_if_false        #  23:     goto   13_if_false
l_f2_12_if_true:
    jmp     l_f2_11                 #  25:     goto   11
l_f2_13_if_false:
l_f2_11:
l_f2_15_while_cond:
    movl    $14726, %eax            #  29:     sub    t6 <- 14726, 2118
    movl    $2118, %ebx            
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    call    dummyINTfunc            #  30:     call   t7 <- dummyINTfunc
    movl    %eax, -40(%ebp)        
    movl    -36(%ebp), %eax         #  31:     if     t6 <= t7 goto 16_while_body
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jle     l_f2_16_while_body     
    jmp     l_f2_14                 #  32:     goto   14
l_f2_16_while_body:
    jmp     l_f2_15_while_cond      #  34:     goto   15_while_cond
l_f2_14:

l_f2_exit:
    # epilogue
    addl    $1652, %esp             # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <bool> %ebp-13 ]

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
    jmp     l_test_exit            
    movl    $97, %eax               #   1:     if     97 > 98 goto 2_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jg      l_test_2_if_true       
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_exit            
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    movl    $99, %eax               #   9:     assign v0 <- 99
    movb    %al, v0                
    movl    $5629, %eax             #  10:     if     5629 < 72627 goto 9
    movl    $72627, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_9               
    jmp     l_test_10               #  11:     goto   10
l_test_9:
    movl    $1, %eax                #  13:     assign t0 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_test_11               #  14:     goto   11
l_test_10:
    movl    $0, %eax                #  16:     assign t0 <- 0
    movb    %al, -13(%ebp)         
l_test_11:
    movzbl  -13(%ebp), %eax         #  18:     assign v1 <- t0
    movb    %al, v1                

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
v0:                                 # <char>
    .skip    1
v1:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
