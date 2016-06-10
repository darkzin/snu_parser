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
    #      8(%ebp)   4  [ %v0       <int> %ebp+8 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $0, %esp                # make room for locals

    # function body
l_f0_1_while_cond:
    movl    $3990, %eax             #   1:     if     3990 > 47720 goto 2_while_body
    movl    $47720, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_2_while_body      
    jmp     l_f0_0                  #   2:     goto   0
l_f0_2_while_body:
    jmp     l_f0_7                  #   4:     goto   7
l_f0_7:
    jmp     l_f0_12_if_false        #   6:     goto   12_if_false
    jmp     l_f0_10                 #   7:     goto   10
l_f0_12_if_false:
l_f0_10:
    jmp     l_f0_15_if_false        #  10:     goto   15_if_false
    jmp     l_f0_13                 #  11:     goto   13
l_f0_15_if_false:
l_f0_13:
    jmp     l_f0_4                  #  14:     goto   4
l_f0_4:
    jmp     l_f0_1_while_cond       #  16:     goto   1_while_cond
l_f0_0:
l_f0_17_while_cond:
    jmp     l_f0_20                 #  19:     goto   20
l_f0_20:
    jmp     l_f0_18_while_body      #  21:     goto   18_while_body
l_f0_18_while_body:
    jmp     l_f0_17_while_cond      #  23:     goto   17_while_cond
    jmp     l_f0_exit              

l_f0_exit:
    # epilogue
    addl    $0, %esp                # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -13(%ebp)   1  [ $t3       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t4       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t5       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t6       <int> %ebp-28 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 5 of <array 4 of <array 4 of <array 2 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 8 of <array 4 of <array 2 of <array 9 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v2       <ptr(4) to <array 8 of <array 1 of <array 7 of <array 5 of <array 3 of <bool>>>>>>> %ebp+16 ]
    #     20(%ebp)   1  [ %v3       <char> %ebp+20 ]
    #    -32(%ebp)   4  [ $v4       <int> %ebp-32 ]
    #    -33(%ebp)   1  [ $v5       <bool> %ebp-33 ]

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
    movl    $54678, %eax            #   0:     if     54678 < 27352 goto 1_if_true
    movl    $27352, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_1_if_true         
    jmp     l_f1_2_if_false         #   1:     goto   2_if_false
l_f1_1_if_true:
    jmp     l_f1_9                  #   3:     goto   9
    jmp     l_f1_9                  #   4:     goto   9
    movl    $1, %eax                #   5:     assign t3 <- 1
    movb    %al, -13(%ebp)         
    jmp     l_f1_10                 #   6:     goto   10
l_f1_9:
    movl    $0, %eax                #   8:     assign t3 <- 0
    movb    %al, -13(%ebp)         
l_f1_10:
    movl    $1, %eax                #  10:     if     1 # t3 goto 5_if_true
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jne     l_f1_5_if_true         
    jmp     l_f1_6_if_false         #  11:     goto   6_if_false
l_f1_5_if_true:
    jmp     l_f1_4                  #  13:     goto   4
l_f1_6_if_false:
l_f1_4:
    jmp     l_f1_0                  #  16:     goto   0
l_f1_2_if_false:
l_f1_0:
    movl    $54615, %eax            #  19:     sub    t4 <- 54615, 44109
    movl    $44109, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  20:     assign v4 <- t4
    movl    %eax, -32(%ebp)        
l_f1_17_while_cond:
    movl    $98949, %eax            #  22:     sub    t5 <- 98949, 59524
    movl    $59524, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  23:     add    t6 <- t5, 9455
    movl    $9455, %ebx            
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    $54881, %eax            #  24:     if     54881 > t6 goto 18_while_body
    movl    -28(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jg      l_f1_18_while_body     
    jmp     l_f1_16                 #  25:     goto   16
l_f1_18_while_body:
    movl    $0, %eax                #  27:     assign v5 <- 0
    movb    %al, -33(%ebp)         
    movl    $98, %eax               #  28:     if     98 > 100 goto 22_if_true
    movl    $100, %ebx             
    cmpl    %ebx, %eax             
    jg      l_f1_22_if_true        
    jmp     l_f1_23_if_false        #  29:     goto   23_if_false
l_f1_22_if_true:
    jmp     l_f1_21                 #  31:     goto   21
l_f1_23_if_false:
l_f1_21:
    movl    $1, %eax                #  34:     assign v5 <- 1
    movb    %al, -33(%ebp)         
    jmp     l_f1_17_while_cond      #  35:     goto   17_while_cond
l_f1_16:

l_f1_exit:
    # epilogue
    addl    $24, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t12      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t6       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t7       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t8       <int> %ebp-48 ]
    #    -52(%ebp)   4  [ $t9       <int> %ebp-52 ]

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
    movl    $42670, %eax            #   0:     div    t3 <- 42670, 94086
    movl    $94086, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   1:     mul    t4 <- t3, 49526
    movl    $49526, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   2:     div    t5 <- t4, 23886
    movl    $23886, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   3:     div    t6 <- t5, 14658
    movl    $14658, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   4:     div    t7 <- t6, 86342
    movl    $86342, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   5:     return t7
    jmp     l_f2_exit              
    movl    $55085, %eax            #   6:     div    t8 <- 55085, 84582
    movl    $84582, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -48(%ebp)        
    movl    -48(%ebp), %eax         #   7:     sub    t9 <- t8, 51683
    movl    $51683, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #   8:     return t9
    jmp     l_f2_exit              
    call    ReadInt                 #   9:     call   t10 <- ReadInt
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  10:     mul    t11 <- t10, 41015
    movl    $41015, %ebx           
    imull   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  11:     div    t12 <- t11, 73590
    movl    $73590, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  12:     return t12
    jmp     l_f2_exit              

l_f2_exit:
    # epilogue
    addl    $40, %esp               # remove locals
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
    #    -15(%ebp)   1  [ $t2       <bool> %ebp-15 ]

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
l_test_1_while_cond:
    call    dummyCHARfunc           #   1:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    movl    $100, %eax              #   2:     if     100 >= t0 goto 2_while_body
    movzbl  -13(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jge     l_test_2_while_body    
    jmp     l_test_0                #   3:     goto   0
l_test_2_while_body:
l_test_5_while_cond:
    jmp     l_test_4                #   6:     goto   4
    jmp     l_test_5_while_cond     #   7:     goto   5_while_cond
l_test_4:
    jmp     l_test_1_while_cond     #   9:     goto   1_while_cond
l_test_0:
    jmp     l_test_8                #  11:     goto   8
    jmp     l_test_8                #  12:     goto   8
l_test_8:
    movl    $1, %eax                #  14:     assign t1 <- 1
    movb    %al, -14(%ebp)         
    jmp     l_test_10               #  15:     goto   10
    movl    $0, %eax                #  16:     assign t1 <- 0
    movb    %al, -14(%ebp)         
l_test_10:
    movzbl  -14(%ebp), %eax         #  18:     assign v0 <- t1
    movb    %al, v0                
    jmp     l_test_15_if_true       #  19:     goto   15_if_true
l_test_15_if_true:
    call    dummyBOOLfunc           #  21:     call   t2 <- dummyBOOLfunc
    movb    %al, -15(%ebp)         
    jmp     l_test_14               #  22:     goto   14
l_test_14:
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
v0:                                 # <bool>
    .skip    1








    # end of global data section
    #-----------------------------------------

    .end
##################################################
