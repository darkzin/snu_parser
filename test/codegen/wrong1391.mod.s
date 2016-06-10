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
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #      8(%ebp)   1  [ %v0       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <int> %ebp+16 ]
    #     20(%ebp)   4  [ %v3       <ptr(4) to <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>>> %ebp+20 ]

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
    movl    $98, %eax               #   1:     if     98 < 100 goto 2_while_body
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_1_while_cond       #   4:     goto   1_while_cond
l_f0_0:
    movl    $85096, %eax            #   6:     if     85096 < 41250 goto 5_if_true
    movl    $41250, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f0_5_if_true         
    jmp     l_f0_6_if_false         #   7:     goto   6_if_false
l_f0_5_if_true:
    call    dummyBOOLfunc           #   9:     call   t3 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    WriteLn                 #  10:     call   WriteLn
    jmp     l_f0_4                  #  11:     goto   4
l_f0_6_if_false:
l_f0_4:
    movl    $100, %eax              #  14:     assign v0 <- 100
    movb    %al, 8(%ebp)           

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
    #    -13(%ebp)   1  [ $t10      <char> %ebp-13 ]
    #    -14(%ebp)   1  [ $t11      <char> %ebp-14 ]
    #    -15(%ebp)   1  [ $t12      <char> %ebp-15 ]
    #    -16(%ebp)   1  [ $t13      <char> %ebp-16 ]
    #    -17(%ebp)   1  [ $t14      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <ptr(4) to <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>>> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>>> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>>> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <ptr(4) to <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>>> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <ptr(4) to <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>>> %ebp-48 ]
    #    -49(%ebp)   1  [ $v0       <char> %ebp-49 ]
    #   -113664076(%ebp)  113664024  [ $v1       <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>> %ebp-113664076 ]
    #   -1343544804(%ebp)  1229880728  [ $v2       <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>> %ebp-1343544804 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1343544792, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $335886198, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-113664076(%ebp)     # local array 'v1': 5 dimensions
    movl    $96,-113664072(%ebp)    #   dimension 1: 96 elements
    movl    $64,-113664068(%ebp)    #   dimension 2: 64 elements
    movl    $25,-113664064(%ebp)    #   dimension 3: 25 elements
    movl    $74,-113664060(%ebp)    #   dimension 4: 74 elements
    movl    $10,-113664056(%ebp)    #   dimension 5: 10 elements
    movl    $5,-1343544804(%ebp)    # local array 'v2': 5 dimensions
    movl    $80,-1343544800(%ebp)   #   dimension 1: 80 elements
    movl    $49,-1343544796(%ebp)   #   dimension 2: 49 elements
    movl    $81,-1343544792(%ebp)   #   dimension 3: 81 elements
    movl    $58,-1343544788(%ebp)   #   dimension 4: 58 elements
    movl    $75,-1343544784(%ebp)   #   dimension 5: 75 elements

    # function body
    leal    -1343544804(%ebp), %eax #   0:     &()    t3 <- v2
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   1:     param  3 <- t3
    pushl   %eax                   
    movl    $41911, %eax            #   2:     mul    t4 <- 41911, 50809
    movl    $50809, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   3:     param  2 <- t4
    pushl   %eax                   
    leal    -113664076(%ebp), %eax  #   4:     &()    t5 <- v1
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   5:     param  1 <- t5
    pushl   %eax                   
    leal    -1343544804(%ebp), %eax #   6:     &()    t6 <- v2
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     param  3 <- t6
    pushl   %eax                   
    movl    $20913, %eax            #   8:     param  2 <- 20913
    pushl   %eax                   
    leal    -113664076(%ebp), %eax  #   9:     &()    t7 <- v1
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  10:     param  1 <- t7
    pushl   %eax                   
    leal    -1343544804(%ebp), %eax #  11:     &()    t8 <- v2
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  12:     param  3 <- t8
    pushl   %eax                   
    movl    $45226, %eax            #  13:     param  2 <- 45226
    pushl   %eax                   
    leal    -113664076(%ebp), %eax  #  14:     &()    t9 <- v1
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  15:     param  1 <- t9
    pushl   %eax                   
    call    dummyCHARfunc           #  16:     call   t10 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  17:     param  0 <- t10
    pushl   %eax                   
    call    f0                      #  18:     call   t11 <- f0
    addl    $16, %esp              
    movb    %al, -14(%ebp)         
    movzbl  -14(%ebp), %eax         #  19:     param  0 <- t11
    pushl   %eax                   
    call    f0                      #  20:     call   t12 <- f0
    addl    $16, %esp              
    movb    %al, -15(%ebp)         
    movzbl  -15(%ebp), %eax         #  21:     param  0 <- t12
    pushl   %eax                   
    call    f0                      #  22:     call   t13 <- f0
    addl    $16, %esp              
    movb    %al, -16(%ebp)         
    movzbl  -16(%ebp), %eax         #  23:     assign v0 <- t13
    movb    %al, -49(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_1                  #  25:     goto   1
    jmp     l_f1_1                  #  26:     goto   1
    jmp     l_f1_1                  #  27:     goto   1
    jmp     l_f1_1                  #  28:     goto   1
    call    dummyBOOLfunc           #  29:     call   t14 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    call    WriteLn                 #  30:     call   WriteLn
    jmp     l_f1_2_while_cond       #  31:     goto   2_while_cond
l_f1_1:
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $1343544792, %esp       # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <ptr(4) to <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>>> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <ptr(4) to <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>>> %ebp-24 ]
    #    -25(%ebp)   1  [ $t6       <char> %ebp-25 ]
    #    -26(%ebp)   1  [ $t7       <char> %ebp-26 ]
    #    -27(%ebp)   1  [ $v0       <bool> %ebp-27 ]
    #   -113664052(%ebp)  113664024  [ $v1       <array 96 of <array 64 of <array 25 of <array 74 of <array 10 of <bool>>>>>> %ebp-113664052 ]
    #   -1343544780(%ebp)  1229880728  [ $v2       <array 80 of <array 49 of <array 81 of <array 58 of <array 75 of <int>>>>>> %ebp-1343544780 ]
    #   -1343544781(%ebp)   1  [ $v3       <char> %ebp-1343544781 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $1343544772, %esp       # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $335886193, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-113664052(%ebp)     # local array 'v1': 5 dimensions
    movl    $96,-113664048(%ebp)    #   dimension 1: 96 elements
    movl    $64,-113664044(%ebp)    #   dimension 2: 64 elements
    movl    $25,-113664040(%ebp)    #   dimension 3: 25 elements
    movl    $74,-113664036(%ebp)    #   dimension 4: 74 elements
    movl    $10,-113664032(%ebp)    #   dimension 5: 10 elements
    movl    $5,-1343544780(%ebp)    # local array 'v2': 5 dimensions
    movl    $80,-1343544776(%ebp)   #   dimension 1: 80 elements
    movl    $49,-1343544772(%ebp)   #   dimension 2: 49 elements
    movl    $81,-1343544768(%ebp)   #   dimension 3: 81 elements
    movl    $58,-1343544764(%ebp)   #   dimension 4: 58 elements
    movl    $75,-1343544760(%ebp)   #   dimension 5: 75 elements

    # function body
    jmp     l_f2_1                  #   0:     goto   1
    jmp     l_f2_1                  #   1:     goto   1
    jmp     l_f2_2                  #   2:     goto   2
l_f2_1:
    movl    $1, %eax                #   4:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_3                  #   5:     goto   3
l_f2_2:
    movl    $0, %eax                #   7:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_3:
    movzbl  -13(%ebp), %eax         #   9:     return t3
    jmp     l_f2_exit              
l_f2_9_while_cond:
    jmp     l_f2_8                  #  11:     goto   8
    movl    $0, %eax                #  12:     assign v0 <- 0
    movb    %al, -27(%ebp)         
    leal    -1343544780(%ebp), %eax #  13:     &()    t4 <- v2
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  14:     param  3 <- t4
    pushl   %eax                   
    movl    $43694, %eax            #  15:     param  2 <- 43694
    pushl   %eax                   
    leal    -113664052(%ebp), %eax  #  16:     &()    t5 <- v1
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  17:     param  1 <- t5
    pushl   %eax                   
    movl    $99, %eax               #  18:     param  0 <- 99
    pushl   %eax                   
    call    f0                      #  19:     call   t6 <- f0
    addl    $16, %esp              
    movb    %al, -25(%ebp)         
    jmp     l_f2_9_while_cond       #  20:     goto   9_while_cond
l_f2_8:
    call    dummyCHARfunc           #  22:     call   t7 <- dummyCHARfunc
    movb    %al, -26(%ebp)         
    movzbl  -26(%ebp), %eax         #  23:     assign v3 <- t7
    movb    %al, -1343544781(%ebp) 

l_f2_exit:
    # epilogue
    addl    $1343544772, %esp       # remove locals
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
    call    dummyBOOLfunc           #   0:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    dummyBOOLfunc           #   1:     call   t1 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    call    dummyCHARfunc           #   2:     call   t2 <- dummyCHARfunc
    movb    %al, -15(%ebp)         
    movl    $100, %eax              #   3:     if     100 # t2 goto 3_if_true
    movzbl  -15(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_3_if_true       
    jmp     l_test_4_if_false       #   4:     goto   4_if_false
l_test_3_if_true:
l_test_7_while_cond:
    jmp     l_test_7_while_cond     #   7:     goto   7_while_cond
    jmp     l_test_2                #   8:     goto   2
l_test_4_if_false:
l_test_2:
    movl    $100, %eax              #  11:     assign v0 <- 100
    movb    %al, v0                
    movl    $0, %eax                #  12:     assign v1 <- 0
    movb    %al, v1                
    jmp     l_test_exit            

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
