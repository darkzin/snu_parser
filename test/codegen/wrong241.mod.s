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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t10      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t11      <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t12      <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t13      <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t2       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t3       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t4       <int> %ebp-44 ]
    #    -45(%ebp)   1  [ $t5       <bool> %ebp-45 ]
    #    -52(%ebp)   4  [ $t6       <int> %ebp-52 ]
    #    -56(%ebp)   4  [ $t7       <int> %ebp-56 ]
    #    -60(%ebp)   4  [ $t8       <int> %ebp-60 ]
    #    -64(%ebp)   4  [ $t9       <int> %ebp-64 ]
    #      8(%ebp)   4  [ %v0       <ptr(4) to <array 10 of <array 10 of <array 7 of <array 5 of <array 10 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 2 of <array 8 of <array 9 of <array 1 of <array 10 of <char>>>>>>> %ebp+12 ]
    #     16(%ebp)   1  [ %v2       <bool> %ebp+16 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $52, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $13, %ecx              
    mov     %esp, %edi             
    rep     stosl                  

    # function body
    movl    $81888, %eax            #   0:     mul    t1 <- 81888, 60821
    movl    $60821, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     div    t2 <- t1, 71936
    movl    $71936, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   2:     div    t3 <- t2, 3295
    movl    $3295, %ebx            
    cdq                            
    idivl   %ebx                   
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #   3:     mul    t4 <- t3, 21870
    movl    $21870, %ebx           
    imull   %ebx                   
    movl    %eax, -44(%ebp)        
    movl    -44(%ebp), %eax         #   4:     if     t4 > 12284 goto 1
    movl    $12284, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_1                 
    jmp     l_f0_2                  #   5:     goto   2
l_f0_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -45(%ebp)         
    jmp     l_f0_3                  #   8:     goto   3
l_f0_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -45(%ebp)         
l_f0_3:
    movzbl  -45(%ebp), %eax         #  12:     assign v2 <- t5
    movb    %al, 16(%ebp)          
l_f0_6_while_cond:
    movl    $57412, %eax            #  14:     sub    t6 <- 57412, 89891
    movl    $89891, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -52(%ebp)        
    movl    -52(%ebp), %eax         #  15:     add    t7 <- t6, 62147
    movl    $62147, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -56(%ebp)        
    movl    -56(%ebp), %eax         #  16:     add    t8 <- t7, 49823
    movl    $49823, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -60(%ebp)        
    movl    -60(%ebp), %eax         #  17:     add    t9 <- t8, 29368
    movl    $29368, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -64(%ebp)        
    movl    -64(%ebp), %eax         #  18:     if     t9 > 40606 goto 7_while_body
    movl    $40606, %ebx           
    cmpl    %ebx, %eax             
    jg      l_f0_7_while_body      
    jmp     l_f0_5                  #  19:     goto   5
l_f0_7_while_body:
    jmp     l_f0_6_while_cond       #  21:     goto   6_while_cond
l_f0_5:
l_f0_10_while_cond:
    movl    $26905, %eax            #  24:     div    t10 <- 26905, 85279
    movl    $85279, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #  25:     div    t11 <- t10, 51303
    movl    $51303, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  26:     mul    t12 <- t11, 80409
    movl    $80409, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  27:     sub    t13 <- t12, 77075
    movl    $77075, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  28:     if     t13 <= 69401 goto 11_while_body
    movl    $69401, %ebx           
    cmpl    %ebx, %eax             
    jle     l_f0_11_while_body     
    jmp     l_f0_9                  #  29:     goto   9
l_f0_11_while_body:
    jmp     l_f0_10_while_cond      #  31:     goto   10_while_cond
l_f0_9:

l_f0_exit:
    # epilogue
    addl    $52, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -25(%ebp)   1  [ $t4       <bool> %ebp-25 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <int> %ebp+12 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 20935
    movl    $20935, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 48981
    movl    $48981, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     return t3
    jmp     l_f1_exit              
    movl    $1, %eax                #   4:     assign t4 <- 1
    movb    %al, -25(%ebp)         
    jmp     l_f1_4                  #   5:     goto   4
    movl    $0, %eax                #   6:     assign t4 <- 0
    movb    %al, -25(%ebp)         
l_f1_4:
    movzbl  -25(%ebp), %eax         #   8:     assign v0 <- t4
    movb    %al, 8(%ebp)           
l_f1_9_while_cond:
    movl    $98, %eax               #  10:     if     98 # 98 goto 10_while_body
    movl    $98, %ebx              
    cmpl    %ebx, %eax             
    jne     l_f1_10_while_body     
    jmp     l_f1_8                  #  11:     goto   8
l_f1_10_while_body:
    movl    $78606, %eax            #  13:     assign v1 <- 78606
    movl    %eax, 12(%ebp)         
    movl    $6320, %eax             #  14:     assign v1 <- 6320
    movl    %eax, 12(%ebp)         
    jmp     l_f1_9_while_cond       #  15:     goto   9_while_cond
l_f1_8:

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
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $t5       <bool> %ebp-29 ]
    #    -36(%ebp)   4  [ $t6       <ptr(4) to <array 2 of <array 8 of <array 9 of <array 1 of <array 10 of <char>>>>>>> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <ptr(4) to <array 10 of <array 10 of <array 7 of <array 5 of <array 10 of <bool>>>>>>> %ebp-40 ]
    #    -41(%ebp)   1  [ $t8       <char> %ebp-41 ]
    #    -42(%ebp)   1  [ $t9       <bool> %ebp-42 ]
    #      8(%ebp)   1  [ %v0       <bool> %ebp+8 ]
    #     12(%ebp)   4  [ %v1       <ptr(4) to <array 7 of <array 10 of <array 1 of <array 1 of <array 1 of <int>>>>>>> %ebp+12 ]
    #   -35068(%ebp)  35024  [ $v2       <array 10 of <array 10 of <array 7 of <array 5 of <array 10 of <bool>>>>>> %ebp-35068 ]
    #   -36532(%ebp)  1464  [ $v3       <array 2 of <array 8 of <array 9 of <array 1 of <array 10 of <char>>>>>> %ebp-36532 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $36520, %esp            # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $9130, %ecx            
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-35068(%ebp)         # local array 'v2': 5 dimensions
    movl    $10,-35064(%ebp)        #   dimension 1: 10 elements
    movl    $10,-35060(%ebp)        #   dimension 2: 10 elements
    movl    $7,-35056(%ebp)         #   dimension 3: 7 elements
    movl    $5,-35052(%ebp)         #   dimension 4: 5 elements
    movl    $10,-35048(%ebp)        #   dimension 5: 10 elements
    movl    $5,-36532(%ebp)         # local array 'v3': 5 dimensions
    movl    $2,-36528(%ebp)         #   dimension 1: 2 elements
    movl    $8,-36524(%ebp)         #   dimension 2: 8 elements
    movl    $9,-36520(%ebp)         #   dimension 3: 9 elements
    movl    $1,-36516(%ebp)         #   dimension 4: 1 elements
    movl    $10,-36512(%ebp)        #   dimension 5: 10 elements

    # function body
    movl    $13224, %eax            #   0:     sub    t1 <- 13224, 53547
    movl    $53547, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     sub    t2 <- t1, 41600
    movl    $41600, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   2:     sub    t3 <- t2, 96041
    movl    $96041, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   3:     sub    t4 <- t3, 29142
    movl    $29142, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   4:     if     t4 < 27444 goto 1
    movl    $27444, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f2_1                 
    jmp     l_f2_2                  #   5:     goto   2
l_f2_1:
    movl    $1, %eax                #   7:     assign t5 <- 1
    movb    %al, -29(%ebp)         
    jmp     l_f2_3                  #   8:     goto   3
l_f2_2:
    movl    $0, %eax                #  10:     assign t5 <- 0
    movb    %al, -29(%ebp)         
l_f2_3:
    movzbl  -29(%ebp), %eax         #  12:     param  2 <- t5
    pushl   %eax                   
    leal    -36532(%ebp), %eax      #  13:     &()    t6 <- v3
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  14:     param  1 <- t6
    pushl   %eax                   
    leal    -35068(%ebp), %eax      #  15:     &()    t7 <- v2
    movl    %eax, -40(%ebp)        
    movl    -40(%ebp), %eax         #  16:     param  0 <- t7
    pushl   %eax                   
    call    f0                      #  17:     call   t8 <- f0
    addl    $12, %esp              
    movb    %al, -41(%ebp)         
    movzbl  -41(%ebp), %eax         #  18:     return t8
    jmp     l_f2_exit              
    call    WriteLn                 #  19:     call   WriteLn
l_f2_7_while_cond:
    movl    $1, %eax                #  21:     assign t9 <- 1
    movb    %al, -42(%ebp)         
    jmp     l_f2_12                 #  22:     goto   12
    movl    $0, %eax                #  23:     assign t9 <- 0
    movb    %al, -42(%ebp)         
l_f2_12:
    movzbl  -42(%ebp), %eax         #  25:     if     t9 = 1 goto 8_while_body
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f2_8_while_body      
    jmp     l_f2_6                  #  26:     goto   6
l_f2_8_while_body:
l_f2_16_while_cond:
    jmp     l_f2_16_while_cond      #  29:     goto   16_while_cond
    movl    $98, %eax               #  30:     return 98
    jmp     l_f2_exit              
    jmp     l_f2_7_while_cond       #  31:     goto   7_while_cond
l_f2_6:

l_f2_exit:
    # epilogue
    addl    $36520, %esp            # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope test
main:
    # stack offsets:
    #    -13(%ebp)   1  [ $t0       <char> %ebp-13 ]

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
    jmp     l_test_0                #   1:     goto   0
    jmp     l_test_0                #   2:     goto   0
    jmp     l_test_0                #   3:     goto   0
    call    dummyCHARfunc           #   4:     call   t0 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_test_1_while_cond     #   5:     goto   1_while_cond
l_test_0:
    jmp     l_test_exit            
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









    # end of global data section
    #-----------------------------------------

    .end
##################################################
