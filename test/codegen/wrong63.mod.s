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
    #    -17(%ebp)   1  [ $t3       <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t4       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t5       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t6       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t7       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t8       <int> %ebp-40 ]
    #    -41(%ebp)   1  [ $t9       <bool> %ebp-41 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 8 of <array 5 of <array 1 of <array 7 of <array 6 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v1       <bool> %ebp+12 ]
    #    -48(%ebp)   4  [ $v2       <int> %ebp-48 ]

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
    movl    $63190, %eax            #   0:     add    t2 <- 63190, 99361
    movl    $99361, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v2 <- t2
    movl    %eax, -48(%ebp)        
l_f0_2_while_cond:
    jmp     l_f0_3_while_body       #   3:     goto   3_while_body
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    movl    $27781, %eax            #   6:     if     27781 >= 66999 goto 6
    movl    $66999, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f0_6                 
    jmp     l_f0_7                  #   7:     goto   7
l_f0_6:
    movl    $1, %eax                #   9:     assign t3 <- 1
    movb    %al, -17(%ebp)         
    jmp     l_f0_8                  #  10:     goto   8
l_f0_7:
    movl    $0, %eax                #  12:     assign t3 <- 0
    movb    %al, -17(%ebp)         
l_f0_8:
    movzbl  -17(%ebp), %eax         #  14:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_2_while_cond       #  15:     goto   2_while_cond
l_f0_1:
    movl    $92452, %eax            #  17:     mul    t4 <- 92452, 69827
    movl    $69827, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  18:     mul    t5 <- t4, 19455
    movl    $19455, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    $6925, %eax             #  19:     sub    t6 <- 6925, 23650
    movl    $23650, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  20:     sub    t7 <- t6, 61614
    movl    $61614, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  21:     add    t8 <- t7, 19759
    movl    $19759, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -40(%ebp)        
    movl    -28(%ebp), %eax         #  22:     if     t5 > t8 goto 11
    movl    -40(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f0_11                
    jmp     l_f0_12                 #  23:     goto   12
l_f0_11:
    movl    $1, %eax                #  25:     assign t9 <- 1
    movb    %al, -41(%ebp)         
    jmp     l_f0_13                 #  26:     goto   13
l_f0_12:
    movl    $0, %eax                #  28:     assign t9 <- 0
    movb    %al, -41(%ebp)         
l_f0_13:
    movzbl  -41(%ebp), %eax         #  30:     return t9
    jmp     l_f0_exit              

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
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v0       <bool> %ebp-14 ]

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
    jmp     l_f1_2                  #   0:     goto   2
    movl    $1, %eax                #   1:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_3                  #   2:     goto   3
l_f1_2:
    movl    $0, %eax                #   4:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f1_3:
    movzbl  -13(%ebp), %eax         #   6:     assign v0 <- t2
    movb    %al, -14(%ebp)         
    jmp     l_f1_exit              
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $4, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t2       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t3       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $v0       <bool> %ebp-15 ]

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
    jmp     l_f2_exit              
l_f2_2_while_cond:
    movl    $85350, %eax            #   2:     if     85350 <= 80437 goto 3_while_body
    movl    $80437, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_3_while_body      
    jmp     l_f2_1                  #   3:     goto   1
l_f2_3_while_body:
    movl    $1, %eax                #   5:     assign v0 <- 1
    movb    %al, -15(%ebp)         
    movl    $67368, %eax            #   6:     if     67368 <= 99682 goto 7
    movl    $99682, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f2_7                 
    jmp     l_f2_8                  #   7:     goto   8
l_f2_7:
    movl    $1, %eax                #   9:     assign t2 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_9                  #  10:     goto   9
l_f2_8:
    movl    $0, %eax                #  12:     assign t2 <- 0
    movb    %al, -13(%ebp)         
l_f2_9:
    movzbl  -13(%ebp), %eax         #  14:     assign v0 <- t2
    movb    %al, -15(%ebp)         
    jmp     l_f2_2_while_cond       #  15:     goto   2_while_cond
l_f2_1:
    call    dummyBOOLfunc           #  17:     call   t3 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         

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
    movl    $99, %eax               #   0:     assign v0 <- 99
    movb    %al, v0                
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #   2:     if     t0 < 100 goto 2_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jl      l_test_2_if_true       
    jmp     l_test_3_if_false       #   3:     goto   3_if_false
l_test_2_if_true:
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
l_test_6_while_cond:
    jmp     l_test_9                #   9:     goto   9
    jmp     l_test_9                #  10:     goto   9
    jmp     l_test_9                #  11:     goto   9
    jmp     l_test_10               #  12:     goto   10
l_test_9:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_11               #  15:     goto   11
l_test_10:
    movl    $0, %eax                #  17:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_11:
    movl    $0, %eax                #  19:     if     0 # t1 goto 7_while_body
    movzbl  -14(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_test_7_while_body    
    jmp     l_test_5                #  20:     goto   5
l_test_7_while_body:
l_test_19_while_cond:
    movl    $13469, %eax            #  23:     if     13469 # 31388 goto 20_while_body
    movl    $31388, %ebx           
    cmpl    %ebx, %eax             
    jne     l_test_20_while_body   
    jmp     l_test_18               #  24:     goto   18
l_test_20_while_body:
    jmp     l_test_19_while_cond    #  26:     goto   19_while_cond
l_test_18:
l_test_23_while_cond:
    jmp     l_test_22               #  29:     goto   22
    jmp     l_test_23_while_cond    #  30:     goto   23_while_cond
l_test_22:
    jmp     l_test_6_while_cond     #  32:     goto   6_while_cond
l_test_5:

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








    # end of global data section
    #-----------------------------------------

    .end
##################################################
