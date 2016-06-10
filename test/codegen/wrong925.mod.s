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
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #      8(%ebp)   4  [ %v2       <ptr(4) to <array 10 of <array 4 of <array 2 of <array 9 of <array 7 of <int>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v3       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v4       <bool> %ebp+16 ]
    #     20(%ebp)   4  [ %v5       <int> %ebp+20 ]

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
    call    ReadInt                 #   0:     call   t11 <- ReadInt
    movl    %eax, -16(%ebp)        
l_f0_2_while_cond:
    call    dummyBOOLfunc           #   2:     call   t12 <- dummyBOOLfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   3:     if     t12 = 1 goto 3_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_3_while_body      
    jmp     l_f0_1                  #   4:     goto   1
l_f0_3_while_body:
    jmp     l_f0_2_while_cond       #   6:     goto   2_while_cond
l_f0_1:
l_f0_8_while_cond:
    movl    $60688, %eax            #   9:     if     60688 = 7220 goto 9_while_body
    movl    $7220, %ebx            
    cmpl    %ebx, %eax             
    je      l_f0_9_while_body      
    jmp     l_f0_7                  #  10:     goto   7
l_f0_9_while_body:
    movl    $41086, %eax            #  12:     if     41086 # 88754 goto 12_if_true
    movl    $88754, %ebx           
    cmpl    %ebx, %eax             
    jne     l_f0_12_if_true        
    jmp     l_f0_13_if_false        #  13:     goto   13_if_false
l_f0_12_if_true:
    jmp     l_f0_11                 #  15:     goto   11
l_f0_13_if_false:
l_f0_11:
    jmp     l_f0_exit              
    jmp     l_f0_8_while_cond       #  19:     goto   8_while_cond
l_f0_7:

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
    #    -13(%ebp)   1  [ $t11      <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t12      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t14      <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v2       <int> %ebp+8 ]

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
    call    dummyBOOLfunc           #   0:     call   t11 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t12 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $15960, %eax            #   2:     div    t13 <- 15960, 14786
    movl    $14786, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    $24495, %eax            #   3:     sub    t14 <- 24495, t13
    movl    -24(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     assign v2 <- t14
    movl    %eax, 8(%ebp)          

l_f1_exit:
    # epilogue
    addl    $16, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t11      <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t12      <bool> %ebp-17 ]
    #    -24(%ebp)   4  [ $t13      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t14      <bool> %ebp-25 ]
    #    -26(%ebp)   1  [ $t15      <bool> %ebp-26 ]
    #    -27(%ebp)   1  [ $v2       <char> %ebp-27 ]

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
l_f2_1_while_cond:
    movl    $51009, %eax            #   1:     sub    t11 <- 51009, 96126
    movl    $96126, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   2:     param  0 <- t11
    pushl   %eax                   
    call    f1                      #   3:     call   t12 <- f1
    addl    $4, %esp               
    movb    %al, -17(%ebp)         
    call    ReadInt                 #   4:     call   t13 <- ReadInt
    movl    %eax, -24(%ebp)        
    movl    $46699, %eax            #   5:     param  0 <- 46699
    pushl   %eax                   
    call    f1                      #   6:     call   t14 <- f1
    addl    $4, %esp               
    movb    %al, -25(%ebp)         
    movl    $86246, %eax            #   7:     param  0 <- 86246
    pushl   %eax                   
    call    f1                      #   8:     call   t15 <- f1
    addl    $4, %esp               
    movb    %al, -26(%ebp)         
    movl    $99, %eax               #   9:     assign v2 <- 99
    movb    %al, -27(%ebp)         
    movl    $98, %eax               #  10:     return 98
    jmp     l_f2_exit              
    movl    $100, %eax              #  11:     return 100
    jmp     l_f2_exit              
    jmp     l_f2_1_while_cond       #  12:     goto   1_while_cond
    movl    $97, %eax               #  13:     return 97
    jmp     l_f2_exit              
    movl    $97, %eax               #  14:     param  0 <- 97
    pushl   %eax                   
    call    WriteChar               #  15:     call   WriteChar
    addl    $4, %esp               

l_f2_exit:
    # epilogue
    addl    $16, %esp               # remove locals
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
    #    -24(%ebp)   4  [ $t10      <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t2       <bool> %ebp-25 ]
    #    -32(%ebp)   4  [ $t3       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t4       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t5       <bool> %ebp-37 ]
    #    -44(%ebp)   4  [ $t6       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t7       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t8       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t9       <int> %ebp-56 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $44, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $11, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $82843, %eax            #   0:     div    t0 <- 82843, 2257
    movl    $2257, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    $76337, %eax            #   1:     sub    t1 <- 76337, t0
    movl    -16(%ebp), %ebx        
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     if     t1 < 80537 goto 1
    movl    $80537, %ebx           
    cmpl    %ebx, %eax             
    jl      l_test_1               
    jmp     l_test_2                #   3:     goto   2
l_test_1:
    movl    $1, %eax                #   5:     assign t2 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_test_3                #   6:     goto   3
l_test_2:
    movl    $0, %eax                #   8:     assign t2 <- 0
    movb    %al, -25(%ebp)         
l_test_3:
    movzbl  -25(%ebp), %eax         #  10:     assign v0 <- t2
    movb    %al, v0                
    movl    $80566, %eax            #  11:     assign v1 <- 80566
    movl    %eax, v1               
l_test_7_while_cond:
    movl    $52758, %eax            #  13:     add    t3 <- 52758, 43314
    movl    $43314, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    $61273, %eax            #  14:     add    t4 <- 61273, 27447
    movl    $27447, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -32(%ebp), %eax         #  15:     if     t3 = t4 goto 8_while_body
    movl    -36(%ebp), %ebx        
    cmpl    %ebx, %eax             
    je      l_test_8_while_body    
    jmp     l_test_6                #  16:     goto   6
l_test_8_while_body:
    jmp     l_test_7_while_cond     #  18:     goto   7_while_cond
l_test_6:
    movl    $21350, %eax            #  20:     if     21350 = 72032 goto 11
    movl    $72032, %ebx           
    cmpl    %ebx, %eax             
    je      l_test_11              
    jmp     l_test_12               #  21:     goto   12
l_test_11:
    movl    $1, %eax                #  23:     assign t5 <- 1
    movb    %al, -37(%ebp)         
    jmp     l_test_13               #  24:     goto   13
l_test_12:
    movl    $0, %eax                #  26:     assign t5 <- 0
    movb    %al, -37(%ebp)         
l_test_13:
    movzbl  -37(%ebp), %eax         #  28:     assign v0 <- t5
    movb    %al, v0                
l_test_16_while_cond:
    movl    $39311, %eax            #  30:     add    t6 <- 39311, 65144
    movl    $65144, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  31:     sub    t7 <- t6, 93695
    movl    $93695, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -48(%ebp)        
    movl    $21092, %eax            #  32:     mul    t8 <- 21092, 47986
    movl    $47986, %ebx           
    imull   %ebx                   
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  33:     mul    t9 <- t8, 48190
    movl    $48190, %ebx           
    imull   %ebx                   
    movl    %eax, -56(%ebp)        
    movl    -48(%ebp), %eax         #  34:     add    t10 <- t7, t9
    movl    -56(%ebp), %ebx        
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  35:     if     t10 <= 55135 goto 17_while_body
    movl    $55135, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_17_while_body   
    jmp     l_test_15               #  36:     goto   15
l_test_17_while_body:
    jmp     l_test_16_while_cond    #  38:     goto   16_while_cond
l_test_15:

l_test_exit:
    # epilogue
    addl    $44, %esp               # remove locals
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
v0:                                 # <bool>
    .skip    1
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
