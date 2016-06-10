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
    #    -13(%ebp)   1  [ $t1       <bool> %ebp-13 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -21(%ebp)   1  [ $t3       <bool> %ebp-21 ]
    #      8(%ebp)   1  [ %v1       <char> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <int> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 72 of <array 10 of <array 90 of <array 42 of <array 42 of <int>>>>>>> %ebp+16 ]

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
    call    dummyBOOLfunc           #   0:     call   t1 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         
    call    ReadInt                 #   1:     call   t2 <- ReadInt
    movl    %eax, -20(%ebp)        
    call    dummyBOOLfunc           #   2:     call   t3 <- dummyBOOLfunc
    movb    %al, -21(%ebp)         
    movzbl  -21(%ebp), %eax         #   3:     if     t3 = 1 goto 7
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    je      l_f0_7                 
    jmp     l_f0_4_if_false         #   4:     goto   4_if_false
l_f0_7:
    jmp     l_f0_4_if_false         #   6:     goto   4_if_false
    jmp     l_f0_4_if_false         #   7:     goto   4_if_false
    jmp     l_f0_2                  #   8:     goto   2
l_f0_4_if_false:
l_f0_2:

l_f0_exit:
    # epilogue
    addl    $12, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f1
f1:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <int> %ebp-16 ]
    #    -17(%ebp)   1  [ $t2       <char> %ebp-17 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 13 of <array 22 of <array 41 of <array 3 of <array 17 of <char>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 9 of <array 40 of <array 89 of <array 53 of <array 80 of <bool>>>>>>> %ebp+12 ]
    #     16(%ebp)   4  [ %v3       <ptr(4) to <array 76 of <array 12 of <array 76 of <array 100 of <array 32 of <bool>>>>>>> %ebp+16 ]

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
    call    dummyINTfunc            #   0:     call   t1 <- dummyINTfunc
    movl    %eax, -16(%ebp)        
    call    dummyCHARfunc           #   1:     call   t2 <- dummyCHARfunc
    movb    %al, -17(%ebp)         
    movzbl  -17(%ebp), %eax         #   2:     return t2
    jmp     l_f1_exit              
    movl    $77666, %eax            #   3:     mul    t3 <- 77666, 25043
    movl    $25043, %ebx           
    imull   %ebx                   
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     div    t4 <- t3, 77865
    movl    $77865, %ebx           
    cdq                            
    idivl   %ebx                   
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     mul    t5 <- t4, 23283
    movl    $23283, %ebx           
    imull   %ebx                   
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     if     t5 < 95497 goto 3_if_true
    movl    $95497, %ebx           
    cmpl    %ebx, %eax             
    jl      l_f1_3_if_true         
    jmp     l_f1_4_if_false         #   7:     goto   4_if_false
l_f1_3_if_true:
    jmp     l_f1_6                  #   9:     goto   6
l_f1_6:
    jmp     l_f1_2                  #  11:     goto   2
l_f1_4_if_false:
l_f1_2:

l_f1_exit:
    # epilogue
    addl    $20, %esp               # remove locals
    popl    %edi                   
    popl    %esi                   
    popl    %ebx                   
    popl    %ebp                   
    ret                            

    # scope f2
f2:
    # stack offsets:
    #    -16(%ebp)   4  [ $t1       <ptr(4) to <array 72 of <array 10 of <array 90 of <array 42 of <array 42 of <int>>>>>>> %ebp-16 ]
    #    -20(%ebp)   4  [ $t2       <int> %ebp-20 ]
    #    -24(%ebp)   4  [ $t3       <int> %ebp-24 ]
    #    -28(%ebp)   4  [ $t4       <int> %ebp-28 ]
    #    -32(%ebp)   4  [ $t5       <int> %ebp-32 ]
    #    -36(%ebp)   4  [ $t6       <int> %ebp-36 ]
    #    -40(%ebp)   4  [ $t7       <int> %ebp-40 ]
    #    -44(%ebp)   4  [ $t8       <int> %ebp-44 ]
    #    -48(%ebp)   4  [ $t9       <int> %ebp-48 ]
    #      8(%ebp)   4  [ %v1       <ptr(4) to <array 69 of <array 9 of <array 69 of <array 6 of <array 75 of <bool>>>>>>> %ebp+8 ]
    #     12(%ebp)   4  [ %v2       <ptr(4) to <array 46 of <array 14 of <array 1 of <array 27 of <array 39 of <bool>>>>>>> %ebp+12 ]
    #   -457228872(%ebp)  457228824  [ $v3       <array 72 of <array 10 of <array 90 of <array 42 of <array 42 of <int>>>>>> %ebp-457228872 ]

    # prologue
    pushl   %ebp                   
    movl    %esp, %ebp             
    pushl   %ebx                    # save callee saved registers
    pushl   %esi                   
    pushl   %edi                   
    subl    $457228860, %esp        # make room for locals

    cld                             # memset local stack area to 0
    xorl    %eax, %eax             
    movl    $114307215, %ecx       
    mov     %esp, %edi             
    rep     stosl                  
    movl    $5,-457228872(%ebp)     # local array 'v3': 5 dimensions
    movl    $72,-457228868(%ebp)    #   dimension 1: 72 elements
    movl    $10,-457228864(%ebp)    #   dimension 2: 10 elements
    movl    $90,-457228860(%ebp)    #   dimension 3: 90 elements
    movl    $42,-457228856(%ebp)    #   dimension 4: 42 elements
    movl    $42,-457228852(%ebp)    #   dimension 5: 42 elements

    # function body
    leal    -457228872(%ebp), %eax  #   0:     &()    t1 <- v3
    movl    %eax, -16(%ebp)        
    movl    -16(%ebp), %eax         #   1:     param  2 <- t1
    pushl   %eax                   
    movl    $47955, %eax            #   2:     add    t2 <- 47955, 14488
    movl    $14488, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -20(%ebp)        
    movl    -20(%ebp), %eax         #   3:     add    t3 <- t2, 15513
    movl    $15513, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -24(%ebp)        
    movl    -24(%ebp), %eax         #   4:     add    t4 <- t3, 66258
    movl    $66258, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -28(%ebp)        
    movl    -28(%ebp), %eax         #   5:     add    t5 <- t4, 77639
    movl    $77639, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -32(%ebp)        
    movl    -32(%ebp), %eax         #   6:     add    t6 <- t5, 62034
    movl    $62034, %ebx           
    addl    %ebx, %eax             
    movl    %eax, -36(%ebp)        
    movl    -36(%ebp), %eax         #   7:     param  1 <- t6
    pushl   %eax                   
    movl    $98, %eax               #   8:     param  0 <- 98
    pushl   %eax                   
    call    f0                      #   9:     call   t7 <- f0
    addl    $12, %esp              
    movl    %eax, -40(%ebp)        
l_f2_2_while_cond:
    movl    $69826, %eax            #  11:     sub    t8 <- 69826, 31053
    movl    $31053, %ebx           
    subl    %ebx, %eax             
    movl    %eax, -44(%ebp)        
    movl    $56751, %eax            #  12:     if     56751 < t8 goto 3_while_body
    movl    -44(%ebp), %ebx        
    cmpl    %ebx, %eax             
    jl      l_f2_3_while_body      
    jmp     l_f2_1                  #  13:     goto   1
l_f2_3_while_body:
    jmp     l_f2_exit              
    jmp     l_f2_2_while_cond       #  16:     goto   2_while_cond
l_f2_1:
    call    dummyINTfunc            #  18:     call   t9 <- dummyINTfunc
    movl    %eax, -48(%ebp)        

l_f2_exit:
    # epilogue
    addl    $457228860, %esp        # remove locals
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
l_test_1_while_cond:
    jmp     l_test_2_while_body     #   1:     goto   2_while_body
l_test_2_while_body:
    jmp     l_test_1_while_cond     #   3:     goto   1_while_cond
    movl    $99, %eax               #   4:     assign v0 <- 99
    movb    %al, v0                
    movl    $1, %eax                #   5:     if     1 # 1 goto 10_if_true
    movl    $1, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_10_if_true      
    jmp     l_test_11_if_false      #   6:     goto   11_if_false
l_test_10_if_true:
    jmp     l_test_9                #   8:     goto   9
l_test_11_if_false:
l_test_9:
    jmp     l_test_5                #  11:     goto   5
l_test_5:
    movl    $0, %eax                #  13:     if     0 # 0 goto 14_if_true
    movl    $0, %ebx               
    cmpl    %ebx, %eax             
    jne     l_test_14_if_true      
    jmp     l_test_15_if_false      #  14:     goto   15_if_false
l_test_14_if_true:
    jmp     l_test_13               #  16:     goto   13
l_test_15_if_false:
l_test_13:
    movl    $45682, %eax            #  19:     assign v1 <- 45682
    movl    %eax, v1               
    call    dummyBOOLfunc           #  20:     call   t0 <- dummyBOOLfunc
    movb    %al, -13(%ebp)         

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
    .align   4
v1:                                 # <int>
    .skip    4








    # end of global data section
    #-----------------------------------------

    .end
##################################################
