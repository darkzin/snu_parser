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
    #    -16(%ebp)   4  [ $t2       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t3       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t9       <int> %ebp-44 ]
    #      8(%ebp)   1  [ %v2       <bool> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #    -48(%ebp)   4  [ $v4       <int> %ebp-48 ]

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
    call    dummyINTfunc            #   0:     call   t2 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
l_f0_5_while_cond:
    jmp     l_f0_5_while_cond       #   3:     goto   5_while_cond
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, 8(%ebp)           
    call    ReadInt                 #   5:     call   t3 <- ReadInt
    movl    %eax, -20(%ebp)        
l_f0_10_while_cond:
    jmp     l_f0_9                  #   7:     goto   9
    jmp     l_f0_10_while_cond      #   8:     goto   10_while_cond
l_f0_9:
    jmp     l_f0_12                 #  10:     goto   12
l_f0_12:
    jmp     l_f0_2_while_cond       #  12:     goto   2_while_cond
    movl    $36451, %eax            #  13:     mul    t4 <- 36451, 75962
    movl    $75962, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t5 <- t4, 69291
    movl    $69291, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     mul    t6 <- t5, 39933
    movl    $39933, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     mul    t7 <- t6, 83697
    movl    $83697, %ebx           
    imull   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     mul    t8 <- t7, 6471
    movl    $6471, %ebx            
    imull   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    $31200, %eax            #  18:     if     31200 >= t8 goto 16_if_true
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_f0_16_if_true        
    jmp     l_f0_17_if_false        #  19:     goto   17_if_false
l_f0_16_if_true:
    jmp     l_f0_exit              
    movl    $37572, %eax            #  22:     assign v4 <- 37572
    movl    %eax, -48(%ebp)        
    movl    $56037, %eax            #  23:     assign v4 <- 56037
    movl    %eax, -48(%ebp)        
    call    dummyINTfunc            #  24:     call   t9 <- dummyINTfunc
    movl    %eax, -44(%ebp)        
    movl    $20652, %eax            #  25:     assign v4 <- 20652
    movl    %eax, -48(%ebp)        
    jmp     l_f0_15                 #  26:     goto   15
l_f0_17_if_false:
l_f0_15:

l_f0_exit:
    # epilogue
    addl    $36, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 9 of <array 3 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v4       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 4 of <array 6 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v5       <bool> %ebp+20 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
    jmp     l_f1_exit              
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t3       <ptr(4) to <array 5 of <array 7 of <array 8 of <array 4 of <array 6 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <ptr(4) to <array 9 of <array 9 of <array 1 of <array 9 of <array 3 of <bool>>>>>>> %ebp-28 ]
    #    -29(%ebp)   1  [ $t6       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v2       <char> %ebp-30 ]
    #   -2244(%ebp)  2211  [ $v3       <array 9 of <array 9 of <array 1 of <array 9 of <array 3 of <bool>>>>>> %ebp-2244 ]
    #   -29148(%ebp)  26904  [ $v4       <array 5 of <array 7 of <array 8 of <array 4 of <array 6 of <int>>>>>> %ebp-29148 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $29136, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $7284, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-2244(%ebp)          # local array 'v3': 5 dimensions
    movl    $9,-2240(%ebp)          #   dimension 1: 9 elements
    movl    $9,-2236(%ebp)          #   dimension 2: 9 elements
    movl    $1,-2232(%ebp)          #   dimension 3: 1 elements
    movl    $9,-2228(%ebp)          #   dimension 4: 9 elements
    movl    $3,-2224(%ebp)          #   dimension 5: 3 elements
    movl    $5,-29148(%ebp)         # local array 'v4': 5 dimensions
    movl    $5,-29144(%ebp)         #   dimension 1: 5 elements
    movl    $7,-29140(%ebp)         #   dimension 2: 7 elements
    movl    $8,-29136(%ebp)         #   dimension 3: 8 elements
    movl    $4,-29132(%ebp)         #   dimension 4: 4 elements
    movl    $6,-29128(%ebp)         #   dimension 5: 6 elements

    # function body
    movl    $97, %eax               #   0:     assign v2 <- 97
    movb    %al, -30(%ebp)         
    movl    $1, %eax                #   1:     if     1 # 0 goto 2
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_f2_2                 
    jmp     l_f2_3                  #   2:     goto   3
l_f2_2:
    movl    $1, %eax                #   4:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_4                  #   5:     goto   4
l_f2_3:
    movl    $0, %eax                #   7:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_4:
    movzbl  -13(%ebp), %eax         #   9:     param  3 <- t2
    pushl   %eax                   
    leal    -29148(%ebp), %eax      #  10:     &()    t3 <- v4
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     param  2 <- t3
    pushl   %eax                   
    call    ReadInt                 #  12:     call   t4 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  13:     param  1 <- t4
    pushl   %eax                   
    leal    -2244(%ebp), %eax       #  14:     &()    t5 <- v3
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     param  0 <- t5
    pushl   %eax                   
    call    f1                      #  16:     call   f1
    addl    $16, %esp              
l_f2_7_while_cond:
    call    dummyBOOLfunc           #  18:     call   t6 <- dummyBOOLfunc
    movb    %al, -29(%ebp)         
    jmp     l_f2_9                  #  19:     goto   9
l_f2_9:
    jmp     l_f2_7_while_cond       #  21:     goto   7_while_cond

l_f2_exit:
    # epilogue
    addl    $29136, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]

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
    movl    $51402, %eax            #   0:     mul    t0 <- 51402, 2597
    movl    $2597, %ebx            
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    movl    $100, %eax              #   2:     assign v1 <- 100
    movb    %al, v1                
    jmp     l_test_exit            
    call    dummyCHARfunc           #   4:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   5:     assign v1 <- t1
    movb    %al, v1                
    movl    $99, %eax               #   6:     assign v1 <- 99
    movb    %al, v1                
    jmp     l_test_8                #   7:     goto   8
l_test_8:
    jmp     l_test_11               #   9:     goto   11
l_test_11:
    jmp     l_test_exit            
    jmp     l_test_5                #  12:     goto   5
l_test_5:

l_test_exit:
    # epilogue
    addl    $8, %esp                # remove locals
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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
