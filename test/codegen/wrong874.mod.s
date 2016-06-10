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
    #    -13(%ebp)   1  [ $t3       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 8 of <array 2 of <array 7 of <array 1 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #    -14(%ebp)   1  [ $v2       <bool> %ebp-14 ]

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
    movl    $97, %eax               #   1:     if     97 >= 98 goto 2_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jge     l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    movl    $0, %eax                #   4:     assign v2 <- 0
    movb    %al, -14(%ebp)         
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    movl    $98, %eax               #   7:     return 98
    jmp     l_f0_exit              
    jmp     l_f0_8_if_false         #   8:     goto   8_if_false
    call    dummyCHARfunc           #   9:     call   t3 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movzbl  -13(%ebp), %eax         #  10:     return t3
    jmp     l_f0_exit              
    jmp     l_f0_6                  #  11:     goto   6
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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 4 of <array 1 of <array 6 of <array 3 of <array 3 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   1  [ %v2       <char> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 1 of <array 5 of <array 4 of <array 5 of <array 3 of <int>>>>>>> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 1 of <array 7 of <array 8 of <array 3 of <array 2 of <char>>>>>>> %ebp+20 ]
    #    -49(%ebp)   1  [ $v5       <bool> %ebp-49 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $40, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $10, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    call    dummyBOOLfunc           #   0:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   1:     assign v5 <- t3
    movb    %al, -49(%ebp)         
    jmp     l_f1_3_if_false         #   2:     goto   3_if_false
l_f1_5_while_cond:
    movl    $100, %eax              #   4:     if     100 < 99 goto 6_while_body
    movl    $99, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f1_6_while_body      
    jmp     l_f1_4                  #   5:     goto   4
l_f1_6_while_body:
    jmp     l_f1_5_while_cond       #   7:     goto   5_while_cond
l_f1_4:
    movl    $29547, %eax            #   9:     if     29547 < 17013 goto 9_if_true
    movl    $17013, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_9_if_true         
    jmp     l_f1_10_if_false        #  10:     goto   10_if_false
l_f1_9_if_true:
    jmp     l_f1_8                  #  12:     goto   8
l_f1_10_if_false:
l_f1_8:
    jmp     l_f1_12                 #  15:     goto   12
l_f1_12:
    movl    $1, %eax                #  17:     assign v5 <- 1
    movb    %al, -49(%ebp)         
    jmp     l_f1_1                  #  18:     goto   1
l_f1_3_if_false:
l_f1_1:
    call    dummyINTfunc            #  21:     call   t4 <- dummyINTfunc
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  22:     mul    t5 <- t4, 45713
    movl    $45713, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  23:     div    t6 <- t5, 85749
    movl    $85749, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  24:     div    t7 <- t6, 41882
    movl    $41882, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  25:     mul    t8 <- t7, 89328
    movl    $89328, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #  26:     div    t9 <- t8, 98136
    movl    $98136, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #  27:     div    t10 <- t9, 54460
    movl    $54460, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  28:     div    t11 <- t10, 65933
    movl    $65933, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  29:     return t11
    jmp     l_f1_exit              

l_f1_exit:
    # epilogue
    addl    $40, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $t4       <bool> %ebp-14 ]
    #    -15(%ebp)   1  [ $t5       <bool> %ebp-15 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   1  [ %v3       <char> %ebp+16 ]
    #     20(%ebp)   4  [ %v4       <ptr(4) to <array 2 of <array 4 of <array 10 of <array 10 of <array 1 of <char>>>>>>> %ebp+20 ]
    #    -16(%ebp)   1  [ $v5       <bool> %ebp-16 ]

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
    movl    $42972, %eax            #   0:     if     42972 < 34704 goto 1_if_true
    movl    $34704, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1_if_true         
    jmp     l_f2_2_if_false         #   1:     goto   2_if_false
l_f2_1_if_true:
    movl    $99, %eax               #   3:     if     99 < 98 goto 5
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_5                 
    jmp     l_f2_6                  #   4:     goto   6
l_f2_5:
    movl    $1, %eax                #   6:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f2_7                  #   7:     goto   7
l_f2_6:
    movl    $0, %eax                #   9:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f2_7:
    movzbl  -13(%ebp), %eax         #  11:     assign v5 <- t3
    movb    %al, -16(%ebp)         
    jmp     l_f2_0                  #  12:     goto   0
l_f2_2_if_false:
l_f2_0:
l_f2_10_while_cond:
    jmp     l_f2_9                  #  16:     goto   9
    movl    $97, %eax               #  17:     if     97 # 98 goto 13_if_true
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f2_13_if_true        
    jmp     l_f2_14_if_false        #  18:     goto   14_if_false
l_f2_13_if_true:
    call    dummyBOOLfunc           #  20:     call   t4 <- dummyBOOLfunc
    movb    %al, -14(%ebp)         
    jmp     l_f2_12                 #  21:     goto   12
l_f2_14_if_false:
l_f2_12:
    jmp     l_f2_10_while_cond      #  24:     goto   10_while_cond
l_f2_9:
    jmp     l_f2_18                 #  26:     goto   18
    jmp     l_f2_18                 #  27:     goto   18
    jmp     l_f2_19                 #  28:     goto   19
l_f2_18:
    movl    $1, %eax                #  30:     assign t5 <- 1
    movb    %al, -15(%ebp)         
    jmp     l_f2_20                 #  31:     goto   20
l_f2_19:
    movl    $0, %eax                #  33:     assign t5 <- 0
    movb    %al, -15(%ebp)         
l_f2_20:
    movzbl  -15(%ebp), %eax         #  35:     assign v5 <- t5
    movb    %al, -16(%ebp)         

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t1       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]

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
    movl    $62594, %eax            #   0:     add    t0 <- 62594, 50426
    movl    $50426, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     assign v0 <- t0
    movl    %eax, v0               
    jmp     l_test_3_if_false       #   2:     goto   3_if_false
    movl    $100, %eax              #   3:     assign v1 <- 100
    movb    %al, v1                
    call    ReadInt                 #   4:     call   t1 <- ReadInt
    movl    %eax, -20(%ebp)        
    jmp     l_test_1                #   5:     goto   1
l_test_3_if_false:
l_test_1:
    jmp     l_test_exit            
    jmp     l_test_exit            
l_test_12_while_cond:
    movl    $88556, %eax            #  11:     mul    t2 <- 88556, 4242
    movl    $4242, %ebx            
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     if     t2 <= 90556 goto 13_while_body
    movl    $90556, %ebx           
    cmpl    %ebx, %eax             
    jle     l_test_13_while_body   
    jmp     l_test_11               #  13:     goto   11
l_test_13_while_body:
    jmp     l_test_12_while_cond    #  15:     goto   12_while_cond
l_test_11:
    jmp     l_test_7                #  17:     goto   7
l_test_7:

l_test_exit:
    # epilogue
    addl    $12, %esp               # remove locals
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
