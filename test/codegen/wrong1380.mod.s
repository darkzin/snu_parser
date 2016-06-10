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
    #    -13(%ebp)   1  [ $t9       <char> %ebp-13 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 76 of <array 12 of <array 77 of <array 97 of <array 46 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 95 of <array 68 of <array 96 of <array 30 of <array 14 of <int>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 77 of <array 93 of <array 90 of <array 2 of <array 79 of <int>>>>>>> %ebp+16 ]
    #    -14(%ebp)   1  [ $v4       <char> %ebp-14 ]

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
    jmp     l_f0_0                  #   1:     goto   0
    jmp     l_f0_3                  #   2:     goto   3
l_f0_3:
    jmp     l_f0_exit              
    jmp     l_f0_1_while_cond       #   5:     goto   1_while_cond
l_f0_0:
    call    dummyCHARfunc           #   7:     call   t9 <- dummyCHARfunc
    movb    %al, -13(%ebp)         
    jmp     l_f0_10_if_false        #   8:     goto   10_if_false
    movl    $97, %eax               #   9:     assign v4 <- 97
    movb    %al, -14(%ebp)         
    jmp     l_f0_8                  #  10:     goto   8
l_f0_10_if_false:
l_f0_8:

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
    #    -13(%ebp)   1  [ $t9       <bool> %ebp-13 ]
    #    -14(%ebp)   1  [ $v1       <bool> %ebp-14 ]

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
    call    dummyBOOLfunc           #   0:     call   t9 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
l_f1_2_while_cond:
    jmp     l_f1_7                  #   2:     goto   7
    jmp     l_f1_3_while_body       #   3:     goto   3_while_body
l_f1_7:
    jmp     l_f1_3_while_body       #   5:     goto   3_while_body
l_f1_3_while_body:
    jmp     l_f1_2_while_cond       #   7:     goto   2_while_cond
    movl    $0, %eax                #   8:     assign v1 <- 0
    movb    %al, -14(%ebp)         

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
    #    -16(%ebp)   4  [ $t10      <int> %ebp-16 ]
    #    -20(%ebp)   4  [ $t11      <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t9       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $v1       <int> %ebp-28 ]
    #    -29(%ebp)   1  [ $v2       <bool> %ebp-29 ]
    #    -30(%ebp)   1  [ $v3       <char> %ebp-30 ]

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
l_f2_1_while_cond:
    movl    $27078, %eax            #   1:     if     27078 >= 6309 goto 2_while_body
    movl    $6309, %ebx            
    cmpl    %ebx, %eax             
    jge     l_f2_2_while_body      
    jmp     l_f2_0                  #   2:     goto   0
l_f2_2_while_body:
l_f2_5_while_cond:
    jmp     l_f2_5_while_cond       #   5:     goto   5_while_cond
    movl    $16881, %eax            #   6:     assign v1 <- 16881
    movl    %eax, -28(%ebp)        
    movl    $0, %eax                #   7:     assign v2 <- 0
    movb    %al, -29(%ebp)         
    jmp     l_f2_1_while_cond       #   8:     goto   1_while_cond
l_f2_0:
    movl    $87533, %eax            #  10:     div    t9 <- 87533, 47635
    movl    $47635, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  11:     mul    t10 <- t9, 88988
    movl    $88988, %ebx           
    imull   %ebx                   
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #  12:     if     t10 >= 36665 goto 10_if_true
    movl    $36665, %ebx           
    cmpl    %ebx, %eax             
    jge     l_f2_10_if_true        
    jmp     l_f2_11_if_false        #  13:     goto   11_if_false
l_f2_10_if_true:
    jmp     l_f2_9                  #  15:     goto   9
l_f2_11_if_false:
l_f2_9:
    movl    $97, %eax               #  18:     if     97 < 97 goto 14_if_true
    movl    $97, %ebx              
    cmpl    %ebx, %eax             
    jl      l_f2_14_if_true        
    jmp     l_f2_15_if_false        #  19:     goto   15_if_false
l_f2_14_if_true:
    call    ReadInt                 #  21:     call   t11 <- ReadInt
    movl    %eax, -20(%ebp)        
    movl    $82174, %eax            #  22:     if     82174 < 8656 goto 19_if_true
    movl    $8656, %ebx            
    cmpl    %ebx, %eax             
    jl      l_f2_19_if_true        
    jmp     l_f2_20_if_false        #  23:     goto   20_if_false
l_f2_19_if_true:
    jmp     l_f2_18                 #  25:     goto   18
l_f2_20_if_false:
l_f2_18:
    movl    $99, %eax               #  28:     assign v3 <- 99
    movb    %al, -30(%ebp)         
    jmp     l_f2_13                 #  29:     goto   13
l_f2_15_if_false:
l_f2_13:

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
    #    -16(%ebp)   4  [ $t0       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t1       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t2       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t3       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t4       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t5       <int> %ebp-36 ]
    #    -37(%ebp)   1  [ $t6       <char> %ebp-37 ]
    #    -38(%ebp)   1  [ $t7       <char> %ebp-38 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $32, %esp               # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $8, %ecx               
    mov     %esp, %edi             
    rep     stosl                  

    # function body
l_test_1_while_cond:
    movl    $0, %eax                #   1:     if     0 # 1 goto 4_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_4_if_true       
    jmp     l_test_5_if_false       #   2:     goto   5_if_false
l_test_4_if_true:
    jmp     l_test_3                #   4:     goto   3
l_test_5_if_false:
l_test_3:
    call    ReadInt                 #   7:     call   t0 <- ReadInt
    movl    %eax, -16(%ebp)        
    jmp     l_test_8                #   8:     goto   8
l_test_8:
    call    dummyCHARfunc           #  10:     call   t1 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    jmp     l_test_1_while_cond     #  11:     goto   1_while_cond
    jmp     l_test_exit            
    movl    $67761, %eax            #  13:     mul    t2 <- 67761, 76504
    movl    $76504, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #  14:     mul    t3 <- t2, 45785
    movl    $45785, %ebx           
    imull   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #  15:     sub    t4 <- t3, 93951
    movl    $93951, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #  16:     add    t5 <- t4, 331
    movl    $331, %ebx             
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #  17:     assign v0 <- t5
    movl    %eax, v0               
    call    dummyCHARfunc           #  18:     call   t6 <- dummyCHARfunc
    movb    %al, -37(%ebp)         
    call    f1                      #  19:     call   t7 <- f1
    movb    %al, -38(%ebp)         
    movzbl  -38(%ebp), %eax         #  20:     assign v1 <- t7
    movb    %al, v1                
    call    dummyINTfunc            #  21:     call   t8 <- dummyINTfunc
    movl    %eax, -44(%ebp)        

l_test_exit:
    # epilogue
    addl    $32, %esp               # remove locals
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
