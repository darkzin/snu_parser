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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t5       <char> %ebp-14 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 4 of <array 25 of <array 52 of <array 21 of <array 36 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v3       <char> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 31 of <array 36 of <array 34 of <array 16 of <array 27 of <int>>>>>>> %ebp+20 ]

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
    call    dummyBOOLfunc           #   7:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyCHARfunc           #   8:     call   t5 <- dummyCHARfunc
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #   9:     if     t5 < 100 goto 7_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_7_if_true         
    jmp     l_f0_8_if_false         #  10:     goto   8_if_false
l_f0_7_if_true:
    jmp     l_f0_6                  #  12:     goto   6
l_f0_8_if_false:
l_f0_6:

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
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <ptr(4) to <array 31 of <array 36 of <array 34 of <array 16 of <array 27 of <int>>>>>>> %ebp-20 ]
    #    -21(%ebp)   1  [ $t6       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t7       <ptr(4) to <array 4 of <array 25 of <array 52 of <array 21 of <array 36 of <char>>>>>>> %ebp-28 ]
    #    -32(%ebp)   4  [ $t8       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 89 of <array 43 of <array 99 of <array 74 of <array 17 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <ptr(4) to <array 90 of <array 93 of <array 59 of <array 94 of <array 52 of <int>>>>>>> %ebp+20 ]
    #   -3931256(%ebp)  3931224  [ $v6       <array 4 of <array 25 of <array 52 of <array 21 of <array 36 of <char>>>>>> %ebp-3931256 ]
    #   -69498512(%ebp)  65567256  [ $v7       <array 31 of <array 36 of <array 34 of <array 16 of <array 27 of <int>>>>>> %ebp-69498512 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $69498500, %esp         # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $17374625, %ecx        
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-3931256(%ebp)       # local array 'v6': 5 dimensions
    movl    $4,-3931252(%ebp)       #   dimension 1: 4 elements
    movl    $25,-3931248(%ebp)      #   dimension 2: 25 elements
    movl    $52,-3931244(%ebp)      #   dimension 3: 52 elements
    movl    $21,-3931240(%ebp)      #   dimension 4: 21 elements
    movl    $36,-3931236(%ebp)      #   dimension 5: 36 elements
    movl    $5,-69498512(%ebp)      # local array 'v7': 5 dimensions
    movl    $31,-69498508(%ebp)     #   dimension 1: 31 elements
    movl    $36,-69498504(%ebp)     #   dimension 2: 36 elements
    movl    $34,-69498500(%ebp)     #   dimension 3: 34 elements
    movl    $16,-69498496(%ebp)     #   dimension 4: 16 elements
    movl    $27,-69498492(%ebp)     #   dimension 5: 27 elements

    # function body
    call    dummyBOOLfunc           #   0:     call   t4 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    leal    -69498512(%ebp), %eax   #   1:     &()    t5 <- v7
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     param  3 <- t5
    pushl   %eax                   
    jmp     l_f1_2                  #   3:     goto   2
    jmp     l_f1_2                  #   4:     goto   2
l_f1_2:
    movl    $1, %eax                #   6:     assign t6 <- 1
    movb    %al, -21(%ebp)         
    jmp     l_f1_4                  #   7:     goto   4
    movl    $0, %eax                #   8:     assign t6 <- 0
    movb    %al, -21(%ebp)         
l_f1_4:
    movzbl  -21(%ebp), %eax         #  10:     param  2 <- t6
    pushl   %eax                   
    movl    $100, %eax              #  11:     param  1 <- 100
    pushl   %eax                   
    leal    -3931256(%ebp), %eax    #  12:     &()    t7 <- v6
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  13:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  14:     call   t8 <- f0
    addl    $16, %esp              
    movl    %eax, -32(%ebp)        
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $69498500, %esp         # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t4       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t5       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t6       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t7       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 38 of <array 19 of <array 3 of <array 91 of <array 78 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <ptr(4) to <array 76 of <array 38 of <array 64 of <array 41 of <array 68 of <int>>>>>>> %ebp+12 ]
    #    -29(%ebp)   1  [ $v4       <bool> %ebp-29 ]

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
    jmp     l_f2_4                  #   0:     goto   4
    jmp     l_f2_4                  #   1:     goto   4
    jmp     l_f2_4                  #   2:     goto   4
    jmp     l_f2_1                  #   3:     goto   1
l_f2_4:
l_f2_1:
    movl    $1, %eax                #   6:     assign t4 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   7:     goto   3
    movl    $0, %eax                #   8:     assign t4 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #  10:     assign v4 <- t4
    movb    %al, -29(%ebp)         
l_f2_9_while_cond:
    movl    $46630, %eax            #  12:     mul    t5 <- 46630, 52549
    movl    $52549, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  13:     div    t6 <- t5, 37741
    movl    $37741, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $81345, %eax            #  14:     if     81345 = t6 goto 10_while_body
    movl    -24(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_f2_10_while_body     
    jmp     l_f2_8                  #  15:     goto   8
l_f2_10_while_body:
    jmp     l_f2_9_while_cond       #  17:     goto   9_while_cond
l_f2_8:
    call    ReadInt                 #  19:     call   t7 <- ReadInt
    movl    %eax, -28(%ebp)        

l_f2_exit:
    # epilogue
    addl    $20, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t3       <bool> %ebp-16 ]

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
    movl    $100, %eax              #   0:     assign v0 <- 100
    movb    %al, v0                
    call    dummyBOOLfunc           #   1:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     assign v1 <- t0
    movb    %al, v1                
l_test_3_while_cond:
    jmp     l_test_exit            
    jmp     l_test_exit            
    call    dummyBOOLfunc           #   6:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_test_3_while_cond     #   7:     goto   3_while_cond
    call    dummyCHARfunc           #   8:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #   9:     if     t2 # 99 goto 9_if_true
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jne     l_test_9_if_true       
    jmp     l_test_10_if_false      #  10:     goto   10_if_false
l_test_9_if_true:
    jmp     l_test_8                #  12:     goto   8
l_test_10_if_false:
l_test_8:
    call    dummyBOOLfunc           #  15:     call   t3 <- dummyBOOLfunc
    movb    %al, -16(%ebp)         

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
